#WSO2 Dev Box

Eventually going to add as many of the applications as I can.

It downloads:

- Java
- Maven
- ActiveMQ
- All WSO2 Products, comment out those you don't need
- Postgresql Driver

##Active Application Services

All can be stopped, started and restarted

`sudo service wso2am restart`
`sudo service wso2esb stop`
etc...

##Build
All the capabilities to build from source are here, just not activated because the box needs a lot of memory to build
with Maven.

###More info on repos

- List of repos: http://product-dist.wso2.com/p2/carbon/releases
- http://wso2.com/projects/carbon/provisioning-wso2-carbon-with-equinox-p2/
- http://wso2.com/products/carbon/release-matrix/

##Where are the applications in the box

Under the `/opt` folder.

## Links

- [Docs](https://docs.wso2.com/)
- [ESB Carbon Admin](https://localhost:9443/carbon)
- [API Carbon Admin](https://localhost:9445/carbon)
- [BAM Carbon Admin](https://localhost:9444/carbon)
- [GREG Carbon Admin](https://localhost:9446/carbon)
- [API Store](https://localhost:9445/store)
- [API Publisher](https://localhost:9445/publisher)
- [BAM Gadget Server Default Context](https://localhost:9764/portal)
- Username Everywhere: admin
- Password Everywhere: admin

##Development

- http://wso2.com/library/articles/2014/06/develop-and-deploy-esb-artifacts-using-wso2-developer-studio/
- http://wso2.com/library/articles/2012/09/develop-deploy-web-applications-using-wso2-developer-studio/
- http://wso2.com/library/articles/2015/01/wso2-api-manager-scalable-deployment-patterns-01/

##Manual

###Starting the BAM Server

For some reason, I can't get the startup script to work.
It gets installed, so you can ignore the error when it is provisioned.
It can be started from inside the box with:

`sh /opt/wso2bam-2.4.1/bin/wso2server.sh > /dev/null &`

###Installing applications with the features manager

Go to Configure/Features/Repository Management in the ESB box
Add repos needed from
Add these repos if not already there:
name: Turing
url: http://dist.wso2.org/p2/carbon/releases/turing/

Then click the 'Find Features' button.

- Install DSS 3.2.2 in the ESB admin

###Add Data Source

- Add remote Postgresql database to DSS