# Configure

### To enable Analytics, open the <API-M_HOME>/repository/conf/api-manager.xml file and set the Enabled property under *Analytics* to true as shown below. Save this change.
```xml
<Enabled>true</Enabled>
```

### Open the <API-M_HOME>/repository/conf/log4j.properties file. Add the DAS_AGENT to the end of the root logger as shown below.
```
log4j.rootLogger=<other loggers>, DAS_AGENT
```

Change username or password if you need.
```
log4j.appender.DAS_AGENT.userName=admin
log4j.appender.DAS_AGENT.password=admin123
```

# Management Console
```
https://hostname:9444/
```
