#!/bin/bash
clear
#Eliminar variables
unset folder
#set variables
user=$(whoami)

opcion=0
#set an infinite loop
while [ $opcion -ne 8 ];
do
       clear
       #display menu
       
       echo "---------------------------------"
       echo "-Nombre del servidor: [$(hostname)]            -"
       echo "-Aprovisionar el Servidor                       -"
       echo " 1. Cambiar nombre Servidor                     -"
       echo " 2. Cambiar Partición Discos                    -"
       echo " 3. Cambiar IP Servidor                         -"
       echo " 4. Cambiar tabla de Host                       -"
       echo " 5. Agregar Permisos de Firewall                -"
       echo " 6. Editar DNS Servidor                         -" 
       echo " 7. Configurar proxy                            -"
       echo " 8. Salir                                       -"
       echo "    Teclea una opción:"
       read opcion
       #get input from the user
       case $opcion in
               1)
                  read -p "Seleccione una opcion [1-8] " opcion
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
                                     ;;
                               "2")   
                                    echo -e "\n-----------------------------------------------"
                                    sudo afw status   
                                    ;;
                               "3")   
                                    echo -e "\n-----------------------------------------------"
                                    sudo ufw allow 22/tcp
                                    ;;
                               "4")   
                                    echo -e "\n-----------------------------------------------"
                                    sudo ufw allow 22/udp
                                    ;;
                               "5")   
                                    echo -e "\n-----------------------------------------------"
                                    sudo ufw allow 30000:32767/tcp
                                    ;;             
                               "6")  
                                    echo -e "\n-----------------------------------------------"
                                    sudo ufw allow 30000:32767/udp
                                    ;;
                               "7")    
                                    read -p "Ingrese la IP: "IPp
                                    echo "  "
                                    read -p "Ingrese el puerto: " puertop
                                    echo "  "
                                    curl -v telnet://$IPp:$puertop
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
                                    read -p "Seleccione una opcion" opcion
                                    echo -e "\n-----------------------------------------------"
                                     sudo apt install resolvconf
                                     ;;
                               "2")   
                                    read -p "Seleccione una opcion" opcion
                                    echo -e "\n-----------------------------------------------"
                                    sudo service resolvconf start   
                                    ;;
                               "3")   
                                    read -p "Seleccione una opcion" opcion
                                    echo -e "\n-----------------------------------------------"
                                    sudo service resolvconf stop
                                    ;;
                               "4")   
                                    read -p "Seleccione una opcion" opcion
                                    echo -e "\n-----------------------------------------------"
                                    sudo service resolvconf status
                                    ;;
                               "5")   
                                    read -p "Seleccione una opcion" opcion
                                    echo -e "\n-----------------------------------------------"
                                    sudo service resolvconf restart
                                    ;;             
                               "6")  
                                    read -p "Seleccione una opcion" opcion
                                    echo -e "\n-----------------------------------------------"
                                    
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
               
               *)
                   echo "Error: Invalid option..."	
                   echo -e "\n-----------------------------------------------"
                   read -p "Press [Enter] key to continue..." readEnterKey
               ;;
              
        esac
        sleep 2
        clear
done
