
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
echo "result of whois tool:"
echo
ping -c 1 $url 
echo
echo "------------------------------------------------------------------------------------"
echo "DIG  RESULT"
echo "-----------------------------------------------------------------------------------"
echo
echo" file Saved "
echo

echo Processing domain: $d;  dig $d | grep -v "^;" | tee ${d}result.txt; 
echo
echo
dig $url
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
theHarvester -d $url -l 500 -b all  -f harvesterresult
echo
echo "------------------------------------------------------------------------------------------------------------------------------------"
echo 
elif [ $tool -eq 4 ];
then
echo "Here is the result of resolution of ports and os :"
echo
nmap -sV -Pn  -A -O $url -o nmapresult /home/kali/Desktop
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
echo  "all Result"
ping -c 1 $url 
echo
echo "------------------------------------------------------------------------------------"
echo "DIG  RESULT"
echo "-----------------------------------------------------------------------------------"
echo
echo" file Saved "
echo

echo Processing domain: $d;  dig $d | grep -v "^;" | tee ${d}result.txt;
echo
echo "---------------------------------------------"
echo      "Here is the result of whois tool:"
echo "---------------------------------------------"
echo
sublist3r -d $url
echo
echo "---------------------------------------------"
echo    "Here is the result of sublist3r tool:"
echo "---------------------------------------------"
theHarvester -d $url -l 500 -b all
echo
echo "---------------------------------------------"
echo   "Here is the result of theHarvester tool:"
echo "---------------------------------------------"
echo
nslookup $url
echo "---------------------------------------------"
echo "Here is the result of resolution of IP address:"
echo "---------------------------------------------"
echo

echo" here is nmap result"
echo 
nmap -sV -Pn  -A -O $url -o nmapresult /home/kali/Desktop
echo "------------------------------------------------------------------------------------------------------------------------------------"
echo "Thanks to used it:"

fi

