#!bin/bash
#Coded By MY5T_404
#Coded By MY5T_404
#This is a Url Grapper Bash Script...
#MGUrls==>My5t_Grabed_Urls
echo ""
echo " __  __  ____ _   _      _     
|  \/  |/ ___| | | |_ __| |___ 
| |\/| | |  _| | | | '__| / __|
| |  | | |_| | |_| | |  | \__ \

|_|  |_|\____|\___/|_|  |_|___/
"
echo "[==> Coded_By_MY5T_404 <==]"
echo ""
echo ""
echo "## An Automated Url Grabber"
echo ""
read -p "How Many websites- " n
echo ""
echo "Enter the Urls--- "
for ((i=1;i<=n;i++))
do
read -p "$i=> " arr[$i]
done
rm -rf "Result_Folder"
mkdir "Result_Folder" && cd "Result_Folder"
echo ""
echo "Loading......."
echo "Please Wait--------->>>"
sleep .01
for((i=1;i<=n;i++))
do
echo "${arr[i]}" | gau | tee -a gau_$i.txt
echo "${arr[i]}" | gauplus | tee -a gaup_$i.txt
echo "${arr[i]}" | waybackurls | tee -a way_$i.txt
cat gau_$i.txt gaup_$i.txt way_$i.txt | sort -u | tee -a final_$i.txt
rm -rf gau_$i.txt gaup_$i.txt way_$i.txt
sleep .02
done
echo ""
echo ""
echo "________________^^^^^^^^^^^^^^^^^^^^^^^________________"
echo ""
echo "=============>>/ Successfully Completed \<<============"
echo ""
for ((i=1;i<=n;i++))
do
echo "Total Grabbed Link of $i url----"
cat final_$i.txt | wc -l
done
echo ""
echo "File Path:-"
pwd
echo ""
echo ""
echo "%!((Coded_By_MY5T_404))!%"
echo""
##END
##Coded_By_MY5t_404
