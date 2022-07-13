#! /bin/bash

# WordPress needs L A M P

WHITE='\033[1;37m'
RED='\033[1;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
LTBLUE='\033[1;34m'
NC='\033[0m'    # No Color, standard text
echo_white()    { (echo -e "${WHITE}$*${NC}") }
echo_red()      { (echo -e "${RED}$*${NC}") }
echo_blue()     { (echo -e "${LTBLUE}$*${NC}") }  
echo_green()    { (echo -e "${GREEN}$*${NC}") }

INTERFACE=cli
LOG_FILE="/home/$USER/install_wordpress.log"
LOG=on

ui_echo(){
    # used to notify on the terminal what is going on.  optionally log it.
    # ui_echo "msg" red log
    MSG="$1"
    COLOR="${2:-grey}"
    local LOGIT="${3:-log}"   # or nolog
    
    if [[ $LOGIT = log ]]; then    
        ui_log "$MSG"  
    fi
    
    case $COLOR in
        red)        echo_red "$MSG" ;;
        white)      echo_white "$MSG" ;;
        blue)       echo_blue "$MSG" ;;
        *)          echo -e "$MSG" ;;
    #    *)          echo  "$MSG" ;;
    esac
}


ui_log(){
    # writes msg to $LOG_FILE
    # usage ui_log "message"
    INFO=$*
    
    INFO=$(echo $INFO | sed 's/\\n/ -/g')  #change newline for ~
    
    if [[ $LOG = on ]]; then
        touch $LOG_FILE
        echo "$(date "+%Y-%m-%d %H:%M") $INFO" >> $LOG_FILE
    fi
}


run_command(){
    local CMD=$1
    local LINE=$2
    local QUIET=${3:-n}
    
    ui_echo "~ Running: $CMD" blue
    eval $CMD
    ES=$?
    if (( $ES )); then
        ui_echo "~ Exit_Status $ES running '$CMD'" red log
        return $ES
    fi
}


ui_yesno(){
    # general yes/no function.  Supports CLI and whiptail.
    # note, this output is often assigned to a variable, so don't add any additional echo statements.
    TITLE="$1"
    MSG="$2"
    DEFAULT="${3:-""}"   # defaults to Yes.  can specify --defaultno
    TIMEOUT=${4:-0}
   # COLOR="${4:-white}"  color does not work with the 'read' command
    
    if [[ $INTERFACE = cli ]]; then
        MSG="$PRODUCTNAME: $TITLE: $MSG  [y/n]?"
        # change 'newline' chars to ' -'
        MSG=$(echo $MSG | sed 's/\\n/ -/g')
        while true; do        
            read -s -n1 -p "$MSG" yn
            case $yn in
                [Yy]* ) echo y; return 0;;
                [Nn]* ) echo n; return 0;;
                * )     ;;
            esac
        done
    else    
        whiptail --backtitle "$BACKTITLE"  --title "$TITLE" $DEFAULT --yesno "$MSG" $WT_MB_HEIGHT $WT_MB_WIDTH 3>&1 1>&2 2>&3
        ES=$?
        if (( $ES )); then
            echo n
        else
            echo y
        fi
        return $ES
    fi
}


echo "Installing Wordpress from https://raspberrytips.com/wordpress-on-raspberry-pi/ ..."
echo "This will install Wordpress and it's LAMP prerequisites"
if [[ $(ui_yesno "Continue") != y ]]; then
	exit
fi


echo - Updating operating system...
run_command "sudo apt update -y" $LINENO
run_command "sudo apt upgrade -y"  $LINENO


echo - Installing Apache...
run_command "sudo apt-get install apache2 -y" $LINENO
echo open http://localhost
if [[ $(ui_yesno "Test Apache in browser.  Continue") = y ]]; then
	echo "you should see a webpage that says 'Apache2 Debian Default Page'"
    xdg-open http://localhost
    read -n1 -p "Press any key to continue"
fi



echo - Installing PHP...
run_command "sudo apt-get install php -y" $LINENO
echo '<?php echo "Hello World!";  ?>' > test.php
sudo mv test.php /var/www/html/test.php
#echo open http://localhost/test.php in a browser
if [[ $(ui_yesno "Test PHP in browser.  Continue") = y ]]; then
	echo "you should see a webpage that says 'Hello World!'"
    xdg-open http://localhost/test.php
    read -n1 -p "Press any key to continue"
fi



echo - Installing MariaDB... 
run_command "sudo apt-get install mariadb-server -y" $LINENO
echo Configure MariaDb...
#run_command "sudo mysql -uroot" $LINENO
#CREATE USER 'wordpress'@'localhost' IDENTIFIED BY 'password';
#CREATE DATABASE wordpress;
#GRANT ALL ON wordpress.* TO 'wordpress'@'localhost';
#quit
sudo mysql -uroot -e "CREATE USER 'wordpress'@'localhost' IDENTIFIED BY 'password';"
sudo mysql -uroot -e "CREATE DATABASE wordpress;"
sudo mysql -uroot -e "GRANT ALL ON wordpress.* TO 'wordpress'@'localhost';"
sudo mysql -uroot -e "SHOW DATABASES;"
echo Done installing MariaDB
#if [[ $(ui_yesno "Continue") != y ]]; then
#	exit
#fi


echo - Installing PH MySQL...
run_command "sudo apt-get install php-mysql -y" $LINENO
sudo service apache2 restart


echo - Installing php-xml
# https://stackoverflow.com/questions/38793676/php-xml-extension-not-installed
run_command "sudo apt-get install php-xml -y" $LINENO
run_command "sudo service apache2 restart" $LINENO


echo - Installing WordPress...
run_command "sudo wget https://wordpress.org/latest.zip -O /var/www/html/wordpress.zip" @LINENO
cd /var/www/html
sudo unzip wordpress.zip
sudo chmod 755 wordpress -R
sudo chown www-data wordpress -R

echo Done installing Wordpress.

#echo go to http://localhost/wordpress to configure it
xdg-open http://localhost/wordpress
