#!/bin/bash
###########args###########
apps="curl"
osName="$(uname -s)"
osArch="$(uname -m)"
dockerComposeVersion="v2.2.3"
dockerComposeGithub="https://github.com/docker/compose/releases/download/${dockerComposeVersion}/docker-compose-${osName}-${osArch}"
#########################
#this is the auto-install routine
if ! dpkg -s ${apps} >/dev/null 2>&1; then
  clear
  echo "--------------------------------------------------------------------------"
  echo "             Welcome to the Mr. Phil1 docker-compose-Script"
  echo "--------------------------------------------------------------------------"
  echo " Es wird nun ein System-Update gemacht."
  echo "--------------------------------------------------------------------------"
  sudo apt-get update -y >/dev/null
  echo "--------------------------------------------------------------------------"
  echo " Nun wird Curl installiert."
  echo "--------------------------------------------------------------------------"
  sudo apt-get install ${apps} -y >/dev/null
fi

clear
echo "--------------------------------------------------------------------------"
echo "              Welcome to the Mr. Phil1 docker-compose-Script"
echo "--------------------------------------------------------------------------"
echo "  Info über Ihr System"
echo "  osName:   ${osName}"
echo "  osArch:   ${osArch}"
echo "--------------------------------------------------------------------------"
echo "  Es wird nun die Version ${dockerComposeVersion} von Docker-Compose "
echo "  herutergeladen und ausführbar gemacht"
echo "--------------------------------------------------------------------------"
sudo curl -L ${dockerComposeGithub} -o /usr/local/bin/docker-compose_${dockerComposeVersion}
sudo ln -sf /usr/local/bin/docker-compose_${dockerComposeVersion} /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
wait 10
#echo "alias docker-compose=\"sudo docker-compose\"" >> ${HOME}/.bashrc
#clear && . ~/.bashrc
echo "--------------------------------------------------------------------------"
echo "  Und nun können Sie den Befehl docker-compose ohne "
echo "  sudo Rechte verwenden."
echo "--------------------------------------------------------------------------"
