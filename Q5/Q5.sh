YELLOW='\033[1;33m'
LB='\033[1;34m'
NC='\033[0m'
echo -e " ${YELLOW}OS and the version used${NC} : " $(uname -mrs)                       #to print os and version
echo  $(lsb_release -r)         #to print release number
echo -e " ${YELLOW}Kernel Version${NC} : " $(uname -v)                  #to print kernel version
echo -e " ${YELLOW}All available shells${NC} :  " $(cat /etc/shells)    

echo -e "${YELLOW}CPU information${NC} : "
echo -e "${LB}Processor Type and Speed ${NC} :"  $(uname -p)
echo -e "" $(inxi -C) 
echo -e "${YELLOW}Memory Information${NC} :" $(cat /proc/meminfo)
echo -e "${YELLOW}Hard Disk Information${NC} :" $(inxi -D)

echo -e "${YELLOW}File System ${NC} :" $(df -T)

