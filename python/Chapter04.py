# TCPEchoServer

from curses.ascii import SO
from socket import *

s_ip = 'localhost'
s_port = 9999

s_sock = socket(AF_INET, SOCK_STREAM)
s_sock.setsockopt(SOL_SOCKET, SO_REUSEADDR, 1) 
#while 때문에 사용한 것

s_sock.bind((s_ip, s_port))
s_sock.listen(2)

client, c_addr = s_sock.accept()
print(c_addr, 'Now Connected')

data = 'dummy'
while len(data):
    data = client.recv(1024).decode("Utf-8")
    # 1024 = 한번에 받을 수 있는 바이트 수
    # utf-8을 써야 한글이 정상적으로 쓰임
    
    if data == 'q':
        print("\n수신종료")
        break
    
    print("수신된 자료 : ", data)
    client.send(data.encode('utf-8'))
    
client.close()
s_sock.close()
