cd /etc/asterisk

sudo touch extensions_endpoints.conf
sudo touch extensions_features.conf
sudo touch extensions_outgoing.conf
sudo touch extensions_incoming.conf

sudo touch pjsip_endpoints.conf
sudo touch pjsip_trunks.conf
sudo touch pjsip_auth.conf
sudo touch pjsip_aors.conf
sudo touch pjsip_transport.conf
sudo touch pjsip_register.conf

sudo rm -rf extensions_minivm.conf

sudo chown asterisk:asterisk *.conf

sudo mkdir /var/lib/asterisk/moh/devices
cd /var/lib/asterisk/moh/devices
sudo wget https://www.voxtip.com.co/files/Epic_Soul_Factory-Tokyo_Lights.gsm
sudo wget https://www.voxtip.com.co/files/Manu95-A_Long_Way.gsm