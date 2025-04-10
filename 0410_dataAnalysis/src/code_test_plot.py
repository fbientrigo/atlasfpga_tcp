import pandas as pd
import matplotlib.pyplot as plt

class MiClase:
    def __init__(self, data):
        # Suponiendo que 'data' es un DataFrame de pandas
        self.dfint = data

    def plot_canal(self):
        # Verificar si el índice 7 existe en el DataFrame
        if 7 in self.dfint.columns:
            # Graficar el canal 7
            self.dfint[7].plot(figsize=(10, 6), title='Plot del Canal 7')
            plt.xlabel('Índice')
            plt.ylabel('Valor')
            plt.grid()
            plt.show()
        else:
            print("El índice 7 no existe en el DataFrame.")

# Ejemplo de uso
# Crear un DataFrame de ejemplo
data = {
    0: [1, 2, 3, 4, 5],
    1: [5, 4, 3, 2, 1],
    2: [2, 3, 4, 5, 6],
    3: [6, 5, 4, 3, 2],
    4: [1, 3, 5, 7, 9],
    5: [9, 7, 5, 3, 1],
    6: [0, 1, 0, 1, 0],
    7: [10, 20, 30, 40, 50]  # Este es el canal que queremos graficar
}

# Crear el DataFrame
df = pd.DataFrame(data)

# Crear una instancia de la clase y graficar
mi_clase = MiClase(df)
mi_clase.plot_canal()