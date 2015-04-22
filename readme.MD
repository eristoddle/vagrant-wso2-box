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

##Installing applications with the features manager

Go to Configure/Features/Repository Management
Add repos needed from
Add this repo if not already there:
name: Equinox P2
url: http://product-dist.wso2.com/p2/carbon/releases/4.2.0/

Then click the 'Find Features

List of repos: http://product-dist.wso2.com/p2/carbon/releases
Play whack-a-repo to find the right version: http://wso2.com/products/carbon/release-matrix/

##Where are the applications in the box

Under the `/opt` folder.

## Links

- [Docs](https://docs.wso2.com/)
- [Carbon Admin](https://localhost:9443/carbon)
- [API Store](https://localhost:9443/store)
- [API Publisher](https://localhost:9443/publisher)