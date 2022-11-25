#!/bin/bash
#Coded_By_My5t_404
#This is a installion Script which will automatically install all your requirment or intall scirpt
echo ""
echo ""
echo "          //Welcome To Automated Installation\\"
echo "___________________________________________________________"
echo "Coded_By_MY5T_404"
echo ""
chmod +x mgurls.sh
echo ""
read -p "1. Do you have golang?(y/n) => " a
read -p "2. Do you have gau?(y/n) => " b
read -p "3. Do you have gauPlus?(y/n) => " c
read -p "4. Do you have waybackurls?(y/n) => " d
echo ""
echo "Installation Started......"
echo "Please Wait ===================>"
echo ""
if [ "$a" = "n" ]
then
	echo -e "GoLang is installing..........\n\n"
	rm -rf tempf
	mkdir tempf && cd tempf
	wget https://go.dev/dl/go1.17.12.linux-amd64.tar.gz
	echo ""
	echo "Your Need to Enter Your pass-----"
	echo "__________________________________"
	sudo tar -C /usr/local -xzf go1.17.12.linux-amd64.tar.gz
	cd ../
	rm -rf tempf
	cd
	echo -e '\n\n\n\n\nexport GOPATH=$HOME/go\nexport GOROOT=/usr/local/go\nexport PATH=$PATH:$GOROOT/bin:$GOPATH/bin' >> .zshrc
	echo -e "\nPlease wait some time......\n"
	sleep 0.2
	cd
	source .zshrc
	echo ""
	echo "Go-Lang Installation Successfully Completed.........."
	echo ""

elif [ "$a" = "y" ]
then
	echo ""
	echo -e "Skipped Go-Lang installion.....\nGoing to next Step....\nPlease wait..................."
else
	echo -e "Wrong Statement From Go-Lang\n\n"
fi


if [ "$b" = "n" ]
then
	echo "Gau installation Started.........."
	echo ""
	go install github.com/lc/gau/v2/cmd/gau@latest
	sleep 0.1
	echo ""
	echo "Gau has been successfully installed..."
	echo ""
elif [ "$b" = "y" ]
then
	echo ""
	echo "Skipped Gau installation..Going to next step...."
	echo ""
else
	echo "Wrong Statement"
	echo ""
fi


if [ "$c" = "n" ]
then
	echo ""
	echo "Gauplus installion Started....."
	echo ""
	go install github.com/bp0lr/gauplus@latest
	echo ""
	echo "Gauplus Successfully installed....."
	echo ""
elif [ "$c" = "y" ]
then
	echo ""
	echo "Skipped Gauplus installion..."
	echo "Going to Next step..."
	echo ""
else
	echo "Wrong Statement"
	echo ""
fi


if [ "$d" = "n" ]
then
	echo ""
	echo "Waybackurls installion started...."
	go install github.com/tomnomnom/waybackurls@latest
	echo ""
	echo "Waybackurls Successfully Installed...."
	echo ""	
elif [ "$d" = "y" ]
then
	echo ""
	echo "Skipped Waybackurls installion...."
	echo "Going to Next Step...."
	echo ""
else
	echo "Wrong Statement"
	echo ""
fi


echo ""
echo "\________________________________________________/"
echo "Installion Successfully Completed."
echo ""
echo "Now You Can Run MGurls Script."
echo ""
echo "Thanks For installing.."
echo ""
echo ""
echo "%!((Coded_By_My5t_404))!%"
echo ""