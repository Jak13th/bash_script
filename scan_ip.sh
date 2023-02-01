echo "Online IP adresses: " > online_ip.txt
echo "Offline IP adresses: " > offline_ip.txt

ipaddr=10.93.161.45
base=${ipaddr:0:10}

# Loop through the IP range and run ping to scan for open ports
for i in {0..255..1}
do
	if ping -W 1 -c 1 $base$i 2>&1 >/dev/null
	then echo $base$i >> online_ip.txt
	else echo $base$i >> offline_ip.txt
	fi
done
