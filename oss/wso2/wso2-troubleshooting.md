# Error when login to admin console

If JDK version is 1.8.0_151, errors occurs as below:
```
WARN - JavaLogger potential cross-site request forgery (CSRF) attack thwarted
(user:<anonymous>, ip:10.0.1.125, method:HEAD, uri:/carbon/admin/login.jsp,
error:required token is missing from the request)
```

WSO2 documents recommend using JDK 1.8.0_144 until the latter mentioned version is released.

[Installation Prerequisites](https://docs.wso2.com/display/AM210/Installation+Prerequisites)
