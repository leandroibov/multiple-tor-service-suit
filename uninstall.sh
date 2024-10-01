#!/bin/bash
##############Script################################
#unistall multiple-tor-service-suit


echo "";
echo "Unistall multiple-tor-service-suit";
echo "Moving files to /tmp for secure removing for /bin (sensitive directory)";
echo "sudo mv /bin/3-tors /bin/bridgestor1off /bin/bridgestor2off /bin/bridgestor3off /bin/bridgestor4off /bin/menu_tors /bin/restartor2 /bin/statustor1 /bin/statustor4 /bin/stoptor3 /bin/3-tors-remove /bin/bridgestor1on /bin/bridgestor2on /bin/bridgestor3on /bin/bridgestor4on /bin/proxychains_3tors /bin/restartor3 /bin/statustor2 /bin/stoptor1 /bin/stoptor4 /bin/bridgestor1.2on /bin/bridgestor2.2on /bin/bridgestor3.2on /bin/bridgestor4.2on /bin/restartor1 /bin/restartor4 /bin/statustor3 /bin/stoptor2 /bin/proxychains-exemples /tmp;";
sudo mv /bin/3-tors /bin/bridgestor1off /bin/bridgestor2off /bin/bridgestor3off /bin/bridgestor4off /bin/menu_tors /bin/restartor2 /bin/statustor1 /bin/statustor4 /bin/stoptor3 /bin/3-tors-remove /bin/bridgestor1on /bin/bridgestor2on /bin/bridgestor3on /bin/bridgestor4on /bin/proxychains_3tors /bin/restartor3 /bin/statustor2 /bin/stoptor1 /bin/stoptor4 /bin/bridgestor1.2on /bin/bridgestor2.2on /bin/bridgestor3.2on /bin/bridgestor4.2on /bin/restartor1 /bin/restartor4 /bin/statustor3 /bin/stoptor2 /bin/proxychains-exemples /tmp;
echo "";
echo "Deleting files...";
echo "sudo rm -rf /tmp/3-tors /tmp/bridgestor1off /tmp/bridgestor2off /tmp/bridgestor3off /tmp/bridgestor4off /tmp/menu_tors /tmp/restartor2 /tmp/statustor1 /tmp/statustor4 /tmp/stoptor3 /tmp/3-tors-remove /tmp/bridgestor1on /tmp/bridgestor2on /tmp/bridgestor3on /tmp/bridgestor4on /tmp/proxychains_3tors /tmp/restartor3 /tmp/statustor2 /tmp/stoptor1 /tmp/stoptor4 /tmp/bridgestor1.2on /tmp/bridgestor2.2on /tmp/bridgestor3.2on /tmp/bridgestor4.2on /tmp/restartor1 /tmp/restartor4 /tmp/statustor3 /tmp/stoptor2 /tmp/proxychains-exemples;";
sudo rm -rf /tmp/3-tors /tmp/bridgestor1off /tmp/bridgestor2off /tmp/bridgestor3off /tmp/bridgestor4off /tmp/menu_tors /tmp/restartor2 /tmp/statustor1 /tmp/statustor4 /tmp/stoptor3 /tmp/3-tors-remove /tmp/bridgestor1on /tmp/bridgestor2on /tmp/bridgestor3on /tmp/bridgestor4on /tmp/proxychains_3tors /tmp/restartor3 /tmp/statustor2 /tmp/stoptor1 /tmp/stoptor4 /tmp/bridgestor1.2on /tmp/bridgestor2.2on /tmp/bridgestor3.2on /tmp/bridgestor4.2on /tmp/restartor1 /tmp/restartor4 /tmp/statustor3 /tmp/stoptor2 /tmp/proxychains-exemples;
echo "";

echo;
echo "Deleting all tor instance files created...";
echo "sudo rm -rf /var/tmp/torrc.2 /var/tmp/tor2 /etc/systemd/system/tor2.service /var/tmp/torrc.3 /var/tmp/tor3 /etc/systemd/system/tor3.service /var/tmp/torrc.4 /var/tmp/tor4 /etc/systemd/system/tor4.service";
sudo rm -rf /var/tmp/torrc.2 /var/tmp/tor2 /etc/systemd/system/tor2.service /var/tmp/torrc.3 /var/tmp/tor3 /etc/systemd/system/tor3.service /var/tmp/torrc.4 /var/tmp/tor4 /etc/systemd/system/tor4.service;
echo;

echo "Finished!";
echo "";
echo "";

