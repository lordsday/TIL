# Disable Chunking in WSO2 API Manager

## Write custom sequence for disable chunking.
```xml
<?xml version="1.0" encoding="UTF-8"?>
<sequence xmlns="http://ws.apache.org/ns/synapse"
          name="chunk-disable-sequence">
        <property name="DISABLE_CHUNKING" value="true" scope="axis2" />
</sequence>
```
* http://lakshanigamage.blogspot.kr/2016/12/disable-chunking-in-wso2-api-manager.html
* https://docs.wso2.com/display/AM210/Adding+Mediation+Extensions

## Add a custom sequence in global mediation polices

Make sequence xml files
Copy xml files into ${APIM_HOME}/repository/resources/customsequences/{in|out|fault}
