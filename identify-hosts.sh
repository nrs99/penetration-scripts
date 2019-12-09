if [ $# -ne 1]; then
	echo "usage: ./identify-hosts.sh target-ip-range"
	exit 1
fi

hostnames=$(hostname -I | sed -e 's/[[:space:]]*$//' | tr " " ",")
echo ""
echo "scanning subnet ${1}"
echo "excluding ip address ranges ${hostnames}"
echo "nmap -e eth1 -sn -n -v --reason --open --exclude ${hostnames} ${1}"
nmap -e eth1 -sn -n -v --reason --open --exclude ${hostnames} ${1}
