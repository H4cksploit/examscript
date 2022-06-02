
echo "-----------------------------------------------------------------------------------------------------------------------------------"
echo							 "My Script"
echo "------------------------------------------------------------------------------------------------------------------------------------"
echo
echo "Please choose the given Reconnaissance Tools:"
echo
echo 1.Whois and dig
echo 2.Sublist3r
echo 3.theHarvester
echo 4.nmap
echo 5.Nslookup
echo 6.All
echo
read tool
echo
echo "input target:"
read url
echo
if [ $tool -eq 1 ];
then
echo "result of ip resolution:"
echo
ping -c 1 $url >> ipresolution.txt
echo
echo "------------------------------------------------------------------------------------"
echo "DIG  RESULT"
echo "-----------------------------------------------------------------------------------"
echo
echo" file Saved "
echo
dig $url >> digresult.txt
echo 
echo
echo
echo
echo
echo
echo
echo
echo "-----------------------------------------------------------------------------------------------------------------------------------"
elif [ $tool -eq 2 ];
then
echo "result of sublist3r tool:"
echo
sublist3r -d $url -o subdomain.txt
echo
echo "------------------------------------------------------------------------------------------------------------------------------------"
echo
elif [ $tool -eq 3 ];
then
echo "Here is the result of theHarvester tool:"
echo
theHarvester -d $url -l 500 -b all  -f harvesterresult >> harvester.txt
echo
echo "------------------------------------------------------------------------------------------------------------------------------------"
echo 
elif [ $tool -eq 4 ];
then
echo "Here is the result of resolution of ports and os :"
echo
nmap -sV -Pn  -A -O $url -o nmapresult.txt
echo
echo "------------------------------------------------------------------------------------------------------------------------------------"
echo
elif [ $tool -eq 5 ];
then
echo "result of nslookup:"
nslookup $url
echo
echo
echo
echo
echo
echo  "all Result"
ping -c 1 $url 
echo
echo "------------------------------------------------------------------------------------"
echo "DIG  RESULT"
echo "-----------------------------------------------------------------------------------"
echo
echo" file Saved "
echo
dig $url >> dig.txt
echo 
echo
echo "---------------------------------------------"
echo      "result of ip resolution:"
echo "---------------------------------------------"
echo
sublist3r -d $url
echo
echo "---------------------------------------------"
echo    "result of sublist3r tool:"
echo "---------------------------------------------"
theHarvester -d $url -l 500 -b all -f harvesterresult >> harvester.txt
echo
echo "---------------------------------------------"
echo   "result of theHarvester tool:"
echo "---------------------------------------------"
echo
nslookup $url
echo "---------------------------------------------"
echo "---------------------------------------------"
echo

echo" nmap result"
echo 
nmap -sV -Pn  -A -O $url -o nmapresult 
echo "------------------------------------------------------------------------------------------------------------------------------------"


fi

