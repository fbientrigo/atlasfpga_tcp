import serial
import serial.tools.list_ports
#import list_ports
from time import sleep

class ARDU:
    idx = 0
    snum = 0
    sp = None

    def sendCMD(self,cmd):
        self.sp.write(cmd.encode())
        res = self.sp.readline()
        if res.decode()[:2] != '=>':
            print("ERROR sending " + cmd)
            exit()
        return res.decode()

    def sendQUERY(self,cmd):
        print("sending query to ARDU: " + cmd)
        self.sp.write(cmd.encode())  
        res = self.sp.readline(), self.sp.readline()
        if res[0].decode()[:2] == '?>':
            print("ERROR sending to ARDU" + cmd)
            exit()
        return res[0].decode()

    def __init__(self,portn):
        try :
            self.sp = serial.Serial(str(portn),timeout = 2)
            sleep(2)
        except :
            print("ERROR: port named: " + portn + " connection failed.")
            exit()

        self.idx = ARDU.idx
        ARDU.idx += 1
        print("TRYING ARDU on port " + str(self.sp.name))
        res = self.sendQUERY("*IDN?\r")
        self.snum = int(res.split(", ")[2])
        if self.snum != 1000001:
            print("not HERE")
            self.sp.close()
            return

        print("ARDU " + str(self.idx) + " on port " + str(self.sp.name) + " connected")

    
    def powercycle(self):
        print("turning off the power source")
        self.setOFF()
        sleep(60)
        print("turning on the power source")
        self.setON()
        print("waiting 300 s to resume")
        sleep(300)

    def setON(self):
        self.sendCMD(":INSTR:OFF\r")

    def setOFF(self):
        self.sendCMD(":INSTR:ON\r")

    def __del__(self):
        self.sp.close()


if __name__=="__main__":
    #ports = list_ports.serial_ports()
    ports = serial.tools.list_ports.comports()
    for p in ports:
        if p == 'COM8':
            continue        
        dev=ARDU(p)
        if dev.snum == 1000001:
            ardu = dev
        ardu = dev

    ardu.powercycle()

        
