#!/bin/bash
# set alias to Target IP Address

# -d delete option
#~ if [ "$1" == "-d" ] && [ ! -z "$2" ];then
	#~ if [ "$2" == "kali" ] || [ "$2" == "localhost" ] || [ "$2" == "loopback" ] || [ "$2" == "ip6" ] || [ "$2" == "all" ] || [ "$2" == "nodes" ] || [ "$2" == "allnodes" ] || [ "$2" == "routers" ] || [ "$2" == "allrouters" ] || [ $2 == 127.0.0.1 ] || [ $2 == 127.0.1.1 ];then
		#~ echo "Unable to Proceed."
		#~ exit
	#~ else
		#~ delete_ip=$(cat /etc/hosts | grep -i "$2")
		#~ sudo sed -i "/$delete_ip/d" /etc/hosts
		#~ echo -e "$2 deleted from /etc/hosts."
	#~ fi
#~ el

if [ -z $1 ] || [ -z $2 ];then		# if arguments is insufficient
	echo -e "Usage:\n\tsudo setTarget <IP Address> <Alias Name>" #\n\tsudo setTarget -d <IP Address/Alias Name>	to delete IP Address/Alias Name."
	exit
else								# add target
	sudo echo -e "$1\t$2" >> /etc/hosts
	echo -e "$1 $2 added to /etc/hosts complete."
fi
