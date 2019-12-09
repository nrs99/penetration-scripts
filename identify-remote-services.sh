# identify remote services running on hosts within target-ip-range
if [ $# -ne 1]; then
	echo "usage: sh identify-remote-services target-ip-range"
	exit 1
fi
echo ""
echo "scanning ip address range ${1} for remote services"
echo "nmap -e eth1 -Pn -sS -F -n -vv --reason --open -sV ${1}"
nmap -e eth1 -Pn -sS -F -n -vv --reason --open -sV ${1}
