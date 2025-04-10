#!/usr/bin/env python3
import re
import sys

def extract_data(content):
    """
    Extrae el bloque de datos a partir de la primera línea que cumpla
    el patrón esperado: líneas que comienzan con tres dígitos y continúan con
    tokens en formato hexadecimal (por ejemplo: '800 FC0 040 ...').
    
    Se utiliza una expresión regular con el flag MULTILINE para identificar la primera línea
    válida, y se consideran todas las líneas a partir de ese punto.
    """
    # Este patrón busca líneas que empiecen (posiblemente con espacios) con tres dígitos,
    # seguidos de uno o varios grupos de caracteres hexadecimales (2 a 4 caracteres)
    # separados por espacios y finalizando la línea.
    pattern = re.compile(r'^\s*\d{3}\s+(?:[0-9A-F]{2,4}\s+)+(?:[0-9A-F]{2,4})\s*$', re.IGNORECASE | re.MULTILINE)
    
    # Buscar la primera aparición que cumpla el patrón
    match = pattern.search(content)
    if not match:
        return None
    
    # Tomamos la posición de inicio del primer match y extraemos todas las líneas desde allí.
    data_block = content[match.start():]
    # Separamos en líneas
    lines = data_block.splitlines()
    
    # (Opcional) Podríamos filtrar únicamente aquellas líneas que casen exactamente
    # con el patrón si en el bloque aparecen líneas intermedias que no sean datos.
    data_lines = [line.strip() for line in lines if pattern.match(line.strip())]
    
    # Si no se encuentra ninguna línea que cumpla el patrón, retornamos None.
    return data_lines if data_lines else None

def create_header(data_lines, header_file="massive_data.h"):
    """
    Genera un archivo header en C a partir de la lista de líneas de datos.
    Se añaden dos códigos especiales para el protocolo: una marca de inicio y una marca de fin.
    """
    with open(header_file, "w") as f:
        f.write("#ifndef MASSIVE_DATA_H_\n")
        f.write("#define MASSIVE_DATA_H_\n\n")
        f.write("// Esta constante simula la entrada de datos masivos.\n")
        f.write("// Cada línea representa un conjunto de datos, separados por espacios.\n")
        f.write("static const char *massive_data =\n")
        # Marca de inicio (puedes cambiarla según tu protocolo)
        f.write('    "###BEGIN_DATA###\\n"\n')
        
        # Añadimos cada línea de datos, asegurándonos de escapar el salto de línea
        for line in data_lines:
            # Se puede hacer alguna transformación o validación adicional aquí si fuera necesario
            f.write('    "' + line + '\\n"\n')
        
        # Marca de fin para indicar que los datos llegaron completos
        f.write('    "###END_DATA###\\n";\n\n')
        f.write("#endif /* MASSIVE_DATA_H_ */\n")
