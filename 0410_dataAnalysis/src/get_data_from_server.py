import socket
import os
import sys
import threading

TCP_RECV_BUFFSIZE = 20000
def tcp_client(host, port, command, end_marker="\r\n", timeout=10):
    def connect_and_send():
        with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as sock:
            sock.settimeout(timeout)
            try:
                sock.connect((host, port))
                print(f"Conectado a {host}:{port}")

                sock.sendall(command.encode('utf-8'))
                print(f"Comando enviado: {command}")

                # read until end characters received
                response = ""
                while True:
                    chunk = sock.recv(TCP_RECV_BUFFSIZE).decode('utf-8')
                    if not chunk:
                        print("connection closed by server")
                        break
                    print(chunk)
                    response += chunk
                    #check end characters
                    if response.endswith(end_marker):
                        print(f"response: {response}")
                        break

            except socket.timeout:
                print("timeout error")
            except socket.error as e:
                print(f"Connection error: {e}")
            except KeyboardInterrupt:
                print("\nconnection interupted by user")
            finally:
                sock.close()
                print("socket closed")

    # Crear el hilo de conexión
    thread = threading.Thread(target=connect_and_send, daemon=True)
    thread.start()

    # Esperar el final del hilo o permitir interrupción con Ctrl-C
    try:
        while thread.is_alive():
            thread.join(0.1)  # wait til thread is done
    except KeyboardInterrupt:
        print("\ninterrupted by user, exiting...")

if len(sys.argv) < 2:
    print("Error: you must give 2 arguments, host and port");
    sys.exit(1)

host = sys.argv[1]  
port = int(sys.argv[2])           
command = "-get_event"  
end_marker = "!#\n"   

tcp_client(host, port, command, end_marker)
