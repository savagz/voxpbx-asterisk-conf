#cd /usr/src
#sudo git clone https://github.com/savagz/voxpbx-asterisk-conf.git /usr/src/conf

sudo mv extensions_endpoints.conf /etc/asterisk/.
sudo mv extensions_features.conf /etc/asterisk/.
sudo mv extensions_outgoing.conf /etc/asterisk/.
sudo mv extensions_incoming.conf /etc/asterisk/.
sudo mv extensions_general.conf /etc/asterisk/.
sudo mv extensions.conf /etc/asterisk/.

sudo mv pjsip_endpoints.conf /etc/asterisk/.
sudo mv pjsip_trunks.conf /etc/asterisk/.
sudo mv pjsip_auth.conf /etc/asterisk/.
sudo mv pjsip_aors.conf /etc/asterisk/.
sudo mv pjsip_transport.conf /etc/asterisk/.
sudo mv pjsip_register.conf /etc/asterisk/.
sudo mv pjsip.conf /etc/asterisk/.

sudo mv confbridge.conf /etc/asterisk/.
sudo mv musiconhold.conf /etc/asterisk/.
sudo mv voicemail.conf /etc/asterisk/.

sudo mv cdr.conf /etc/asterisk/.
sudo mv res_odbc.conf /etc/asterisk/.
sudo mv cdr_adaptive_odbc.conf /etc/asterisk/.

sudo rm -rf extensions_minivm.conf

cd /etc/asterisk/
sudo chown asterisk:asterisk *.conf

sudo mkdir /var/lib/asterisk/moh/custom
sudo mkdir /var/lib/asterisk/moh/devices
cd /var/lib/asterisk/moh/devices
sudo mv /usr/src/voxpbx-asterisk-conf/files/moh/Epic_Soul_Factory-Tokyo_Lights.gsm .
sudo mv /usr/src/voxpbx-asterisk-conf/files/moh/Manu95-A_Long_Way.gsm .

cd /var/lib/asterisk/moh
sudo chown -R asterisk:asterisk *

cd /usr/src/voxpbx-asterisk-conf/files/odbc
sudo mv odbc.ini /etc/.