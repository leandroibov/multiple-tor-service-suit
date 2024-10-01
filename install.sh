#!/bin/bash

#Create 10 tor-service Daemons
#Developer Leandro Santos - https://github.com/leandroibov


echo;
echo "Creating 10 tor service files in /etc/systemd/system/";
echo "Warning!";
echo "You need obfs4proxy to run bridges - links below:";
echo "https://packages.debian.org/buster/amd64/obfs4proxy/download";
echo "https://gitlab.torproject.org/tpo/anti-censorship/pluggable-transports/lyrebird";
echo "sudo apt-get install obfs4proxy";
echo "";
echo "";

#*****
echo "Seaching tor user in the system..."
if command -v pacman > /dev/null; then
  TOR_USER=$(getent passwd tor | cut -d: -f1)
elif command -v apt > /dev/null; then
  TOR_USER=$(getent passwd debian-tor | cut -d: -f1)
elif command -v dnf > /dev/null; then
  TOR_USER=$(getent passwd toranon | cut -d: -f1)
else
   echo "Unknown distro!"
  exit
fi

if [ -n "$TOR_USER" ]; then
   echo "The Tor user on the system is: $TOR_USER"
else
    echo "Tor user not found. Please install the Tor Hidden Service."
  echo "https://support.torproject.org/apt/"

fi
echo;
#*****TOR2

echo "Creating Tor Instance 2 -> 127.0.0.1 and port 9060";
echo "Configuration files and folders created in /var/tmp/torrc.2 and /var/tmp/tor2 for user "$TOR_USER"";
echo "";
echo "";
sudo cat > /var/tmp/torrc.2 << EOF
SocksPort 9060
ControlPort 9061
DataDirectory /var/tmp/tor2
EOF
echo;

sudo mkdir /var/tmp/tor2;
sudo chown "$TOR_USER":"$TOR_USER" /var/tmp/tor2;
sudo chown "$TOR_USER":"$TOR_USER" /var/tmp/torrc.2;

echo "Creating a service file for Tor service 2 for 127.0.0.1 port 9060..."
echo "/etc/systemd/system/tor2.service"
sudo cat > /etc/systemd/system/tor2.service << EOF
[Unit]
Description=Tor Instance 2

[Service]
ExecStart=sudo -u $TOR_USER /usr/bin/tor -f /var/tmp/torrc.2

#Iniciaçização manual, cancelado WantedBy=multi-user.target
#[Install]
#WantedBy=multi-user.target
EOF

echo "Showing tor2.service file configuration"
cat /etc/systemd/system/tor2.service;
echo;
echo "Status Tor instance 2... use restartor2 script to activate instance"
sudo systemctl status tor2.service

echo;
echo "Configured torrc.2 file:";
echo "/var/tmp/torrc.2 , /var/tmp/tor2 (DataDirectory)"
echo "cat /var/tmp/torrc.2;";
cat /var/tmp/torrc.2;
echo;

#***END TOR2

#*****TOR3

echo "Creating Tor Instance 3 -> 127.0.0.1 and port 9062";
echo "Configuration files and folders created in /var/tmp/torrc.3 and /var/tmp/tor3 for user "$TOR_USER"";
echo "";
echo "";
sudo cat > /var/tmp/torrc.3 << EOF
SocksPort 9062
ControlPort 9063
DataDirectory /var/tmp/tor3
EOF
echo;

sudo mkdir /var/tmp/tor3;
sudo chown "$TOR_USER":"$TOR_USER" /var/tmp/tor3;
sudo chown "$TOR_USER":"$TOR_USER" /var/tmp/torrc.3;

echo "Creating a service file for Tor service 3 for 127.0.0.1 port 9062..."
echo "/etc/systemd/system/tor3.service"
sudo cat > /etc/systemd/system/tor3.service << EOF
[Unit]
Description=Tor Instance 3

[Service]
ExecStart=sudo -u $TOR_USER /usr/bin/tor -f /var/tmp/torrc.3

#Iniciaçização manual, cancelado WantedBy=multi-user.target
#[Install]
#WantedBy=multi-user.target
EOF

echo "Showing tor3.service file configuration"
cat /etc/systemd/system/tor3.service;
echo;
echo "Status Tor Instance 3... use restartor3 script to activate instance"
sudo systemctl status tor3.service

echo;
echo "Configured torrc.3 file:";
echo "/var/tmp/torrc.3 , /var/tmp/tor3 (DataDirectory)"
echo "cat /var/tmp/torrc.3;";
cat /var/tmp/torrc.3;
echo;
#***END TOR3

#*****TOR4

echo "Creating Tor Instance 4 -> 127.0.0.1 and port 9064";
echo "Configuration files and folders created in /var/tmp/torrc.4 and /var/tmp/tor4 for user "$TOR_USER"";
echo "";
echo "";
sudo cat > /var/tmp/torrc.4 << EOF
SocksPort 9064
ControlPort 9065
DataDirectory /var/tmp/tor4
EOF
echo;

sudo mkdir /var/tmp/tor4;
sudo chown "$TOR_USER":"$TOR_USER" /var/tmp/tor4;
sudo chown "$TOR_USER":"$TOR_USER" /var/tmp/torrc.4;

echo "Creating a service file for Tor service 4 for 127.0.0.1 port 9064..."
echo "/etc/systemd/system/tor4.service"
sudo cat > /etc/systemd/system/tor4.service << EOF
[Unit]
Description=Tor Instance 4

[Service]
ExecStart=sudo -u $TOR_USER /usr/bin/tor -f /var/tmp/torrc.4

#Iniciaçização manual, cancelado WantedBy=multi-user.target
#[Install]
#WantedBy=multi-user.target
EOF

echo "Showing tor4.service file configuration"
cat /etc/systemd/system/tor4.service;
echo;
echo "Status Tor Instance 4... use restartor4 script to activate instance"
sudo systemctl status tor4.service

echo;
echo "Configured torrc.4 file:";
echo "/var/tmp/torrc.4 , /var/tmp/tor4 (DataDirectory)"
echo "cat /var/tmp/torrc.4;";
cat /var/tmp/torrc.4;
echo;

#***END tor4


echo "Coping scripts to /bin";
echo "sudo chmod +x 3-tors bridgestor1off bridgestor2off bridgestor3off bridgestor4off menu_tors restartor2 statustor1 statustor4 stoptor3 3-tors-remove bridgestor1on bridgestor2on bridgestor3on bridgestor4on proxychains_3tors restartor3 statustor2 stoptor1 stoptor4 bridgestor1.2on bridgestor2.2on bridgestor3.2on bridgestor4.2on restartor1 restartor4 statustor3 stoptor2 /bin;";
echo "&";
echo "sudo cp -r 3-tors bridgestor1off bridgestor2off bridgestor3off bridgestor4off menu_tors restartor2 statustor1 statustor4 stoptor3 3-tors-remove bridgestor1on bridgestor2on bridgestor3on bridgestor4on proxychains_3tors restartor3 statustor2 stoptor1 stoptor4 bridgestor1.2on bridgestor2.2on bridgestor3.2on bridgestor4.2on restartor1 restartor4 statustor3 stoptor2 /bin;";
sudo chmod +x 3-tors bridgestor1off bridgestor2off bridgestor3off bridgestor4off menu_tors restartor2 statustor1 statustor4 stoptor3 3-tors-remove bridgestor1on bridgestor2on bridgestor3on bridgestor4on proxychains_3tors restartor3 statustor2 stoptor1 stoptor4 bridgestor1.2on bridgestor2.2on bridgestor3.2on bridgestor4.2on restartor1 restartor4 statustor3 stoptor2 proxychains-exemples /bin;
sudo cp -r 3-tors bridgestor1off bridgestor2off bridgestor3off bridgestor4off menu_tors restartor2 statustor1 statustor4 stoptor3 3-tors-remove bridgestor1on bridgestor2on bridgestor3on bridgestor4on proxychains_3tors restartor3 statustor2 stoptor1 stoptor4 bridgestor1.2on bridgestor2.2on bridgestor3.2on bridgestor4.2on restartor1 restartor4 statustor3 stoptor2 proxychains-exemples /bin;


echo "";

echo;



echo "---------------------------------------------------------------------------------------------------------------------------";
echo "INSTRUCTIONS HOW USE IT...";
echo "3 tor services files created, to run, run with bridges, stop and delete follow:";
echo "Type menu_tors in your terminal and select your option or... typing the name of the command..."
echo "stoptor2 to stop tor2, stoptor3 to top tor3 and so on...";
echo "restartor2 to start or restart tor2, restartor3 to start or restart tor3, and so on...";
echo "statustor2 to check status of tor2, statustor3 to check status of tor3, and so on...";
echo "to add 1 bridge obfs4 use: bridgestor2on to tor2, bridgestor3on to tor3, and so on... ";
echo "to add 2 bridges obfs4 use: bridgestor2.2on to tor2, bridgestor3.2on to tor3, and so on... ";
echo "To Eliminate Bridges in torrc files use: bridgestor2off to tor2, bridgestor2off to tor3, and so on, and the files will be as original file configuration without bridges!";
echo "";
echo "---------------------------------------------------------------------------------------------------------------------------";
echo "Warning about proxychains4 with tor instances...";
echo "Examples... of multiple proxychains4 with multiple instances of the Tor service!";
echo "---------------------------------------------------------------------------------";
echo "For ~/Download folder of the current user...";
echo "proxychains4 firefox"; 
echo "proxychains4 -f ~/Downloads/proxychains4.2.conf ~/Downloads/Cake_nano_wallet/cake_wallet/cake_wallet";
echo "proxychains4 -f ~/Downloads/proxychains4.3.conf ~/Telegram/Telegram";
echo "proxychains4 -f ~/Downloads/proxychains4.4.conf ~/Downloads/Electrum/electrum-4.5.5-x86_64.AppImage";
echo "proxychains4 -f ~/Downloads/proxychains4.4.conf signal-desktop";
echo "proxychains4 -f ~/Downloads/proxychains4.3.conf brave-browser";
echo "proxychains4 -f ~/Downloads/proxychains4.2.conf pidgin";
echo;
echo "In the folder with the .conf file...";
echo "proxychains4 -f proxychains4.2.conf firefox";
echo "proxychains4 -f proxychains4.3.conf ./cake_wallet";
echo "proxychains4 -f proxychains4.4.conf signal-desktop";
echo "";
echo "For /etc folder...";
echo "proxychains4 -f /etc/proxychains.conf firefox"; 
echo "proxychains4 -f /etc/proxychains4.2.conf ~/Downloads/Cake_nano_wallet/cake_wallet/cake_wallet";
echo "proxychains4 -f /etc/proxychains4.3.conf ~/Telegram/Telegram";
echo "proxychains4 -f /etc/proxychains4.4.conf ~/Downloads/Electrum/electrum-4.5.5-x86_64.AppImage";
echo "proxychains4 -f /etc/proxychains4.4.conf signal-desktop";
echo "proxychains4 -f /etc/proxychains4.3.conf brave-browser";
echo "proxychains4 -f /etc/proxychains4.2.conf pidgin";
echo "";
echo "";
echo "---------------------------------------------------------------------------------------------------------------------------";
echo "";
########


###*****Instruções...
echo "Manual Commands for Tor Instances ";
echo "To reload the systemd manager configuration, run:"
echo "sudo systemctl daemon-reload"
echo;

echo "To start one tor instance, run:"
echo "sudo systemctl start tor.service"
echo "sudo systemctl start tor2.service"
echo "sudo systemctl start tor3.service"
echo "sudo systemctl start tor4.service"

echo "etc..."
echo;

echo "To restart one tor instance, run:"
echo "sudo systemctl restart tor.service"
echo "sudo systemctl restart tor2.service"
echo "sudo systemctl restart tor3.service"
echo "sudo systemctl restart tor4.service"

echo "etc..."
echo;

echo "To enable one tor instance to start on boot, run:"
echo "sudo systemctl enable tor.service"
echo "sudo systemctl enable tor2.service"
echo "sudo systemctl enable tor3.service"
echo "sudo systemctl enable tor4.service"

echo "etc..."
echo;

echo "To check the status one tor instance, run:"
echo "sudo systemctl status tor.service"
echo "sudo systemctl status tor2.service"
echo "sudo systemctl status tor3.service"
echo "sudo systemctl status tor4.service"

echo "etc..."
echo;

echo "To stop one tor instance, run:"
echo "sudo systemctl stop tor.service"
echo "sudo systemctl stop tor2.service"
echo "sudo systemctl stop tor3.service"
echo "sudo systemctl stop tor4.service"

echo "etc..."
echo;

echo "To disable one tor instance from starting on boot, run:"
echo "sudo systemctl disable tor.service"
echo "sudo systemctl disable tor2.service"
echo "sudo systemctl disable tor3.service"
echo "sudo systemctl disable tor4.service"

echo "etc..."
echo;

#Delete all tor2.service Files to rebuilding as maintanance
#sudo rm -rf /var/tmp/torrc.2 /var/tmp/tor2 /etc/systemd/system/tor2.service /var/tmp/torrc.3 /var/tmp/tor3 /etc/systemd/system/tor3.service /var/tmp/torrc.4 /var/tmp/tor4 /etc/systemd/system/tor4.service /var/tmp/torrc.5 /var/tmp/tor5 /etc/systemd/system/tor5.service /var/tmp/torrc.6 /var/tmp/tor6 /etc/systemd/system/tor6.service /var/tmp/torrc.7 /var/tmp/tor7 /etc/systemd/system/tor7.service /var/tmp/torrc.8 /var/tmp/tor8 /etc/systemd/system/tor8.service /var/tmp/torrc.9 /var/tmp/tor9 /etc/systemd/system/tor9.service

###*****Instruções manuais de como usar...
#echo "Commands for Tor Instances ";
#echo "To reload the systemd manager configuration, run:"
#echo "sudo systemctl daemon-reload"
#echo;

#echo "To start one tor instance, run:"
#echo "sudo systemctl start tor.service"
#echo "sudo systemctl start tor2.service"
#echo "sudo systemctl start tor3.service"
#echo "sudo systemctl start tor4.service"
#echo "sudo systemctl start tor5.service"
#echo "sudo systemctl start tor6.service"
#echo "etc..."
#echo;

#echo "To restart one tor instance, run:"
#echo "sudo systemctl restart tor.service"
#echo "sudo systemctl restart tor2.service"
#echo "sudo systemctl restart tor3.service"
#echo "sudo systemctl restart tor4.service"
#echo "sudo systemctl restart tor5.service"
#echo "sudo systemctl restart tor6.service"
#echo "etc..."
#echo;

#echo "To enable one tor instance to start on boot, run:"
#echo "sudo systemctl enable tor.service"
#echo "sudo systemctl enable tor2.service"
#echo "sudo systemctl enable tor3.service"
#echo "sudo systemctl enable tor4.service"
#echo "sudo systemctl enable tor5.service"
#echo "sudo systemctl enable tor6.service"
#echo "etc..."
#echo;

#echo "To check the status one tor instance, run:"
#echo "sudo systemctl status tor.service"
#echo "sudo systemctl status tor2.service"
#echo "sudo systemctl status tor3.service"
#echo "sudo systemctl status tor4.service"
#echo "sudo systemctl status tor5.service"
#echo "sudo systemctl status tor6.service"
#echo "etc..."
#echo;

#echo "To stop one tor instance, run:"
#echo "sudo systemctl stop tor.service"
#echo "sudo systemctl stop tor2.service"
#echo "sudo systemctl stop tor3.service"
#echo "sudo systemctl stop tor4.service"
#echo "sudo systemctl stop tor5.service"
#echo "sudo systemctl stop tor6.service"
#echo "etc..."
#echo;

#echo "To disable one tor instance from starting on boot, run:"
#echo "sudo systemctl disable tor.service"
#echo "sudo systemctl disable tor2.service"
#echo "sudo systemctl disable tor3.service"
#echo "sudo systemctl disable tor4.service"
#echo "sudo systemctl disable tor5.service"
#echo "sudo systemctl disable tor6.service"
#echo "etc..."
#echo;








