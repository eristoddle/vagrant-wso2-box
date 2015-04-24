#WSO2 Dev Box

Eventually going to add as many of the applications as I can.

It downloads:

- Java
- Maven
- ActiveMQ
- All WSO2 Products, comment out those you don't need

##Active Application Services

All can be stopped, started and restarted

`sudo service wso2am restart`
`sudo service wso2brs stop`
etc...

##Build
All the capabilities to build from source are here, just not activated because the box needs a lot of memory to build
with Maven.

##Installing applications with the features manager

HAD TO SPLIT THE DAMN THING INTO TWO BOXES BECAUSE THE FEATURE MANAGER IS BORKED

Go to Configure/Features/Repository Management in the ESB box
Add repos needed from
Add these repos if not already there:
name: Turing
url: http://dist.wso2.org/p2/carbon/releases/turing/

Then click the 'Find Features' button.

- Install DSS 3.2.2 on the esb box
- Install BRS ????

###More info on repos

List of repos: http://product-dist.wso2.com/p2/carbon/releases
- http://wso2.com/projects/carbon/provisioning-wso2-carbon-with-equinox-p2/
Play whack-a-repo to find the right version: http://wso2.com/products/carbon/release-matrix/

##Where are the applications in the box

Under the `/opt` folder.

## Links

- [Docs](https://docs.wso2.com/)
- [ESB Carbon Admin](https://192.168.11.11:9443/carbon)
- [AM Carbon Admin](https://192.168.11.12:9443/carbon)
- [API Store](https://192.168.11.12:9443/store)
- [API Publisher](https://192.168.11.12:9443/publisher)

##Development

- http://wso2.com/library/articles/2014/06/develop-and-deploy-esb-artifacts-using-wso2-developer-studio/
- http://wso2.com/library/articles/2012/09/develop-deploy-web-applications-using-wso2-developer-studio/
- http://wso2.com/library/articles/2015/01/wso2-api-manager-scalable-deployment-patterns-01/