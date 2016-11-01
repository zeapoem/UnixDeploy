#!/bin/sh 
#清除IPV6路由表 
sudo route delete -inet6 default  
sudo ifconfig gif0 destroy
