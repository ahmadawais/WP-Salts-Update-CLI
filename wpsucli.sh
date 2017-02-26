#! /usr/bin/env bash
#
# WP Salts Update CLI.
#
# Version 1.0.0
#
# WPSUCLI downloads new salts from the WP API and replaces
# them with the ones in your wp-config.php file.
#

# Colors.
#
# colors from tput
# http://stackoverflow.com/a/20983251/950111
# Usage:
# echo "${redb}red text ${gb}green text${r}"
bb=`tput setab 0` #set background black
bf=`tput setaf 0` #set foreground black
gb=`tput setab 2` # set background green
gf=`tput setab 2` # set background green
blb=`tput setab 4` # set background blue
blf=`tput setaf 4` # set foreground blue
rb=`tput setab 1` # set background red
rf=`tput setaf 1` # set foreground red
wb=`tput setab 7` # set background white
wf=`tput setaf 7` # set foreground white
r=`tput sgr0`     # r to defaults

clear

# STARTING.
echo "—"
echo "${gb}${bf} WP SALTS UPDATE CLI ⚡️  ${r}"
echo "${wb}${bf} Version 1.0.0 ${r}"
echo "${wb}${bf} Automated WP Salts update.${r}"
echo "—"

# Help.
	if [[ $@ == "-h" || $@ == "help" || $@ == "--help" ]] ; then
		echo "——————————————————————————————————"
		echo "⚡️ Usage: WPSUCLI [ -h | help ]"
		echo "⚡️  - [ -h | help ] Use help."
		echo "⚡️  - Just run 'wpsucli' and it will update the salts for every wp-config.php file on your server or PC."
		echo "——————————————————————————————————"
		exit 0
	fi

echo "-"
echo "--------------- ⏲  LET' START... ---------------"
echo "-"

# The PWD.
THE_PWD=$(pwd)

# Start the loop.
find . -name wp-config.php -print | while read line
do
	# echo "LINE: $line"
	SITE="$(basename "$(dirname "$line")")"

	# Get dir path where wp-config.php file is present.
	DIR=$( cd -P "$( dirname "$line" )" && pwd )/
	# echo "DIR: $DIR"
	cd $DIR

	echo "-"
	echo "${wb} ${bf}--------------- ⏲️  UPDATING SALTS FOR: $SITE... ---------------${r}"

	## Download the new salts to file cal salts.
	curl "https://api.wordpress.org/secret-key/1.1/salt/" -o salts

	echo "${wb} ${bf}--------------- 🎯  SALTS DOWNLOADED... ---------------${r}"

	# Split wp-config.php into 3 on the first and last definition statements.
	csplit wp-config.php '/AUTH_KEY/' '/NONCE_SALT/+1'

	# Recombine the first part, the new salts and the last part.
	cat xx00 salts xx02 > wp-config.php

	# Tidy up.
	rm salts xx00 xx01 xx02

	echo "${gb} ${bf}--------------- ✔︎✔︎✔︎ DONE! SITE: $SITE SALTS UPDATED!!! 💯 🎉 ✔✔✔ ---------------${r}"
	echo "-"
  cd $THE_PWD
done

echo "${gb} ${bf}--------------------------------------------------------${r}"
echo "${gb} ${bf}--------------- ✔︎✔︎✔︎ ALL DONE!  🎉 ✔✔✔ ---------------${r}"
echo "${gb} ${bf}--------------------------------------------------------${r}"
