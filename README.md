hashs sha256sum

135c8cdd5434fa91b4cebe2a6ad2b3ba4d2214b1c13dfdc19d6569845362850b  3-tors

b713ca32c6b25169965ec0191fd0f2aa1001dc4b38620204041dff54fa6326c2  3-tors-remove

e0360cfe73e80256a92911f8ddbdcd1c61cdcf4fb907f7f9b1b62b5ab53e6705  bridgestor1.2on

f92087ef444a26de40407d287a7dae2a92a603d220ee348240771f24f3a59f05  bridgestor1off

311a2691896fc91173532b8368fd80bb14af662a8eda1a712fa761c8cee80156  bridgestor1on

acc4d792f77bd2a190ab277217e48fb2509be108818dc3471f12fe3af0ec3ee4  bridgestor2.2on

d88c18a3194aa7f661f52ff0af7a20ef00160b5c9918d5567a5b87e869a46e9c  bridgestor2off

7e08ef6e7d89e182c8abc0aee07addfeb2848318fefa97641b9cfcc107d5abaf  bridgestor2on

7b80b415b2ed695d2059937e30332a553dd147f01a182a0f57fedf9dc2b0d771  bridgestor3.2on

749c7896b20a529da269dc392dd4fa7ad817959e1056d2dca8af7d326974be1d  bridgestor3off

81dba1757c475736cd21b820179e3b4d6eca03dad35fa43e78f37913516db40c  bridgestor3on

94efe7fe7df6603c9590db56ce416e58d72ac4087e971d2705e8533ddc6ad9ee  bridgestor4.2on

35bd59a356c532365ad4ee993049f2f65bf83982279a6e6b7fd04b5ea777e673  bridgestor4off

d6d815e3081ebb0af1a8fed7a8fd0b18841270d807d1a2222dc4be37a031e9b6  bridgestor4on

41498501b1db39bc244283b27b088fe950d621dcba09a7aea811a058a253ca50  install.sh

70f2022cea9451679a486215652e79f2eb6105ba5061ae1e0140034648fb15d7  menu_tors

5e540f6f199b438fed3d6eec6530f142287212f5987cd7790b7d1a2eb3678dbe  proxychains_3tors

153a21f0b8b26cbb613e57066adb9287039205058112ed3e709802759e2ad719  proxychains-exemples

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

COMO INSTALAR: (PORTUGUESE)

Baixe os arquivos para uma pasta de sua escolha no seu Linux. Em seguida, navegue até essa pasta usando o comando:


cd <pasta>


Dê permissão de execução ao script de instalação com:


chmod +x install.sh


E então execute o script com privilégios de superusuário:


sudo ./install.sh


Depois disso, você poderá executar os scripts simplesmente digitando o nome deles, pois tudo será copiado para o diretório /bin.


##########################################################################################

HOW TO INSTALL: (ENGLISH)

Download the files to a folder of your choice on your Linux system. Then, navigate to that folder using the command:

cd <folder>

Give execution permission to the installation script with:

chmod +x install.sh

Next, run the script with superuser privileges:

sudo ./install.sh

After that, you can execute the scripts simply by typing their names, as everything will be copied to the /bin directory.

##########################################################################################

O QUE CADA SCRIPT FAZ:

Três arquivos de serviços Tor foram criados. Para gerenciá-los, utilize os seguintes comandos:

**********************************************

Parar um serviço:

stoptor2 — Para parar o Tor2.

stoptor3 — Para parar o Tor3.

stoptor4 — Para parar o Tor4.

**********************************************

Reiniciar um serviço:


restartor2 — Para iniciar ou reiniciar o Tor2.

restartor3 — Para iniciar ou reiniciar o Tor3.

restartor4 — Para iniciar ou reiniciar o Tor4.

**********************************************

Verificar status:


statustor2 — Para verificar o status do Tor2.

statustor3 — Para verificar o status do Tor3.

statustor4 — Para verificar o status do Tor4.

**********************************************

Adicionar uma bridge (obfs4):

bridgestor2on — Para Tor2.

bridgestor3on — Para Tor3.

bridgestor4on — Para Tor4.


**********************************************


Adicionar duas bridges (obfs4):

bridgestor2.2on — Para Tor2.

bridgestor3.2on — Para Tor3.

bridgestor4.2on — Para Tor4.

**********************************************

Remover bridges:


bridgestor2off — Para Tor2.

bridgestor3off — Para Tor3.

bridgestor4off — Para Tor4.

Esses comandos garantem uma gestão eficiente dos serviços Tor e suas configurações.


**********************************************

#################################################################################################

(ENGLISH)

### Commands for Managing Tor Services

Three Tor service files have been created. To manage them, use the following commands:

**********************************************

**Stop a service:**

- `stoptor2` — To stop Tor2.

- `stoptor3` — To stop Tor3.

**********************************************

**Restart a service:**

- `restartor2` — To start or restart Tor2.

- `restartor3` — To start or restart Tor3.

**********************************************

**Check status:**

- `statustor2` — To check the status of Tor2.

- `statustor3` — To check the status of Tor3.

**********************************************

**Add a bridge (obfs4):**

- `bridgestor2on` — For Tor2.

- `bridgestor3on` — For Tor3.

**********************************************

**Add two bridges (obfs4):**

- `bridgestor2.2on` — For Tor2.

- `bridgestor3.2on` — For Tor3.

**********************************************

**Remove bridges:**

- `bridgestor2off` — For Tor2.

- `bridgestor3off` — For Tor3.

These commands ensure efficient management of Tor services and their configurations.

**********************************************

#######################################################################################

Exemple of configuration for browsers or proxychains...

To configure your proxy settings for Tor, set the proxy as socks5 127.0.0.1 9060. For Proxychains or Proxychains4, modify the configuration files located at /etc/proxychains.conf, /etc/proxychains4.conf, or any specific .conf file with the following settings:


dynamic_chain

proxy_dns

tcp_read_time_out 15000

tcp_connect_time_out 8000

[ProxyList]

socks4 127.0.0.1 9060

socks5 127.0.0.1 9060

Ensure that these configurations are properly implemented to facilitate effective routing through the Tor network.






