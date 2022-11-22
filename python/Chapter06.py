#UDPServer

from socket import *

s_ip = 'localhost'
s_port = 9999

s_sock = socket(AF_INET, SOCK_DGRAM)
s_sock.bind ( (s_ip, s_port) )

s_sock.settimeout(5)
#5초동안 응답이 없으면 재전송 하는 것

data, c_adder = s_sock.recvfrom(1024)

print('수신지 : '. c_adder)
print('수신된 자료 : ', data.decode('utf-8'))

s_sock.close()
