# NodePI
NodePI Platform: Guidelines and Files for Installing and Configuring the SDN-Based Gateway and Firewall

NodePI platform is structured in layers and based on WSO2 reference architecture, minimizing deployment issues smart home solutions and separately treating the problems of interoperability and security. The data of different devices are compatible with the web application, through the flows generated in the platform using Node.js and imported to the gateway.

Gateway: 

Step 1: Gateway Installation
1. Install git: # sudo apt-get install -y git
2. In the terminal, type the command: # git clone  https://github.com/tqpessoa/NodePI.git
3. Change file permission: # chmod +x NodePI/gw_install.sh
4. Run the file: # sudo NodePI/./gw_install.sh 

Step 2: Node Installation
1. Change file permission: # chmod +x NodePI/node.sh
2. Copy the file: # cp NodePI/node.sh ~/.node-red/
3. Change directory: # cd ~/.node-red/
4. Run the file: # sudo ./node.sh


Processing limitations and device heterogeneity accentuate security vulnerabilities in smart home scenarios. The proposed firewall monitors and blocks access to devices and protocols from networks that are not allowed.

Firewall:

Step 3: Pox Controller Installation
1. Repeat step 1
2. Change directory: # cd ~
3. Change file permission: # chmod +x NodePI/controller.sh
4. Run the file: # sudo NodePI/./controller.sh
5. Copy the files: # cp ~/NodePI/l2_mac.py ~/pox/ext/ #cp ~/NodePI/block_port.py ~/pox/ext/
6. Copy device and service files: # cp ~/NodePI/port.csv ~/pox/pox/misc/ #cp ~/NodePI/csvfirewall.csv ~/pox/pox/misc/
7. Change file permission: # chmod  666 ~/pox/pox/misc/port.csv  # chmod  666 ~/pox/pox/misc/cavfirewall.csv
8. Register the devices on the platform and import the JSON code
9. Start controller: #  ~/pox/./pox.py l2_mac openflow.discovery log.level --DEBUG samples.pretty_log host_tracker info.packet_dump block_port
