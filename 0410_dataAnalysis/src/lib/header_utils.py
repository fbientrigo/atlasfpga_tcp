#!/usr/bin/env python3
import re

def extract_data(content):
    """
    Extrae el bloque de datos a partir de la primera línea que cumpla
    el patrón esperado: líneas que comienzan con tres dígitos y continúan con
    tokens en formato hexadecimal (ejemplo: '800 FC0 040 ...').
    
    Se utiliza una expresión regular con el flag MULTILINE para identificar la primera línea
    válida, y se consideran todas las líneas a partir de ese punto.
    """
    pattern = re.compile(
        r'^\s*\d{3}\s+(?:[0-9A-F]{2,4}\s+)+(?:[0-9A-F]{2,4})\s*$',
        re.IGNORECASE | re.MULTILINE
    )
    
    match = pattern.search(content)
    if not match:
        return None
    
    data_block = content[match.start():]
    lines = data_block.splitlines()
    
    data_lines = [line.strip() for line in lines if pattern.match(line.strip())]
    return data_lines if data_lines else None

def create_header(data_lines, header_file="../outputs/massive_data.h"):
    """
    Genera un archivo header en C a partir de la lista de líneas de datos.
    Se aplica una transformación para que cada línea tenga los tokens separados por tabuladores.
    Se añaden marcas de inicio y fin de datos, y se generan las protecciones del header.
    """
    with open(header_file, "w") as f:
        f.write("#ifndef MASSIVE_DATA_H_\n")
        f.write("#define MASSIVE_DATA_H_\n\n")
        f.write("// Esta constante simula la entrada de datos masivos.\n")
        f.write("// Cada línea representa un conjunto de datos, separados por tabuladores.\n")
        f.write("static const char *massive_data =\n")
        # Marca de inicio (se puede ajustar según el protocolo)
        f.write('    "###BEGIN_DATA###\\n"\n')
        
        for line in data_lines:
            # Transformar la línea: separar tokens y unirlos con tabuladores.
            tokens = line.split()
            formatted_line = "\t".join(tokens)
            f.write('    "' + formatted_line + '\\n"\n')
        
        # Marca de fin
        f.write('    "###END_DATA###\\n";\n\n')
        f.write("#endif /* MASSIVE_DATA_H_ */\n")
