#!/usr/bin/env python
import sys
import unicodedata
import logging

# Configura el logging para enviar mensajes a stderr con formato y nivel de detalle.
logging.basicConfig(
    level=logging.DEBUG, 
    stream=sys.stderr, 
    format='%(asctime)s - %(levelname)s - %(message)s'
)

def normalize_line(line):
    """
    Normaliza la línea utilizando NFKD y retorna la cadena normalizada.
    Se pueden agregar o reemplazar caracteres si es necesario.
    """
    normalized = unicodedata.normalize('NFKD', line)
    return normalized

def main():
    logging.info("Inicio del filtro de normalización.")
    line_count = 0

    # Lee línea por línea desde la entrada estándar.
    for line in sys.stdin:
        normalized_line = normalize_line(line)
        sys.stdout.write(normalized_line)
        print(normalized_line)
        line_count += 1
        # Cada 10 líneas escribe un mensaje de depuración
        if line_count % 10 == 0:
            logging.debug(f"Líneas procesadas: {line_count}")

    logging.info(f"Fin del filtro. Total de líneas procesadas: {line_count}")

if __name__ == "__main__":
    main()
