# vagrant-demo-project
A demo project that uses Vagrant to bring up a webserver on Ubuntu. 

## Requirements
You need to install the following tools:
- [Vagrant](https://www.vagrantup.com)
- [Oracle's VirtualBox](https://www.virtualbox.org)

## Comments
- The webserver is based on [Nginx](https://nginx.org/en/). 
- The web root is ```/data/www```. This folder is synched to the host directory ```./website```. 
- The configuration file fpr Nginx is in host folder ```scripts```.
- In order to assure a consistent installation automatic box update checking is turned off. To check for updates run `vagrant box outdated`.

## Running
To run the server just type ```vagrant up```
