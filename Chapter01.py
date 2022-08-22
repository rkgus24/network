from http import client
from socket import * #include = import
#socket을 일일히 쓰기가 불편하기 때문에 써주는 코드
s_ip = 'localhost'
s_port = 9999

s_sock = socket(AF_INET, SOCK_STREAM) #socket을 만듦
s_sock.bind ( (s_ip, s_port) ) 
#튜플로 묶였으므로 인자가 1개 이고 변경이 불가하다
s_sock.listen(2)

client, c_addr = s_sock.accept() 
#socket, 접근하는 친구의 주소 / 반환값으로 주소와 socket을 준다
print(c_addr, 'is connected')

data1 = 'Thank you for connecting'
client.send(data1.encode('utf-8'))
data2 = 'Received data from client : '
print(data2, client.recv(1024).decode('utf-8'))

client.close() #socket을 닫아주는 것
s_sock.close()