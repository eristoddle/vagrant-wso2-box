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

- ESB service

I was downloading all applications and automatically installing them. Now, just downloading one and then using the repo
inside the Carbon App to install the rest. All the download links and puppet configs work for downloading and installing
automatically, but I didn't want a dozen separate apps running. So they are left in the project but commented out.

##Notes

I doubt that you want all of these things running in Vagrant and since I haven't tested that, I am not sure it is possible.
But since the provision script sets up autostart services, you may need this to turn this off for specific applications
you still want around but you do not want to autostart:

`sudo update-rc.d wso2brs disable`

##Build
All the capabilities to build from source are here, just not activated because the box needs a lot of memory to build
with Maven.

##Installing applications with the features manager

HAD TO SPLIT THE DAMN THING INTO TWO BOXES BECAUSE THE FEATURE MANAGER IS FUCKED TO HELL

Go to Configure/Features/Repository Management
Add repos needed from
Add these repos if not already there:
name: Turing
url: http://dist.wso2.org/p2/carbon/releases/turing/

name: Turing 10
url: http://product-dist.wso2.com/p2/carbon/releases/turing_chunk10/

name: Turing 13
url: http://product-dist.wso2.com/p2/carbon/releases/turing_chunk13/

Then click the 'Find Features' button.

- Install DSS 3.2.2 from the P2 repo
- Install API Manager version 1.7.0

###More info on repos

List of repos: http://product-dist.wso2.com/p2/carbon/releases
- http://wso2.com/projects/carbon/provisioning-wso2-carbon-with-equinox-p2/
Play whack-a-repo to find the right version: http://wso2.com/products/carbon/release-matrix/

##Where are the applications in the box

Under the `/opt` folder.

## Links

- [Docs](https://docs.wso2.com/)
- [Carbon Admin](https://localhost:9443/carbon)
- [API Store](https://localhost:9443/store)
- [API Publisher](https://localhost:9443/publisher)

##Development

- http://wso2.com/library/articles/2014/06/develop-and-deploy-esb-artifacts-using-wso2-developer-studio/
- http://wso2.com/library/articles/2012/09/develop-deploy-web-applications-using-wso2-developer-studio/
- http://wso2.com/library/articles/2015/01/wso2-api-manager-scalable-deployment-patterns-01/