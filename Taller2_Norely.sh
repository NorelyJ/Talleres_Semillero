#!/bin/bash
clear
#Eliminar variables

unset folder
unset MenuAprovi
unset MenuDocker
unset MenuRanche
unset username
unset token
unset repo
unset Namehost
unset NameDir
unset Port
unset Range
unset opcion
#set variables
user=$(whoami)

opcion=0
#set an infinite loop
while [ $opcion -ne 9 ];
do
       clear
       #display menu
       
       echo "---------------------------------"
       echo "-Nombre del servidor: [$(hostname)]             -"
       echo "-Aprovisionar el Servidor                       -"
       echo " 1. Cambiar nombre Servidor                     -"
       echo " 2. Cambiar Partición Discos                    -"
       echo " 3. Cambiar IP Servidor                         -"
       echo " 4. Cambiar tabla de Host                       -"
       echo " 5. Agregar Permisos de Firewall                -"
       echo " 6. Editar DNS Servidor                         -" 
       echo " 7. Configurar proxy                            -"
       echo " 8. Configuración Git                           -"
       echo " 9.Instalación Docker                           -"
       echo " 10. Salir                                      -"
       echo "    Teclea una opción:"
       read opcion
       #get input from the user
       case $opcion in
               1)
                  read -p "Seleccione una opcion [1-100] " opcion
                  echo -e "\n-----------------------------------------------"
                  echo " Nombre Servidor Actual       :[$(hostname)] "   
                  read -p ">> Digite el NUEVO nombre del servidor:" NameHost   
                  echo -e "\n-----------------------------------------------"

                  sudo hostnamectl set-hostname $NameHost
                  echo "Verifique la variable ¨[ preserve_hostname: true ] en el archivo /etc/cloud/cloud.cfg" 

                  echo "-----------------------------------------------------------------"
                  preser=$(grep preserve_hostname /etc/cloud/cloud.cfg)
                  echo ">>Resultado /etc/cloud/cloud.cfg: [ >>$preser << ]"
                  echo ">>Nombre Servidor Actual: [$(hostname)]"

                  echo -e "\n---------Fin del Script..............-----------------------"               
                  read -p "Presione [Enter] para continuar...." readEnterKey
               ;;
               2) 
                  echo -e "\n-----------------------------------------------"
                  echo " Partición Actual       :[$(fdisk -l)] "   
                  read -p ">> Digite chmod +x fdisk -l:"  
                  echo "Tenga cuidado antes de utilizar el orden de escritura"
                  read "Ayuda :[$(help)] " 
                  read -p ">> Seleccione la NUEVA partición del servidor ingresando fdisk (direccion disco):"
                  echo -e "\n-----------------------------------------------"
                  echo -e "\n---------Fin del Script..............-----------------------"               
                  read -p "Presione [Enter] para continuar...." readEnterKey
               ;;
               3) 
                  echo -e "\n-----------------------------------------------"
                  echo " Configuración IP Servidor Actual       :[$(ifconfig)] " 
                  read -p ">> Digite IP NUEVA del servidor:" Ipn   
                  echo -e "\n-----------------------------------------------"
                  read -p ">> Digite la mascara de red:" mask

                  sudo ifconfig $red $Ipn netmask $mask
                  echo "Verifique la variable ¨[ preserve_hostname: true ] en el archivo /etc/cloud/cloud.cfg"

                  echo "-----------------------------------------------------------------"
                  preser=$(grep preserve_hostname /etc/cloud/cloud.cfg)
                  echo ">>Resultado /etc/cloud/cloud.cfg: [ >>$preser << ]"
                  echo ">>Nombre IP Servidor Actual: [$(hostname)]"
                  echo ""
                  echo "Cambio realizado"
                  echo ""
                  ip addr show
                  echo -e "\n---------Fin del Script..............-----------------------"               
                  read -p "Presione [Enter] para continuar...." readEnterKey
                 
               ;;
               4) 
                  echo -e "\n-----------------------------------------------"
                  echo " Cambio tabla de host"   
                  sudo nano /etc/hosts
                  echo -e "\n-----------------------------------------------"
                  echo "                                            "
                  echo "Tabla de host modificada"
                  cd 
                  cd /etc
                  cat hosts
                  echo -e "\n---------Fin del Script..............-----------------------"               
                  read -p "Presione [Enter] para continuar...." readEnterKey
               ;;
        
               5) 
                  clear
                  opcion=0
                  while :
                  do
                   echo "1. Habilitar servicio"
                   echo "2. Estado actual de firewall"
                   echo "3. Habilitar puerto TCP"
                   echo "4. Habilitar puerto UDP"
                   echo "5. Habilitar rango puerto TCP "
                   echo "6. Habilitar rango puerto UDP"
                   echo "7. Probar con curl"
                   echo "8. Salir"
                   read -p "Seleccione una opcion:" opcion
                   #get input from the user
                   case "$opcion" in
                                    
                               "1")     
                                    echo -e "\n-----------------------------------------------"
                                     sudo ufw enable
                                     echo ""
                                     ;;
                               "2")   
                                    echo -e "\n-----------------------------------------------"
                                    sudo ufw status   
                                    echo ""
                                    ;;
                               "3")   
                                    echo -e "\n-----------------------------------------------"
                                    sudo ufw allow 22/tcp
                                    echo ""
                                    ;;
                               "4")   
                                    echo -e "\n-----------------------------------------------"
                                    sudo ufw allow 22/udp
                                    echo ""
                                    ;;
                               "5")   
                                    echo -e "\n-----------------------------------------------"
                                    sudo ufw allow 30000:32767/tcp
                                    echo ""
                                    ;;             
                               "6")  
                                    echo -e "\n-----------------------------------------------"
                                    sudo ufw allow 30000:32767/udp
                                    echo ""
                                    ;;
                               "7")    
                                    read -p "Ingrese la IP: "IPp
                                    echo ""
                                    read -p "Ingrese el puerto: " puertop
                                    echo ""
                                    curl -v telnet://$IPp:$puertop
                                    echo ""
                                    ;;
                                    esac
                  done
               ;;                     
               6)
                  clear
                  opcion=0
                  while :
                  do
                   echo "Configuración DNS"                 
                   echo "1. Instalar"
                   echo "2. Habilitar servicio"
                   echo "3. Detener servicio"
                   echo "4. Estado del servicio"
                   echo "5. Reiniciar servicio"
                   echo "6. Editar"
                   echo "7. Salir"
                   echo " Selecciona una opcion"
                   read opcion
                   #get input from the user
                   case "$opcion" in
                                    
                               "1")   
                                    
                                    echo -e "\n-----------------------------------------------"
                                    sudo apt install resolvconf
                                    echo ""
                                    ;;
                               "2")   
                                    
                                    echo -e "\n-----------------------------------------------"
                                    sudo service resolvconf start   
                                    echo ""
                                    ;;
                               "3")   
                                    
                                    echo -e "\n-----------------------------------------------"
                                    sudo service resolvconf stop
                                    echo ""
                                    ;;
                               "4")   
                                    
                                    echo -e "\n-----------------------------------------------"
                                    sudo service resolvconf status
                                    echo ""
                                    ;;
                               "5")   
                                    
                                    echo -e "\n-----------------------------------------------"
                                    sudo service resolvconf restart
                                    echo ""
                                    ;;             
                               "6")  
                                    sudo nano /etc/resolv.conf
                                    echo ""
                                    echo -e "\n-----------------------------------------------"
                                    cat /etc/resolv.conf
                                    echo ""
                                    ;;
                                    esac
		            done
               ;;       
               7)    
                  echo "Configuración del proxy"
                  echo 'PROXY_ENABLED="yes"'
                  echo 'HTTP_PROXY="ip:puerto"'
                  echo 'HTTPS_PROXY="ip:puerto"'
                  echo 'FTP_PROXY="ip:puerto"'
                  echo 'NO_PROXY= "localhost,127.0.0.1"'
                  echo -e "\n------------------------"
                  read -p "Desea editar la configuracion PROXY (y/n)?" answer
                  if [[$answer=~ ^[Yy]$ ]]
                        then 
                             cd
                             sudo --sh -c 'echo #Configuracion proxy>> .bashrc'
                             sudo --sh -c 'echo PROXY_ENABLED="yes">> .bashrc'
                             read -p "Ingrese el HTTP_PROXY: (ip:puerto) " httpProxy
                             sudo --sh -c "echo HTTP_PROXY="$httpProxy" >> .bashrc"
                             read -p "Ingrese el HTTPS_PROXY: (ip:puerto) " httpsProxy
                             sudo --sh -c "echo HTTPS_PROXY="$httpsProxy" >> .bashrc"
                             read -p "Ingrese el FTP_PROXY: (ip:puerto) " ftpProxy
                             sudo --sh -c "echo FTP_PROXY="$ftpProxy" >> .bashrc"
                             read -p "Ingrese el NO_PROXY: (localhost,IP,) " noProxy
                             sudo --sh -c "echo NO_PROXY="$noProxy" >> .bashrc"
                             echo -e "\n  "
                             echo "PROXY configurado correctamente"
                             echo -e "\n  "
                             echo "Actual"
                             echo -e "---------------------------------------------"
                             echo -e "\n"
                             cat .bashrc
                  elif [[ $answer =~ ^[Nn]$ ]]           
                       then
                           main
                  else
                       echo "Opcion no valida"
                  fi
                  echo -e "\n-----Fin del Script----------------------------------"
                  read -p "Press [Enter] key to continue..." readEnterKey              
                  ;;

               8)   

                  # set variables
                    #username=$1
                    #token=$2
                    #repo=$3
                    comment=$1
                    rama=$2

                  #Esta sección se utiliza para variables globales de git
                    git config --global user.email "norelyj237@gmail.com"
                    git config --global user.name "NorelyJ"
                    git config --global core.autocrlf false

                  # Ejecucion

                    cd /home/repositorios/Aprovisionamiento_Linux
                    git clone https://$username:$token@github.com/$repo

                    if [[ $clone =~ ^[Yy]$ ]]
                    then
                       git clone https://$username:$token@github.com/$repo
                    fi
     
                    echo "comment [$comment] | rama [$rama]"
                    echo "inicia carga en git"
     
                    git status
                    read -p "Press [Enter] key to continue..." readEnterKey

                    git add .
                    read -p "Press [Enter] key to continue..." readEnterKey

                    git commit -m "$comment"
                    read -p "Press [Enter] key to continue..." readEnterKey

                    git push origin $rama

                  echo -e "\n----- Fin del Script -----------------------------------------------------------"
                  read -p "Press [Enter] key to continue..." readEnterKey
               ;;
               9)  clear
                   #Eliminar Variables
                    ./unset.sh
                   # set variables
                       application="docker"
                       compose="compose/$application"
                       fileCompose="docker-compose"

                   # set an infinite loop
                   # Ejecucion
                   while :
                   do
                         clear
                         #display menu
                         echo "- ------------------------------------------------------------------------- -"
                         echo "- Server Name: [$(hostname)]                                                 "
                         echo "- ------------------------------------------------------------------------- -"
                         echo "- MENU: Menu $application                                                   -"
                         echo "- ------------------------------------------------------------------------- -"
                         echo "- 1. Instalar o Iniciar $application                                        -"
                         echo "- 2. Detener Servicio $application                                          -"
                         echo "- 3. Eliminar Imagenes                                                      -"
                         echo "- 4. Estado Servicios Docker                                                -"
                         echo "- 5. Reiniciar Servicio Docker                                              -"
                         echo "- 6. Probar Puerto                                                          -"
                         echo "- 7. Los Servicios                                                          -"
                         echo "- 8. Iniciar docker bash                                                    -"

                         #get input from the user
                         read -p "Enter your choice [1-8]" choice

                         #get input from the user
                         case $choice in
                              1)
                                 #Ejecución
                                 echo "---------------------------------------------------------------------"
                                 echo "Inicia instalación docker CE                                         "
                                 echo "---------------------------------------------------------------------"
                                 echo "---------------------------------------------------------------------"
                                 echo "Inicia instalacion docker CE                                                 "
                                 echo "---------------------------------------------------------------------"
                                 read -p ">> Paso 1: Desea Instalar Docker (y/n)? " answer

                                 if [[ $answer =~ ^[Yy]$ ]]
                                    then
                                        cd ~/

                                        echo "-----------------------------------------------------------------------------"
                                        echo "Instalación Prerequisitios"
                                        echo "-----------------------------------------------------------------------------"
                                        sudo apt-get update -y
                                        sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
                                        curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - -y
                                        sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable" -y
                                        sudo apt update -y
                                        apt-cache policy docker-ce -y
                                        sudo apt install docker-ce -y

                                        echo "-----------------------------------------------------------------------------"
                                        echo "Verificar Version"
                                        echo "-----------------------------------------------------------------------------"
                                        docker --version

                                        echo "-----------------------------------------------------------------------------"
                                        echo "Iniciar docker con el sistema"
                                        echo "-----------------------------------------------------------------------------"
                                        sudo systemctl enable docker
                                        sudo systemctl start docker
                    
                                        echo "-----------------------------------------------------------------------------"
                                        echo "Crear usuario de Docker"
                                        echo "-----------------------------------------------------------------------------"
                                        sudo adduser docker

                    
                                        echo "-----------------------------------------------------------------------------"
                                        echo "Agregar permisos usuario ubunutu al grupo Docker"
                                        echo "-----------------------------------------------------------------------------"
                                        user=$(whoami)
                                        sudo usermod -G docker $user
                                        grep $user /etc/group

                                        echo "-----------------------------------------------------------------------------"
                                        echo "folder docker"
                                        echo "-----------------------------------------------------------------------------"
                                        folder=/Images
                                        sudo mkdir -p $folder/$user
                                        sudo mkdir -p $folder/$user/Data
                                        sudo chown -R $user:$user $folder/$user
                                        sudo chown -R $user:$user $folder/$user/Data
                                        ls -ltr $folder/

                                        read -p "Press [Enter] key to continue..." readEnterKey

                                        echo "-----------------------------------------------------------------------------"
                                        echo "Inicia instalacion Docker Compose                                            "
                                        echo "-----------------------------------------------------------------------------"

                                       sudo mkdir -p /usr/local/bin
                                       sudo curl -L "https://github.com/docker/compose/releases/download/1.26.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
 
                                       sudo chmod +x /usr/local/bin/docker-compose

                                       echo "-----------------------------------------------------------------------------"
                                       echo "Verificar docker-compose"
                                       echo "-----------------------------------------------------------------------------"
                                       sudo docker-compose --version

                                       read -p "Press [Enter] key to continue..." readEnterKey


                                       echo "-----------------------------------------------------------------------------"
                                       echo "Fin instalacion Docker                                                       "
                                       echo "-----------------------------------------------------------------------------"

                                       read -p "Press [Enter] key to continue..." readEnterKey
                                  fi
                                       echo "-----------------------------------------------------------------------------"
                                       echo "Sin Ajustes!!"
                                       echo "-----------------------------------------------------------------------------"
                
                                       echo ---------- Fin del Script ----------------------------
                                       read -p "Press [Enter] key to continue..." readEnterKey

                                   ;;
                         esac
                    done        
               ;;


               *)
                   echo "Error: Invalid option..."	
                   echo -e "\n-----------------------------------------------"
                   read -p "Press [Enter] key to continue..." readEnterKey
               ;;
              
        esac
        sleep 2
        clear
done
