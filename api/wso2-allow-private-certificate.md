# Add the client certificate

```sh
keytool -importcert -file private.crt -keystore ${APIM_HOME}/repository/resources/security/wso2carbon.jks -alias "alias_name"
```

* https://stackoverflow.com/questions/33498881/wso2-api-manager-https-ssl-basessandbox-url

# Set the parameter HostnameVerifier to AllowAll for transportSender in the Axis2 configuration (axis2.xml).

```xml
<transportSender name="https" class="org.apache.synapse.transport.passthru.PassThroughHttpSSLSender">
    ....
    <parameter name="HostnameVerifier">AllowAll</parameter>
    ....
</transportSender>
```

* https://stackoverflow.com/questions/33394617/to-access-published-wso2-api-manager-apis-using-tokens-from-wso2-esb-unable-to/33404268#33404268
* https://stackoverflow.com/questions/19155521/wso2-esb-axis2-service-throwing-host-name-verification-failed-for-host
