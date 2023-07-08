### Find subnet mask for a network of 500 devices
* 2^n-2 = 500
* search for the nearest value in 2 power table.2^9 = 512
* 2^n-2 ~= 2^n
* n=9
* N=32-9 = 23
* write 23 ones and remaining zeros
* 11111111.11111111.11111110.00000000
* All ones is 255,all zeros is zero and if there is a combination of ones and zeros search in binary to decimal converter.
* Subnet Mask= 255.255.254.0
#### For 8 devices
2^n -2=8 = 2^3-2=6
* But the value will be 6,we loose 1 ip address for network id and 1 for broadcast id.So n is taken as 4.
* 2^n =10 .>> 2^4=16
* n= 4
* N=32-4=28
* 11111111.11111111.11111111.11110000
* 255.255.255.240
#### Ip is expressed as x.x.x.x/N
* N= Network id        N=1
* n= host id           n=0       = 32-N 
### 192.168.0.0/24
* n= 32-N = 32-24=8
* write the subnet maskfor the above ip address
* SM= 11111111.11111111.11111111.00000000
* Network id is constant but host id gets changed.Here first three octects are constant and the forth octect is changed.
* so,192.168.0.x/24 

* Terms:

### IP ADDRESS
An Internet Protocol (IP) address is a unique numerical identifier for every device or network that connects to the internet. Typically assigned by an internet service provider (ISP), an IP address is an online device address used for communicating across the internet.

### NETWORK INTERFACE
A network interface is the point of interconnection between a computer and a private or public network. A network interface is generally a network interface card (NIC), but does not have to have a physical form.

### NETWORK
Computer networking refers to interconnected computing devices that can exchange data and share resources with each other

### SUBNET 
A subnet, or subnetwork, is a segmented piece of a larger network. More specifically, subnets are a logical partition of an IP network into multiple, smaller network segments. The Internet Protocol (IP) is the method for sending data from one computer to another over the internet.

### ROUTER:
A router is a gateway that passes data between one or more local area networks (LANs). Routers use the Internet Protocol (IP) to send IP packets containing data and IP addresses of sending and destination devices located on separate local area networks. Routers reside between these LANs where the sending and receiving devices are connected.

### SWITCHING
Switching in IT and computer networking is the transfer of data packets, or blocks of data, through a network switch. Switches transfer data from source ports on devices such as computers to destination ports on devices such as routers.

### NAT
NAT stands for network address translation. It's a way to map multiple private addresses inside a local network to a public IP address before transferring the information onto the internet.

### VPN
A virtual private network, or VPN, is an encrypted connection over the Internet from a device to a network. The encrypted connection helps ensure that sensitive data is safely transmitted.

### Gateway 
A gateway is a data communication device that provides a remote network with connectivity to a host network.

### OSI Model
 The Open Systems Interconnection (OSI) model describes seven layers that computer systems use to communicate over a network. It was the first standard model for network communications.

### LOAD BALANCING
Load balancing refers to efficiently distributing incoming network traffic across a group of backend servers, also known as a server farm or server pool.

### DNS
DNS, or the Domain Name System, translates human readable domain names (for example, www.amazon.com) to machine readable IP addresses (for example, 192.0.2.44).

### LEASED LINES 
A leased line is an allocated circuit between two points of communication.Basically, leased lines are used in all places that require an uninterrupted Internet connection for collaboration and communication activities.

### CoLO 
A leased line is an allocated circuit between two points of communication. The leased lines are used by corporate offices, businesses, companies, internet cafes, and so on. Basically, leased lines are used in all places that require an uninterrupted Internet connection for collaboration and communication activities.

### public and private networks
Private IP address of a system is the IP address that is used to communicate within the same network. Using private IP data or information can be sent or received within the same network. Public IP address of a system is the IP address that is used to communicate outside the network.

### CIDR
Classless Inter-Domain Routing (CIDR) is an IP address allocation method that improves data routing efficiency on the internet. Every machine, server, and end-user device that connects to the internet has a unique number, called an IP address, associated with it.
* The default CIDR range is 172.31.0.0/16 .

### SUBNET
A subnet mask is a 32-bit number created by setting host bits to all 0s and setting network bits to all 1s. In this way, the subnet mask separates the IP address into the network and host addresses. The “255” address is always assigned to a broadcast address, and the “0” address is always assigned to a network address.

### ELASTIC IP
An Elastic IP address is a static, public IPv4 address that you can allocate to your AWS account. You can associate an Elastic IP address with any instance or network interface for any VPC in your account.

### VPC PEERING
VPC peering is a networking connection between two VPCs that enables you to route traffic between them privately. This allows you to share resources between VPCs without exposing them to the public internet.

### NACL
A Network Access Control List (NACL) is an optional layer of security for your VPC that acts as a firewall for controlling traffic in and out of one or more subnets. NACLs are stateless, meaning that responses to allowed inbound traffic are subject to the rules for outbound traffic and vice versa.

### DHCP
Dynamic Host Configuration Protocol (DHCP) is a network protocol that automatically assigns IP addresses and other network configuration settings to devices on a network. DHCP simplifies network administration because it eliminates the need for an administrator to manually assign IP addresses to every device on a network.

### END POINTS
In networking, an endpoint refers to a device or application that is connected to a network. Endpoints can include computers, servers, mobile devices, printers, and other network-connected devices. They can be configured to communicate with other endpoints on the network using specific protocols and ports.

### AUTOSCALING
Auto Scaling is a feature of Amazon Web Services (AWS) that automatically adjusts the capacity of your compute resources based on demand. This feature allows you to automatically scale the number of instances in your application or service based on traffic levels, ensuring that you have enough resources to handle any spikes in traffic.

### ROUTE 53
Amazon Route 53 is a scalable and highly available Domain Name System (DNS) service provided by Amazon Web Services (AWS). It is designed to give developers and businesses an easy way to manage domain names and perform DNS queries. Route 53 can be used to route users to Internet applications by translating human-readable domain names into IP addresses that computers use to identify each other on the Internet. It can also be used to route traffic within an AWS infrastructure.

### BASTION
In computer networking, a bastion host is a special-purpose computer that is designed to provide secure access to a network from an external network, such as the Internet. It is typically placed on the network's perimeter and is configured to be the only entry point into the network from the outside. The bastion host is hardened and secured to prevent unauthorized access and is often used to provide secure remote access to other internal resources, such as servers or applications. The term "bastion" refers to a fortified structure that is used to defend against attacks.

### SSL
An SSL (Secure Sockets Layer) certificate is a digital certificate that is used to secure communication between a client and a server. It is used to encrypt data that is transmitted between the two, ensuring that it cannot be intercepted or read by anyone else. SSL certificates are used to secure websites, email servers, and other network services that require secure communication. They are issued by trusted third-party certificate authorities and contain information about the website or service that they are securing, such as the domain name, the company name, and the certificate's expiration date.

### EGRESS-ONLY INTERNET GATEWAY
An egress-only internet gateway is a type of gateway that is used to provide IPv6-only instances in a VPC with access to the Internet. It is used to allow outbound communication from instances in a private subnet to the Internet, while preventing inbound communication from the Internet to those instances. Egress-only internet gateways are designed to be highly available and can be used with VPCs that have multiple subnets in different Availability Zones. They are used in conjunction with network address translation (NAT) instances or NAT gateways to provide Internet access to instances in a private subnet.

### FLOW LOGS
VPC flow logs are a feature provided by Amazon Web Services (AWS) that captures information about the IP traffic going to and from network interfaces in a VPC (Virtual Private Cloud). VPC flow logs help administrators troubleshoot connectivity issues, monitor network traffic, and optimize network performance. The logs capture information such as the source and destination IP addresses, the protocol used, the number of packets and bytes transferred, and the start and end times of the connections. The logs can be stored in Amazon S3 buckets, Amazon CloudWatch Logs, or both.

### OSI LAYERS

* APPLICATION LAYER
* PRESENTATION LAYER
* SESSION LAYER
* TRANSFER LAYER
* NETWORK LAYER
* DATA LAYER
* PHYSICAL LAYER

### private ip ranges:
Private network cidr ranges
* we can check cidr minimum and maximum ranges by "CIDR expander"

* 10.0.0.0/8:     10.0.0.0 to 10.255.255.255
* 172.16.0.0/12:  172.16.0.0 to 172.31.255.255
* 192.168.0.0/16: 192.168.0.0 to 192.168.255.255

floors=8            each floor 100 devices
2^n= 800                  2^n=100
                          n=7,N=25
2^10,n=10,N=22

floor=11111111.11111111.11111111.10000000 
build=11111111.11111111.11111100.00000000
                        11111111.10000000  198.168.3.128/25
                        11111100.00000000  198.168.0.0/25
                        11111100.10000000  198.168.0.128/25
                        11111101.10000000  198.168.1.128/25
                        11111110.00000000  198.168.2.0/25
                        11111111.00000000  198.168.3.0/25
                        11111110.10000000  198.168.2.128/25
                        11111101.00000000  198.168.1.0/25
each floor=30,000
building=150000    floor
2^n= 150000         2^n=30000
n=18                n=15
N=14                N=17
building=11111111.11111100.00000000.00000000
floor=   11111111.11111111.10000000.00000000
--------------------------------------------
                        xx.x0000000.00000000  >> 192.168.0.0 /17
                        11.10000000.00000000  >> 192.171.128.0 /17
                        00.00000000.00000000  >> 192.168.0.0 /17
                        00.10000000.00000000  >> 192.168.0.0 /17
                        01.10000000.00000000  >> 192.168.0.0 /17
                        10.00000000.00000000  >> 192.168.0.0 /17
                        11.00000000.00000000  >> 192.171.0.0 /17
                        10.10000000.00000000  >> 192.168.0.0 /17
                        01.00000000.00000000  >> 192.168.0.0 /17
198.162.0.0/16
n=4
N=28
11111111.11111111.11111111.11110000
192.168.0.240/16


500 devices
2^n -2 ~= 500
2^9= 500
n=9
N= 32-9
 = 23
 11111111.11111111.11111110.00000000
 255.255.254.0

5000 devices
 2^13 ~=5000
 n=13
 N=19
 11111111.11111111.11100000.00000000
 255.255.224.0

 8 devices   16
 n=3         n=4
 N=29        N=28
             11111111.11111111.11111111.11110000
             255.255.255.240

private ip ranges
10.0.0.0/8
N=8
n=24
* 10.x.x.x >> 10.0.0.0/8  to 10.255.255.255/8
11111111.00000000.00000000.00000000

192.168.0.0/24
N=24,n=8
* ip= 192.168.0.x >> 192.168.0.0 to 192.168.0.255
11111111.11111111.11111111.00000000


192.168.0.0/24
N=24,n=8
11111111.11111111.11111111.00000000
192.168.0.x >> 192.168.0.0  to 192.168.0.255

172.16.0.0/12
N=12,n= 20
11111111.11110000.00000000.00000000
172.16+x.0.0 >> 172.16.0.0 to 172.16+15.255.255
                172.16.0.0 to 172.31.255.255


172.16.0.0/26
N= 26,n= 6
11111111.11111111.11111111.11000000
172.16.0.x   172.16.0.0  >> 172.16.0.63/26


172.16.0.0/12

N=12
n=20
11111111.11110000.00000000.00000000
172.16+0.0.0/12  >> 172.16+15.0.0/12
172.16.0.0/12   >> 172.31.255.255/12

