#!/bin/sh 
#清除IPV6路由表 
sudo route delete -inet6 default  
sudo ifconfig gif0 destroy
EN0_IP=`ifconfig en0 | grep inet | grep -v inet6 | awk '{print $2}'` 
EN1_IP=`ifconfig en1 | grep inet | grep -v inet6 | awk '{print $2}'`  
EN2_IP=`ifconfig en2 | grep inet | grep -v inet6 | awk '{print $2}'`  
EN3_IP=`ifconfig en3 | grep inet | grep -v inet6 | awk '{print $2}'`  
EN4_IP=`ifconfig en4 | grep inet | grep -v inet6 | awk '{print $2}'`  
if [ -n "$EN0_IP" ]; then 
    LOCAL_IP=$EN0_IP 
elif [ -n "$EN1_IP" ]; then 
    LOCAL_IP=$EN1_IP 
elif [ -n "$EN2_IP" ]; then 
    LOCAL_IP=$EN2_IP 
elif [ -n "$EN3_IP" ]; then 
    LOCAL_IP=$EN3_IP 
elif [ -n "$EN4_IP" ]; then 
    LOCAL_IP=$EN4_IP 
else :
fi  
if [ -n "$LOCAL_IP" ]; then 
    sudo ifconfig gif0 create
    sudo ifconfig gif0 tunnel $LOCAL_IP 166.111.21.1 
    sudo ipconfig set gif0 MANUAL-V6 2402:f000:1:1501:200:5efe:$LOCAL_IP 64
    sudo route add -inet6 ::/0 -interface gif0
else
	echo "LOCAL IPv4 ADDR does not exist."
fi
