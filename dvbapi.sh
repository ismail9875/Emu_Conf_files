#######################################
## CMD=wget -O /etc/tuxbox/config/oscam.dvbapi "https://raw.githubusercontent.com/ismail9875/Emu_Conf_files/main/oscam.dvbapi"
## CMD2=wget -O /etc/tuxbox/config/ncam.dvbapi "https://raw.githubusercontent.com/ismail9875/Emu_Conf_files/main/ncam.dvbapi"
#######################################

if [[ -f /etc/tuxbox/config/*.dvbapi ]]; then
    rm -f *.dvbapi
    get -O /etc/tuxbox/config/oscam.dvbapi "https://raw.githubusercontent.com/ismail9875/Emu_Conf_files/main/oscam.dvbapi"
    wget -O /etc/tuxbox/config/ncam.dvbapi "https://raw.githubusercontent.com/ismail9875/Emu_Conf_files/main/ncam.dvbapi"
else
    get -O /etc/tuxbox/config/oscam.dvbapi "https://raw.githubusercontent.com/ismail9875/Emu_Conf_files/main/oscam.dvbapi"
    wget -O /etc/tuxbox/config/ncam.dvbapi "https://raw.githubusercontent.com/ismail9875/Emu_Conf_files/main/ncam.dvbapi"
fi 

exit 0