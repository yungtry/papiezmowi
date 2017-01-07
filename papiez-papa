#!/bin/bash
echo -n "Czy napewno chcesz odinstalować papiezmowi (t/n)? "
read answer
if echo "$answer" | grep -iq "^t" ;then
	sudo rm /usr/local/bin/papiezmowi
	echo 'Pomyślnie odinstalowano papiezmowi'
	sudo rm /usr/local/bin/papiez-papa
else
	exit
fi
