# BASH/CURL

## Faz 5000 chamadas e valida o resultado do "HTTP status"

#!/bin/bash
for i in `seq 1 5000`;
do
	URL_CONTENT=$(curl -vs -o /dev/null http://www.google.com.br/?gws_rd=ssl 2>&1);
	CONTENT=$(echo "$URL_CONTENT" | grep "HTTP/1.1 " | cut -d ' ' -f 3);
	
	echo $i;
	
	if [[ $CONTENT -ne "301" ]];then
		echo "Not 301";
		echo "$URL_CONTENT";
	fi

done