import sys
import re
from lib import extract_data, create_header


def main():
    if len(sys.argv) != 3:
        print("Uso: {} archivo_entrada.txt archivo_salida.h".format(sys.argv[0]))
        sys.exit(1)
    
    input_file = sys.argv[1]
    output_file = sys.argv[2]
    
    try:
        with open(input_file, "r", encoding="utf-8") as f:
            content = f.read()
    except Exception as e:
        print("Error al leer el archivo:", e)
        sys.exit(1)
    
    data_lines = extract_data(content)
    
    if data_lines is None:
        print("No se han encontrado líneas con el formato de datos esperado.")
        sys.exit(1)
    
    # Si deseas, puedes realizar una verificación adicional, por ejemplo:
    # comprobar que el número de tokens en cada línea sea el esperado.
    expected_tokens = 9  # en el ejemplo cada línea tiene 9 tokens
    for i, line in enumerate(data_lines, start=1):
        tokens = line.split()
        if len(tokens) != expected_tokens:
            print(f"Advertencia: la línea {i} tiene {len(tokens)} tokens en lugar de {expected_tokens}.")
    
    create_header(data_lines, header_file=output_file)
    print("Header generado exitosamente en:", output_file)

if __name__ == "__main__":
    main()