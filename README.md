

####################################################################################


HOW TO INSTALL: (ENGLISH)

Download the files to a folder of your choice on your Linux system. Then, navigate to that folder using the command:

cd <folder>

Give execution permission to the installation script with:

chmod +x install.sh

Next, run the script with superuser privileges:

sudo ./install.sh

You can type in terminal menu_tors and select the option you want or

you can execute the scripts simply by typing their names, as everything will be copied to the /bin directory.

##########################################################################################

After run menu_tors ...

Instructions

What Each Command Does?

 3-tors #Creates service files in /etc/systemd/system/
 
 3-tors-remove #Removes service files in /etc/systemd/system/ if you want to do maintenance!

 ------------------------------------------------------------------------------------

 ------------------------------------------------------------------------------------
 

Tor Instance1

 restartor1 #Starts or restarts instance 1 of Tor for 127.0.0.1 9050
 
 statustor1 #Checks the status of instance 1 of Tor
 
 stoptor1 #Stops instance 1 of Tor
 
 bridgestor1on #Adds an obfs4 bridge to instance 1 of Tor
 
 bridgestor1.2on #Adds two obfs4 bridges to instance 1 of Tor
 
 bridgestor1off #Removes all bridges from instance 1 of Tor. /etc/tor/torrc will be as default!

 ------------------------------------------------------------------------------------

 ------------------------------------------------------------------------------------
 

Tor Instance2

 restartor2 #Starts or restarts instance 2 of Tor for 127.0.0.2 9060
 
 statustor2 #Checks the status of instance 2 of Tor
 
 stoptor2 #Stops instance 2 of Tor
 
 bridgestor2on #Adds an obfs4 bridge to instance 2 of Tor
 
 bridgestor2.2on #Adds two obfs4 bridges to instance 2 of Tor
 
 bridgestor2off #Removes all bridges from instance 2 of Tor

 ------------------------------------------------------------------------------------

 ------------------------------------------------------------------------------------
 

Tor Instance3

 restartor3 #Starts or restarts instance 3 of Tor for 127.0.0.3 9062
 
 statustor3 #Checks the status of instance 3 of Tor
 
 stoptor3 #Stops instance 3 of Tor
 
 bridgestor3on #Adds an obfs4 bridge to instance 3 of Tor
 
 bridgestor3.3on #Adds two obfs4 bridges to instance 3 of Tor
 
 bridgestor3off #Removes all bridges from instance 3 of Tor

 ------------------------------------------------------------------------------------

 ------------------------------------------------------------------------------------

Tor Instance4

 restartor4 #Starts or restarts instance 4 of Tor for 127.0.0.4 9064
 
 statustor4 #Checks the status of instance 4 of Tor
 
 stoptor4 #Stops instance 4 of Tor
 
 bridgestor4on #Adds an obfs4 bridge to instance 4 of Tor
 
 bridgestor4.4on #Adds two obfs4 bridges to instance 4 of Tor
 
 bridgestor4off #Removes all bridges from instance 4 of Tor

 ------------------------------------------------------------------------------------

 ------------------------------------------------------------------------------------
 

Creating proxychains4 .conf files in your ~/Download and /etc

proxychains_3tors #Creates 3 .conf files, each for a different instance in /etc and ~/Downloads for all users!

proxychains-examples #Shows example commands to be executed with the created proxychains4.conf files for each instance!

Conf files for proxychains created...

proxychains4.2.conf #for Tor instance 2 for 127.0.0.1 9060

proxychains4.3.conf #for Tor instance 3 for 127.0.0.1 9062

proxychains4.4.conf #for Tor instance 4 for 127.0.0.1 9064

/etc/proxychains4.conf #for Tor instance 1 that by default runs on 127.0.0.1 9050


Conveniences and maintenance

checkbridges #Checks if the bridges are connecting and working

------------------------------------------------------------------------------------

------------------------------------------------------------------------------------


############################################################################################

Doe monero para nos ajudar: 87JGuuwXzoMGwQAcSD7cvS7D7iacPpN2f5bVqETbUvCgdEmrPZa12gh5DSiKKRgdU7c5n5x1UvZLj8PQ7AAJSso5CQxgjak

Página oficial de segurança digital:

https://traderprofissional.com.br/seguranca-digital.aspx

Vídeo tutorial youtube: em construção...









