cd /usr/src
sudo git clone https://github.com/savagz/voxpbx-asterisk-conf.git /usr/src/voxpbx

# Copy Conf
sudo mv /usr/src/voxpbx/conf/extensions_endpoints.conf /etc/asterisk/.
sudo mv /usr/src/voxpbx/conf/extensions_features.conf /etc/asterisk/.
sudo mv /usr/src/voxpbx/conf/extensions_outgoing.conf /etc/asterisk/.
sudo mv /usr/src/voxpbx/conf/extensions_incoming.conf /etc/asterisk/.
sudo mv /usr/src/voxpbx/conf/extensions_general.conf /etc/asterisk/.
sudo mv /usr/src/voxpbx/conf/extensions.conf /etc/asterisk/.

sudo mv /usr/src/voxpbx/conf/pjsip_endpoints.conf /etc/asterisk/.
sudo mv /usr/src/voxpbx/conf/pjsip_trunks.conf /etc/asterisk/.
sudo mv /usr/src/voxpbx/conf/pjsip_auth.conf /etc/asterisk/.
sudo mv /usr/src/voxpbx/conf/pjsip_aors.conf /etc/asterisk/.
sudo mv /usr/src/voxpbx/conf/pjsip_transport.conf /etc/asterisk/.
sudo mv /usr/src/voxpbx/conf/pjsip_register.conf /etc/asterisk/.
sudo mv /usr/src/voxpbx/conf/pjsip.conf /etc/asterisk/.

sudo mv /usr/src/voxpbx/conf/confbridge.conf /etc/asterisk/.
sudo mv /usr/src/voxpbx/conf/musiconhold.conf /etc/asterisk/.
sudo mv /usr/src/voxpbx/conf/voicemail.conf /etc/asterisk/.

sudo mv /usr/src/voxpbx/conf/cdr.conf /etc/asterisk/.
sudo mv /usr/src/voxpbx/conf/res_odbc.conf /etc/asterisk/.
sudo mv /usr/src/voxpbx/conf/cdr_adaptive_odbc.conf /etc/asterisk/.

# Conf Removed & Permissions
cd /etc/asterisk/
sudo rm -rf extensions_minivm.conf
sudo chown asterisk:asterisk *.conf

# MoH
sudo mkdir /var/lib/asterisk/moh/custom
sudo mkdir /var/lib/asterisk/moh/devices
cd /var/lib/asterisk/moh/devices
sudo mv /usr/src/voxpbx/files/moh/Epic_Soul_Factory-Tokyo_Lights.gsm .
sudo mv /usr/src/voxpbx/files/moh/Manu95-A_Long_Way.gsm .

cd /var/lib/asterisk/moh
sudo chown -R asterisk:asterisk *

# ODBC
cd /usr/src/voxpbx/files/odbc
sudo mv odbc.ini /etc/.