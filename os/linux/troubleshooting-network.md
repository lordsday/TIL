# Network Problems
### Is DNS Working?
```sh
$ nslookup web1
Server: 10.1.1.3
Address: 10.1.1.3#53
Name: web1.example.net
Address: 10.1.2.5
```

### No Name Server Configured or Inaccessible Name Server
```sh
$ nslookup web1
;; connection timed out; no servers could be reached
```

### Can I Route to the Remote Host?
```sh
$ traceroute 10.1.2.5
traceroute to 10.1.2.5 (10.1.2.5), 30 hops max, 40 byte packets
1 10.1.1.1 (10.1.1.1) 5.432 ms 5.206 ms 5.472 ms
2 web1 (10.1.2.5) 8.039 ms 8.348 ms 8.643 ms
```

### Is the Remote Port Open?
```sh
$ nmap -p 80 10.1.2.5
Starting Nmap 4.62 ( http://nmap.org ) at 2009-02-05 18:49 PST
Interesting ports on web1 (10.1.2.5):
PORT STATE SERVICE
80/tcp filtered http
```

# Scripts
### Search a port range
```sh
netstat -nt | awk 'NR > 2 {n=split($4,a,":"); if (a[2] >= 29000 && a[2] <= 29010) print a[2]}'
```
