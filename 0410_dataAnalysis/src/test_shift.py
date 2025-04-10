def rotar_binario(numero, desplazamiento):
    # Convertir el número a decimal
    numero = int(numero)

    # Convertir a binario y rellenar con ceros a la izquierda para que tenga 12 bits
    bin_str = format(numero, '012b')  # '012b' asegura que tenga 12 bits
    print(f"Representación binaria de {numero}: {bin_str}")

    # Calcular la longitud de la cadena binaria
    longitud = len(bin_str)

    # Asegurarse de que el desplazamiento no exceda la longitud
    desplazamiento = desplazamiento % longitud

    # Realizar la rotación a la izquierda
    rotado = bin_str[desplazamiento:] + bin_str[:desplazamiento]

    # Convertir el resultado de nuevo a decimal
    resultado_decimal = int(rotado, 2)

    # Convertir el resultado a hexadecimal
    resultado_hex = format(resultado_decimal, 'X')  # 'X' para mayúsculas

    return rotado, resultado_decimal, resultado_hex


# Ejemplo de uso
numero = "1868"
desplazamiento = 8
resultado_bin, resultado_decimal, resultado_hex = rotar_binario(numero, desplazamiento)

# Mostrar el resultado
print(
    f"El número {numero} rotado {desplazamiento} lugares a la izquierda es: {resultado_bin} (decimal: {resultado_decimal}, hexadecimal: {resultado_hex})")