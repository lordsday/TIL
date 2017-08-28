# Disable Chunking in WSO2 API Manager

## Method2
```xml
<?xml version="1.0" encoding="UTF-8"?>
<sequence xmlns="http://ws.apache.org/ns/synapse"
          name="chunk-disable-sequence">
        <property name="DISABLE_CHUNKING" value="true" scope="axis2" />
</sequence>
```
http://lakshanigamage.blogspot.kr/2016/12/disable-chunking-in-wso2-api-manager.html
