# CIDR 표기법
CIDR은 Classless Inter-Domain Routing의 약어로 IP 주소 할당 방법입니다. 급격히 부족해지는 IPv4 주소를 보다 효율적으로 사용하기 위해 CIDR 표기법을 사용합니다. xxx.xxx.xxx.xxx/yy 형태로 표기하는데 맨 뒤의 yy는 Subnet Mask를 2진수로 바꾸었을 때 1의 개수입니다.

255.255.255.0을 2진수로 바꾸면 11111111.11111111.11111111.00000000이 됩니다. CIDR 표기법으로는 xxx.xxx.xxx.xxx/24가 됩니다.

192.168.0.0/24라면 192.168.0.1부터 192.168.0.254까지 라는 의미입니다(192.168.0.0는 네트워크 192.168.0.255는 브로드캐스트).

192.168.0.15/32이면 1이 32개이고 Subnet Mask가 255.255.255.255가 되므로 192.168.0.15 한 개의 IP만 표현하게 됩니다.

출처 http://pyrasis.com/book/TheArtOfAmazonWebServices/Chapter20
