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