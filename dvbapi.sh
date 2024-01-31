#######################################
## CMD=wget -O /etc/tuxbox/config/oscam.dvbapi "https://raw.githubusercontent.com/ismail9875/Emu_Conf_files/main/oscam.dvbapi"
## CMD2=wget -O /etc/tuxbox/config/ncam.dvbapi "https://raw.githubusercontent.com/ismail9875/Emu_Conf_files/main/ncam.dvbapi"
#######################################
wget https://raw.githubusercontent.com/ismail9875/Emu_Conf_files/main/dvbapi.sh

if [[ -f /etc/tuxbox/config/*.dvbapi ]]; then
    rm -f /etc/tuxbox/config/*.dvbapi
    rm -f /etc/tuxbox/config/oscamicam/*.dvbapi
    wget -O /etc/tuxbox/config/oscam.dvbapi "https://raw.githubusercontent.com/ismail9875/Emu_Conf_files/main/oscam.dvbapi"
    wget -O /etc/tuxbox/config/ncam.dvbapi "https://raw.githubusercontent.com/ismail9875/Emu_Conf_files/main/ncam.dvbapi"
else
    wget -O /etc/tuxbox/config/oscam.dvbapi "https://raw.githubusercontent.com/ismail9875/Emu_Conf_files/main/oscam.dvbapi"
    wget -O /etc/tuxbox/config/ncam.dvbapi "https://raw.githubusercontent.com/ismail9875/Emu_Conf_files/main/ncam.dvbapi"
fi 
rm -f /tmp/*.dvbapi
exit 0
