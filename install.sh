WifiDriverStatus="$(dmesg|grep -i 8188e)"
if [[ ! -z $WifiDriverStatus ]]
then
   echo "Looks like you need the Realtek 8188e driver from lwfinger"
   echo "getting driver from github"
        git clone https://github.com/lwfinger/rtl8188eu.git
        echo "cding to rtl8188eu"
        cd rtl8188eu
        echo "coping the driver rtl8188eufw.bin to /lib/firmware/rtlwifi/rtl8188eufw.bin"
        sudo cp rtl8188eufw.bin /lib/firmware/rtlwifi/rtl8188eufw.bin
        cd ..
        echo "removing unnecessary files"
        rm -rf rtl8188eu
        echo "you need to reboot the computer for the driver to work."
        echo 'example command "sudo init 6"'
fi

