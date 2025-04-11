import pandas as pd
import re
from io import StringIO

def HEX2INT(value, default):
    try:
        return int(value, 16)
    except (ValueError, TypeError):
        return float('nan')

def rotar_hexadecimal(numero, desplazamiento):
    numero = int(numero)
    bin_str = format(numero, '012b')  # 12 bits en representación binaria
    longitud = len(bin_str)
    desplazamiento = desplazamiento % longitud
    rotado = bin_str[desplazamiento:] + bin_str[:desplazamiento]
    resultado_decimal = int(rotado, 2)
    return resultado_decimal

class DataMonitor:
    def __init__(self, fname, shift=3):
        self.fname = fname
        self.shift = shift
        self.NPTS = 2000
        self.df = self.read_file(fname)
        if self.df is not None:
            # Convertir los datos procesados para eliminar el canal repetitivo (la columna 0)
            print("[LOG] DataFrame original (con canal 0) antes de eliminar el canal 0:")
            print(self.df.head(), "\n")
            
            # Eliminar la primera columna (canal repetitivo) y reiniciar índice
            self.df = self.df.iloc[:, 1:]
            self.df = self.df.reset_index(drop=True)
            print("[LOG] DataFrame después de eliminar la primera columna y resetear el índice:")
            print(self.df.head(), "\n")
            
            # Insertar columna 'Nsample' con un contador secuencial que no se va a transformar.
            self.df.insert(0, "Nsample", self.df.index)
            print("[LOG] DataFrame final con 'Nsample' generado secuencialmente:")
            print(self.df.head(), "\n")
            
            # Procesamiento de las columnas de canales (sin afectar Nsample)
            # Convertir a entero y aplicar la rotación solo a las columnas que NO sean 'Nsample'
            df_channels = self.df.loc[:, self.df.columns != "Nsample"].applymap(lambda x: HEX2INT(x, 0))
            df_channels = df_channels.applymap(lambda x: rotar_hexadecimal(x, self.shift))
            
            # Se reemplazan los datos de canales en el DataFrame sin modificar la columna Nsample
            self.df.loc[:, self.df.columns != "Nsample"] = df_channels
            
            # Finalmente, renombrar las columnas de canales si lo deseas:
            self.df.columns = ["Nsample"] + [f"ch{i}" for i in range(8)]
            print("[LOG] DataFrame final luego de aplicar conversión y rotación (excluyendo Nsample):")
            print(self.df.head())
        else:
            print("[LOG] El DataFrame no se ha podido cargar correctamente.")

    def read_file(self, fname):
        """
        Lee el archivo de datos buscando el inicio de los datos y acumulando
        las líneas válidas (que tengan exactamente 9 tokens). Se añaden logs que
        indican el proceso, el índice donde inician los datos y se muestra un head del DataFrame.
        """
        try:
            with open(fname, "r", encoding="utf-8") as f:
                lines = f.readlines()
        except Exception as e:
            print("Error al abrir el archivo:", e)
            return None

        data_lines = []
        data_start_index = None

        for i, line in enumerate(lines):
            stripped_line = line.strip()
            # Se busca la primera línea que empiece con tres dígitos (p.ej. "800 ...")
            if data_start_index is None:
                if re.match(r'^\d{3}\b', stripped_line):
                    data_start_index = i
                    print(f"[LOG] Inicio de datos detectado en la línea {i}: '{stripped_line}'")
                    data_lines.append(stripped_line)
            else:
                # Detener la carga si se encuentra una línea vacía o con número incorrecto de tokens.
                if stripped_line == "":
                    print(f"[LOG] Línea vacía detectada en la línea {i}. Se detiene la carga de datos.")
                    break
                tokens = stripped_line.split()
                if len(tokens) != 9:
                    print(f"[LOG] En la línea {i} se encontraron {len(tokens)} tokens (se esperaban 9). Se detiene la carga.")
                    break
                data_lines.append(stripped_line)

        if data_start_index is None:
            print("[LOG] No se encontró el inicio de los datos en el archivo.")
            return None

        print(f"[LOG] Se han cargado {len(data_lines)} líneas de datos desde la línea {data_start_index}.")
        print("[LOG] Primeras 5 líneas de datos:")
        for line in data_lines[:5]:
            print("       ", line)

        # Unir las líneas válidas y cargar en un DataFrame de pandas
        data_str = "\n".join(data_lines)
        try:
            df = pd.read_csv(StringIO(data_str), delim_whitespace=True, header=None, dtype=str)
            print("[LOG] DataFrame cargado correctamente. Cabezera del DataFrame:")
            print(df.head())
        except Exception as e:
            print("[LOG] Error al leer los datos filtrados con pandas:", e)
            return None

        return df

    def update_shift(self, shift):
        """Actualiza el parámetro de shift y vuelve a procesar el archivo."""
        self.shift = shift
        self.df = self.read_file(self.fname)
        if self.df is not None:
            # Eliminar la columna 0 y reiniciar índice
            self.df = self.df.iloc[:, 1:]
            self.df = self.df.reset_index(drop=True)
            self.df.insert(0, "Nsample", self.df.index)
            
            df_channels = self.df.loc[:, self.df.columns != "Nsample"].applymap(lambda x: HEX2INT(x, 0))
            df_channels = df_channels.applymap(lambda x: rotar_hexadecimal(x, self.shift))
            self.df.loc[:, self.df.columns != "Nsample"] = df_channels
            self.df.columns = ["Nsample"] + [f"ch{i}" for i in range(8)]
