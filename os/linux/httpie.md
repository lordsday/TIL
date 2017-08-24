# Options
You can control what should be printed via several options:

First Header | Second Header
------------ | -------------
``--headers, -h`` |  Only the response headers are printed.
``--body, -b``    |  Only the response body is printed.
``--verbose, -v`` |  Print the whole HTTP exchange (request and response). This option also enables ``--all`` (see bellow).
``--print, -p``   |  Selects parts of the HTTP exchange.

# HTTPS + BASIC AUTH

```sh
$ http --verify=no -a username:password https://localhost:8080/api/v1.0/xxxx/
```

# POST
```sh
$ http --verify=no -a username:password DELETE https://localhost:8080/api/v1.0/services/xxxx
$ http --verify=no -a username:password POST https://localhost:8080/api/v1.0/services/xxxx param01=value01 parme02=value02
$ http --verify=no -a username:password PUT https://localhost:8080/api/v1.0/services/xxxx/nodes containers:='["127.0.0.1:19000", "127.0.0.1:19000"]'
```
