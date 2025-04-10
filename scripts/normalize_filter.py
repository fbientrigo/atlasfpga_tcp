#!/usr/bin/env python
import sys
import unicodedata

def normalize_line(line):
    # Normaliza y elimina caracteres problemáticos, por ejemplo, convertir caracteres acentuados a entidades XML.
    # Como ejemplo, aquí simplemente se aplica una normalización NFKD
    normalized = unicodedata.normalize('NFKD', line)
    # También podrías filtrar o reemplazar caracteres si fuese necesario
    return normalized

for line in sys.stdin:
    sys.stdout.write(normalize_line(line))
