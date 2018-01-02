# Tunning Performance

1. OS Level settings
    1. open files (/etc/security/limits.conf)
    ```
    * soft nofile 4096
    * hard nofile 65535
    ```
    1. maximum number of processes (/etc/security/limits.conf)
    ```
    * soft nproc 20000
    * hard nproc 20000
    ```

2. JVM-level settings
    2. wso2server.sh
    ```
    -Xms2048m -Xmx2048m -XX:MaxPermSize=1024m
    ```

https://docs.wso2.com/display/AM210/Tuning+Performance
