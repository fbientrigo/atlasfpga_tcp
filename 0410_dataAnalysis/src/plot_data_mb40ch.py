#!/usr/bin/env python3
import pandas as pd
import matplotlib.pyplot as plt
import os
import matplotlib
import sys
#from monitor_data import datadir


#datadir = "data/"
#datadir = "data_run_test0" + "/VERDAQ8_data/"
#datadir = "C:\\Users\\mauro bonilla\\Documents\\"
matplotlib.style.use('fast')


def HEX2INT(value, default):
    if '.' not in str(value):
        try:
            return int(value,base=16)
        except (ValueError, TypeError):
            #print("## WARNING: value: "+ str(value) + " was not converted, inserting default")
            return 'nan'
            pass
        return default
    else :
        return float(value)

def rotar_hexadecimal(numero, desplazamiento):

    numero = int(numero)
    bin_str = format(numero, '012b')  # '012b' asegura que tenga 12 bits
    longitud = len(bin_str)
    desplazamiento = desplazamiento % longitud
    rotado = bin_str[desplazamiento:] + bin_str[:desplazamiento]
    resultado_decimal = int(rotado, 2)
    resultado_hex = format(resultado_decimal, 'X')  # 'X' para mayúsculas
    return resultado_decimal

    
def move_figure(f, x, y):
    """Move figure's upper left corner to pixel (x, y)"""
    backend = matplotlib.get_backend()
    if backend == 'tkagg':
        f.canvas.manager.window.wm_geometry("+%d+%d" % (x, y))
    elif backend == 'WXAgg':
        f.canvas.manager.window.SetPosition((x, y))
    else:
        # This works for QT and GTK
        # You can also use window.setGeometry
        #f.canvas.manager.window.move(x, y)
        print("No se puede mover la ventana con el backend actual:", backend)
        print(backend)


figWF, axsWF = plt.subplots(nrows=9, ncols=1, figsize=(6, 4))
figH, axsH = plt.subplots(nrows=3, ncols=3, figsize=(6, 4))
move_figure(figWF,10,200)
move_figure(figH,700,200)
VDAQ_DTYPES = {0 : 'float64', 1: 'str', 2: 'str'}

class DATA_MONITOR:
    datadir = "."
    YMIN = -300
    YMAX = 4300
    NBINS = 50
    BINW = int((YMAX-YMIN)/NBINS)
    df = None
    dfint = None
    NPTS = 2000
    fname = ""


    def __init__(self,fname):
        print ("reading file: "+fname)   
        self.fname = fname
        self.df = pd.read_csv(fname,delimiter=' ',skiprows=5, header=None,on_bad_lines='skip',dtype=str)
        self.df = self.df[self.df[0].apply(lambda x : "#" not in str(x))]
        self.df = self.df[self.df[1].apply(lambda x : "#" not in str(x))]
        self.df = self.df[self.df.apply(lambda x: len(x.dropna()), axis=1) == 9] # solo 9 columnas
        self.dfint = self.df.apply(lambda col: col.map(lambda x: HEX2INT(x, 2)))
#        print(self.dfint)
        self.dfint = self.dfint.apply(lambda col: col.map(lambda x: rotar_hexadecimal(x,1)))
#        print(self.dfint)
        self.dfint.columns = ["Nsample"]  + ["ch"+str(x) for x in range(8)]


    def plot(self):
        for ax in axsWF:
            ax.cla()
            
        self.dfint.tail(self.NPTS).plot(ax=axsWF,title=self.fname,subplots=True,ylim=(self.YMIN,self.YMAX))#,sharey=True)#,layout=(2,4))

        plt.subplots_adjust(hspace=0,wspace=0,left=.05,bottom=0.1, right=0.95, top=0.95)
    
        for axf in axsH:
            for ax in axf:
                ax.cla()
            
        self.dfint.tail(self.NPTS).plot(ax=axsH,title=self.fname,kind='hist',bins=range(self.YMIN,self.YMAX,self.BINW),subplots=True,xlim=(self.YMIN,self.YMAX))#,sharex=True)
        plt.subplots_adjust(hspace=.05,wspace=.15,left=.05,bottom=0.1, right=0.95, top=0.95)
    def draw(self):
        plt.draw()
        plt.pause(10)

    def show(self):
        plt.show()
        
if __name__=="__main__":
    fname=""
    if len(sys.argv)>1:
        fname = sys.argv[1]

        dm = DATA_MONITOR(fname)
        dm.plot()
        dm.draw()
        dm.show()
        #exit(0)
    
    else:
        plt.ion()
        while True:
            fname = datadir +  os.listdir(datadir)[-1]
            dm = DATA_MONITOR(fname)
            dm.plot()    
            dm.draw()
            del dm

    
