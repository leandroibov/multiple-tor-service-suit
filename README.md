hashs sha256sum

bdaf0fa31115b6e0e59c5d25b2c9704f81e90274537a0fe1d6eacea1f2647e70  3-tors

b713ca32c6b25169965ec0191fd0f2aa1001dc4b38620204041dff54fa6326c2  3-tors-remove

aa98b2298e185a1c8c3b482a5abc74ad36f980e01aff104d0f5f2bdcff389ee9  bridgestor1.2on

2ce47f1c49d4604d239d0d15e9cbb15b84b096054332419ff24e289e93c2c003  bridgestor1off

e5fa0b673b51995b9fda7f0797acd72d4a786ef077b5cee1b9d95b3dd4811c6d  bridgestor1on

acc4d792f77bd2a190ab277217e48fb2509be108818dc3471f12fe3af0ec3ee4  bridgestor2.2on

d88c18a3194aa7f661f52ff0af7a20ef00160b5c9918d5567a5b87e869a46e9c  bridgestor2off

7e08ef6e7d89e182c8abc0aee07addfeb2848318fefa97641b9cfcc107d5abaf  bridgestor2on

7b80b415b2ed695d2059937e30332a553dd147f01a182a0f57fedf9dc2b0d771  bridgestor3.2on

749c7896b20a529da269dc392dd4fa7ad817959e1056d2dca8af7d326974be1d  bridgestor3off

81dba1757c475736cd21b820179e3b4d6eca03dad35fa43e78f37913516db40c  bridgestor3on

94efe7fe7df6603c9590db56ce416e58d72ac4087e971d2705e8533ddc6ad9ee  bridgestor4.2on

35bd59a356c532365ad4ee993049f2f65bf83982279a6e6b7fd04b5ea777e673  bridgestor4off

d6d815e3081ebb0af1a8fed7a8fd0b18841270d807d1a2222dc4be37a031e9b6  bridgestor4on

318a6cb03dabd6c2639cf2dbb5875eb921239d61cf55eb3d2a292c28f46cf983  checkbridges

88593532b4e1a3ec8992beb9d91e7a26d85fb9820ae7b5cf79da258b30baa7db  install.sh

b71e1ab55757f02218899e65b2760eb543c285db9d2c7caac8e0de1c55ed2e17  Instructions

2b87113a6505f4baff5628e92e8b6eb2618367d57a6f69c6690570660b9a91f5  menu_tors

5e540f6f199b438fed3d6eec6530f142287212f5987cd7790b7d1a2eb3678dbe  proxychains_3tors

33c5b7d003868acb787294fbea17d8953b28dc58e83f6cdf8823cf94e5775d04  proxychains-exemples

8671960b962cda912950e83d0b91d905e72f9af2a7b7a21fbf6edc4512066c0a  restartor1

73e233ce26e98d6ef963501a85c32f512351b84223c1bb457558cc075f98a64f  restartor2

b40606064c8432da2301a1a1f96faeb3778e40806b3fcd58c57608f519f9d7e9  restartor3

45457a3d059ab348aa8b10c1726b3dd3921396b5b0c7be929998f1523bcab674  restartor4

51fbd74f2e09db99df1f52effb04315dea3c93c58e5037eefab5315d85544ede  statustor1

b092225cbb079dd1b7d57d0de81a16a94e6a6da1dbf039eb13cbda7fda8c73db  statustor2

985f6947fe3202002dcfdcd7200ada14793fdebc34b281f1b4fd8792bfc57a0d  statustor3

583b689ee44367ea4db469a58e7461b0196691a08933280ad399d7bf0a4c6907  statustor4

ded9d3d3407879df7fd2f7944c96872cc0c89eed461b57f6228f93b4c978f8ba  stoptor1

27f1ccb1a43335978c579d8c095e762815b4bbdce53ec63bef11fea5f299ed69  stoptor2

8a3b6683928fd883d199530882ec5fb8ab589e17fa45ace9bafd4f9cb5233676  stoptor3

921344ad55f55a6a0c54c9d7fcf59baf8d85af1e4ed610757e58fd7c37ecbdb1  stoptor4

e78fd2481430f4e9be849fa4b44167d935744700c8e1ca6d5c93c2572558ea09  uninstall.sh


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
1) 3-tors #Creates service files in /etc/systemd/system/
2) 3-tors-remove #Removes service files in /etc/systemd/system/ if you want to do maintenance!

Tor Instance1
3) restartor1 #Starts or restarts instance 1 of Tor for 127.0.0.1 9050
4) statustor1 #Checks the status of instance 1 of Tor
5) stoptor1 #Stops instance 1 of Tor
6) bridgestor1on #Adds an obfs4 bridge to instance 1 of Tor
7) bridgestor1.2on #Adds two obfs4 bridges to instance 1 of Tor
8) bridgestor1off #Removes all bridges from instance 1 of Tor. /etc/tor/torrc will be as default!

Tor Instance2
3) restartor2 #Starts or restarts instance 2 of Tor for 127.0.0.2 9060
4) statustor2 #Checks the status of instance 2 of Tor
5) stoptor2 #Stops instance 2 of Tor
6) bridgestor2on #Adds an obfs4 bridge to instance 2 of Tor
7) bridgestor2.2on #Adds two obfs4 bridges to instance 2 of Tor
8) bridgestor2off #Removes all bridges from instance 2 of Tor

Tor Instance3
3) restartor3 #Starts or restarts instance 3 of Tor for 127.0.0.3 9062
4) statustor3 #Checks the status of instance 3 of Tor
5) stoptor3 #Stops instance 3 of Tor
6) bridgestor3on #Adds an obfs4 bridge to instance 3 of Tor
7) bridgestor3.3on #Adds two obfs4 bridges to instance 3 of Tor
8) bridgestor3off #Removes all bridges from instance 3 of Tor

Tor Instance4
4) restartor4 #Starts or restarts instance 4 of Tor for 127.0.0.4 9064
4) statustor4 #Checks the status of instance 4 of Tor
5) stoptor4 #Stops instance 4 of Tor
6) bridgestor4on #Adds an obfs4 bridge to instance 4 of Tor
7) bridgestor4.4on #Adds two obfs4 bridges to instance 4 of Tor
8) bridgestor4off #Removes all bridges from instance 4 of Tor

Creating proxychains4 .conf files in your ~/Download and /etc
27) proxychains_3tors #Creates 3 .conf files, each for a different instance in /etc and ~/Downloads for all users!
28) proxychains-examples #Shows example commands to be executed with the created proxychains4.conf files for each instance!
Conf files for proxychains created...
proxychains4.2.conf #for Tor instance 2 for 127.0.0.1 9060
proxychains4.3.conf #for Tor instance 3 for 127.0.0.1 9062
proxychains4.4.conf #for Tor instance 4 for 127.0.0.1 9064
/etc/proxychains4.conf #for Tor instance 1 that by default runs on 127.0.0.1 9050

Conveniences and maintenance
30) checkbridges #Checks if the bridges are connecting and working
0) Exit

------------------------------------------------------------------------------------


############################################################################################

Doe monero para nos ajudar: 87JGuuwXzoMGwQAcSD7cvS7D7iacPpN2f5bVqETbUvCgdEmrPZa12gh5DSiKKRgdU7c5n5x1UvZLj8PQ7AAJSso5CQxgjak

Página oficial de segurança digital:

https://traderprofissional.com.br/seguranca-digital.aspx

Vídeo tutorial youtube: em construção...









