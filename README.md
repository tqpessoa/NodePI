# NodePI
NodePI Platform: Guidelines and Files for Installing and Configuring the SDN-Based Gateway and Firewall

NodePI platform is structured in layers and based on WSO2 reference architecture, minimizing deployment issues smart home solutions and separately treating the problems of interoperability and security. The data of different devices are compatible with the web application, through the flows generated in the platform using Node.js and imported to the gateway.

Gateway: 

Step 1: Gateway Installation
1. In the terminal, type the command: # git clone  https://github.com/tqpessoa/NodePI.git
2. Change file permission: # chmod +x NodePI/gw_install.sh
3. Run the file: # sudo NodePI/./gw_install.sh 

Step 2: Node Installation
1. Change file permission: # chmod +x NodePI/node.sh
2. Copy the file: # cp NodePI/node.sh ~/.node-red/
3. Change directory: # cd ~/.node-red/
4. Run the file: # sudo ./node.sh 



