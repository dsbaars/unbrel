RED=`tput setaf 1`
GREEN=`tput setaf 2`
NC=`tput sgr0`

apps=(app-bitcoin-p2p app-bitcoin-rpc app-lightning-grpc app-lightning-rest)
# In un-brel these apps do not use tor
#no_tor=(app-lightning-shell app-lndg app-thunderhub)

for app in ${apps[@]} ; do
  FILE=$(find ~/umbrel/tor/data/${app} -name 'hostname' | sort)
  APPNAME=$(echo ${FILE} | cut -d/ -f 7-7)
  HOSTNAME=$(cat ${FILE})
  printf "%-40s" ${RED}${APPNAME}
  printf "%s" ${GREEN}${HOSTNAME}
  printf "${NC}\n"
done