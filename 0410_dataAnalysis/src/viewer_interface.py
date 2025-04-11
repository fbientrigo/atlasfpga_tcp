#
#   Interfaz de visualización
#   FT 0411
#   Utiliza PyQt6 para hacer una UI y ver señales en .txt

#!/usr/bin/env python3
import sys
from PyQt6.QtWidgets import (
    QApplication, QMainWindow, QWidget, QPushButton, QVBoxLayout, QHBoxLayout, 
    QFileDialog, QSpinBox, QLabel, QGridLayout, QStackedWidget
)
from PyQt6.QtCore import pyqtSignal, Qt
from matplotlib.backends.backend_qt5agg import FigureCanvasQTAgg as FigureCanvas
from matplotlib.figure import Figure

# Importamos la clase DataMonitor de nuestra capa de procesamiento de datos
from lib.data_monitor import DataMonitor

class MiniPlotCanvas(FigureCanvas):
    # Señal que se dispara al hacer clic y que envía el índice del canal
    clicked = pyqtSignal(int)
    
    def __init__(self, channel_index, parent=None, width=3, height=2, dpi=100):
        self.fig = Figure(figsize=(width, height), dpi=dpi)
        self.ax = self.fig.add_subplot(111)
        super().__init__(self.fig)
        self.setParent(parent)
        self.channel_index = channel_index
        
    def mousePressEvent(self, event):
        # Emite la señal para indicar que se hizo clic en este canvas
        self.clicked.emit(self.channel_index)

class ZoomPlotCanvas(FigureCanvas):
    def __init__(self, parent=None, width=6, height=4, dpi=100):
        self.fig = Figure(figsize=(width, height), dpi=dpi)
        self.ax = self.fig.add_subplot(111)
        super().__init__(self.fig)
        self.setParent(parent)

class MainWindow(QMainWindow):
    def __init__(self):
        super().__init__()
        self.setWindowTitle("Data Monitor GUI")
        self.data_monitor = None
        self.shift_value = 0
        
        # Usamos un QStackedWidget para alternar entre la vista general y la de zoom
        self.stacked_widget = QStackedWidget()
        self.setCentralWidget(self.stacked_widget)
        
        # Vista general (overview)
        self.overview_widget = QWidget()
        self.create_overview_ui()
        self.stacked_widget.addWidget(self.overview_widget)
        
        # Vista de zoom para un canal específico
        self.zoom_widget = QWidget()
        self.create_zoom_ui()
        self.stacked_widget.addWidget(self.zoom_widget)
        
        # Empezamos con la vista general
        self.stacked_widget.setCurrentWidget(self.overview_widget)
        
    def create_overview_ui(self):
        layout = QVBoxLayout()
        self.overview_widget.setLayout(layout)
        
        # Panel de controles (selección de archivo, control de shift y actualización)
        control_layout = QHBoxLayout()
        
        self.btn_select_file = QPushButton("Seleccionar archivo")
        self.btn_select_file.clicked.connect(self.select_file)
        control_layout.addWidget(self.btn_select_file)
        
        control_layout.addWidget(QLabel("Shift:"))
        self.spin_shift = QSpinBox()
        self.spin_shift.setValue(self.shift_value)
        self.spin_shift.setMinimum(0)
        self.spin_shift.setMaximum(12)
        self.spin_shift.valueChanged.connect(self.shift_changed)
        control_layout.addWidget(self.spin_shift)
        
        self.btn_update = QPushButton("Actualizar plots")
        self.btn_update.clicked.connect(self.update_plots)
        control_layout.addWidget(self.btn_update)
        
        layout.addLayout(control_layout)
        
        # Cuadrícula para mostrar los mini gráficos (uno por canal)
        self.mini_plot_layout = QGridLayout()
        self.mini_canvases = []
        # Suponemos 8 canales, organizados en 2 filas x 4 columnas
        positions = [(i, j) for i in range(2) for j in range(4)]
        for idx, pos in enumerate(positions):
            if idx < 8:
                canvas = MiniPlotCanvas(channel_index=idx)
                canvas.clicked.connect(self.show_zoom_view)
                self.mini_plot_layout.addWidget(canvas, pos[0], pos[1])
                self.mini_canvases.append(canvas)
        
        layout.addLayout(self.mini_plot_layout)
        
    def create_zoom_ui(self):
        layout = QVBoxLayout()
        self.zoom_widget.setLayout(layout)
        
        self.zoom_canvas = ZoomPlotCanvas()
        layout.addWidget(self.zoom_canvas)
        
        # Botón para volver a la vista general
        btn_back = QPushButton("Volver")
        btn_back.clicked.connect(self.back_to_overview)
        layout.addWidget(btn_back)
    
    def select_file(self):
        options = QFileDialog.Option.ReadOnly
        file_name, _ = QFileDialog.getOpenFileName(
            self,
            "Seleccionar archivo de datos",
            "",
            "Text Files (*.txt);;All Files (*)",
            options=options
        )
        if file_name:
            self.load_file(file_name)

    
    def load_file(self, file_name):
        # Se crea (o actualiza) la instancia DataMonitor con el archivo seleccionado
        self.data_monitor = DataMonitor(file_name, shift=self.shift_value)
        self.update_plots()
    
    def shift_changed(self, value):
        self.shift_value = value
        if self.data_monitor:
            self.data_monitor.update_shift(value)
            self.update_plots()
    
    def update_plots(self):
        if not self.data_monitor or self.data_monitor.df is None:
            return
        
        df = self.data_monitor.df.tail(self.data_monitor.NPTS)
        # Se actualiza cada mini canvas correspondiente al canal
        for idx, canvas in enumerate(self.mini_canvases):
            channel = f"ch{idx}"
            channel_title = f"ch{idx+1}"
            canvas.ax.cla()
            canvas.ax.ticklabel_format(useOffset=False, style='plain')
            canvas.ax.tick_params(axis='both', which='major', labelsize=6)

            # Se utiliza la columna "Nsample" como eje x si existe; de lo contrario, se usa el índice
            x = df["Nsample"] if "Nsample" in df.columns else df.index
            y = df[channel]
            canvas.ax.plot(x, y)
            canvas.ax.set_title(channel_title)
            canvas.draw()
    
    def show_zoom_view(self, channel_index):
        if not self.data_monitor or self.data_monitor.df is None:
            return
        df = self.data_monitor.df.tail(self.data_monitor.NPTS)
        channel = f"ch{channel_index}"
        self.zoom_canvas.ax.cla()
        x = df["Nsample"] if "Nsample" in df.columns else df.index
        y = df[channel]
        self.zoom_canvas.ax.plot(x, y)
        self.zoom_canvas.ax.set_title(f"Canal {channel} (Zoom)")
        self.zoom_canvas.draw()
        self.stacked_widget.setCurrentWidget(self.zoom_widget)
    
    def back_to_overview(self):
        self.stacked_widget.setCurrentWidget(self.overview_widget)
    
if __name__ == "__main__":
    app = QApplication(sys.argv)
    window = MainWindow()
    window.resize(800, 600)
    window.show()
    sys.exit(app.exec())
