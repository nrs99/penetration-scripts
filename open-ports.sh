if [ $# -ne 1]; then
	echo "usage: sh open-ports.sh target-ip-range"
	exit 1
fi
echo ""
echo "scanning ip address range"
echo "nmap -e eth1 -Pn -sS -F -n -vv --reason --open ${1}"
nmap -e eth1 -Pn -sS -F -n -vv --reason --open ${1}
