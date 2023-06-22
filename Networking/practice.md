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
##### for 8 devices
2^n -2=8 = 2^3-2=6
* But the value will be 6,we loose 1 ip address for network id and 1 for broadcast id.So n is taken as 4. 2^4=16
* n=4
* N=32-4 = 28
* 11111111.11111111.11111111.11110000
* 255.255.255.240

