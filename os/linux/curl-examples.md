# Curl

## POST
```sh
$ curl -k --user user:password -H "Content-Type: application/json" https://localhost:4080/api/v1.0/xxx/xxx -X POST -d '{"key1":"value1", "key2":"value2"}' 
```

## PUT
```sh
$ curl -k --user user:password -H "Content-Type: application/json" https://localhost:4080/api/v1.0/xxx/xxx/xxxx -X PUT -d '{ "key1": ["v1", "v2", "v3"]}'
```
