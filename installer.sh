#!/bin/bash -i
#Check if the script is executed with root privileges
if [ "$EUID" -ne 0 ]
  then echo -e ${RED}"Please execute this script with root privileges !"
  exit
fi
	echo -e ${BLUE}"[VULNERABILITY SCANNER]" ${GREEN}"Jaeles installation is done !"; echo "";
	#Nikto
	echo -e ${BLUE}"[VULNERABILITY SCANNER]" ${RED}"Nikto installation in progress ...";
	apt-get install -y nikto > /dev/null 2>&1;
	echo -e ${BLUE}"[VULNERABILITY SCANNER]" ${GREEN}"Nikto installation is done !"; echo "";
}

JS_HUNTING () {
	#Linkfinder
	echo -e ${BLUE}"[JS FILES HUNTING]" ${RED}"Linkfinder installation in progress ...";
	cd $TOOLS_DIRECTORY && git clone https://github.com/GerbenJavado/LinkFinder.git > /dev/null 2>&1 && cd LinkFinder && pip3 install -r requirements.txt > /dev/null 2>&1 && python3 setup.py install > /dev/null 2>&1;
	echo -e ${BLUE}"[JS FILES HUNTING]" ${GREEN}"Linkfinder installation is done !"; echo "";
	#SecretFinder
	echo -e ${BLUE}"[JS FILES HUNTING]" ${RED}"SecretFinder installation in progress ...";
	cd $TOOLS_DIRECTORY && git clone https://github.com/m4ll0k/SecretFinder.git > /dev/null 2>&1 && cd SecretFinder && pip3 install -r requirements.txt > /dev/null 2>&1;
	echo -e ${BLUE}"[JS FILES HUNTING]" ${GREEN}"SecretFinder installation is done !"; echo "";
	#subjs
	echo -e ${BLUE}"[JS FILES HUNTING]" ${RED}"subjs installation in progress ...";
	go get -u github.com/lc/subjs > /dev/null 2>&1 && ln -s ~/go/bin/subjs /usr/local/bin/;
	echo -e ${BLUE}"[JS FILES HUNTING]" ${GREEN}"subjs installation is done !"; echo "";
}

GIT_HUNTING() {
	#GitDorker
	echo -e ${BLUE}"[GIT HUNTING]" ${RED}"gitGraber installation in progress ...";
	cd $TOOLS_DIRECTORY && git clone https://github.com/obheda12/GitDorker.git > /dev/null 2>&1 && cd GitDorker && pip3 install -r requirements.txt > /dev/null 2>&1;
	echo -e ${BLUE}"[GIT HUNTING]" ${GREEN}"gitGraber installation is done !"; echo "";
	#gitGraber
	echo -e ${BLUE}"[GIT HUNTING]" ${RED}"gitGraber installation in progress ...";
	cd $TOOLS_DIRECTORY && git clone https://github.com/hisxo/gitGraber.git > /dev/null 2>&1 && cd gitGraber && pip3 install -r requirements.txt > /dev/null 2>&1;
	echo -e ${BLUE}"[GIT HUNTING]" ${GREEN}"gitGraber installation is done !"; echo "";
	#GitHacker
	echo -e ${BLUE}"[GIT HUNTING]" ${RED}"GitHacker installation in progress ...";
	pip3 install GitHacker > /dev/null 2>&1;
	echo -e ${BLUE}"[GIT HUNTING]" ${GREEN}"GitHacker installation is done !"; echo "";
	#GitTools
	echo -e ${BLUE}"[GIT HUNTING]" ${RED}"GitToolsinstallation in progress ...";
	cd $TOOLS_DIRECTORY && git clone https://github.com/internetwache/GitTools.git > /dev/null 2>&1;
	echo -e ${BLUE}"[GIT HUNTING]" ${GREEN}"GitTools installation is done !"; echo "";
}


SENSITIVE_FINDING() {
	#DumpsterDiver
	echo -e ${BLUE}"[SENSITIVE FINDING TOOLS]" ${RED}"gitGraber installation in progress ...";
	cd $TOOLS_DIRECTORY && git clone https://github.com/securing/DumpsterDiver.git > /dev/null 2>&1 && cd DumpsterDiver && pip3 install -r requirements.txt > /dev/null 2>&1;
	echo -e ${BLUE}"[SENSITIVE FINDING TOOLS]" ${GREEN}"gitGraber installation is done !"; echo "";
	#EarlyBird
	echo -e ${BLUE}"[SENSITIVE FINDING TOOLS]" ${RED}"EarlyBird installation in progress ...";
	cd $TOOLS_DIRECTORY && git clone https://github.com/americanexpress/earlybird.git > /dev/null 2>&1 && cd earlybird && ./build.sh > /dev/null 2>&1 && ./install.sh > /dev/null 2>&1;
	echo -e ${BLUE}"[SENSITIVE FINDING TOOLS]" ${GREEN}"EarlyBird installation is done !"; echo "";
	#Ripgrep
	echo -e ${BLUE}"[SENSITIVE FINDING TOOLS]" ${RED}"Ripgrep installation in progress ...";
	apt-get install -y ripgrep > /dev/null 2>&1
	echo -e ${BLUE}"[SENSITIVE FINDING TOOLS]" ${GREEN}"Ripgrep installation is done !" ${RESTORE}; echo "";
}

USEFUL_TOOLS () {
	#getallurls
	echo -e ${BLUE}"[USEFUL TOOLS]" ${RED}"getallurls installation in progress ...";
	GO111MODULE=on go get -u -v github.com/lc/gau > /dev/null 2>&1 && ln -s ~/go/bin/gau /usr/local/bin/;
	echo -e ${BLUE}"[USEFUL TOOLS]" ${GREEN}"getallurls installation is done !"; echo "";
	#anti-burl
	echo -e ${BLUE}"[USEFUL TOOLS]" ${RED}"anti-burl installation in progress ...";
	go get -u github.com/tomnomnom/hacks/anti-burl > /dev/null 2>&1 && ln -s ~/go/bin/anti-burl /usr/local/bin/;
	echo -e ${BLUE}"[USEFUL TOOLS]" ${GREEN}"anti-burl installation is done !"; echo "";
	#unfurl
	echo -e ${BLUE}"[USEFUL TOOLS]" ${RED}"unfurl installation in progress ...";
	go get -u github.com/tomnomnom/unfurl > /dev/null 2>&1 && ln -s ~/go/bin/unfurl /usr/local/bin/;
	echo -e ${BLUE}"[USEFUL TOOLS]" ${GREEN}"unfurl installation is done !"; echo "";
	#anew
	echo -e ${BLUE}"[USEFUL TOOLS]" ${RED}"anew installation in progress ...";
	go get -u github.com/tomnomnom/anew > /dev/null 2>&1 && ln -s ~/go/bin/anew /usr/local/bin/;
	echo -e ${BLUE}"[USEFUL TOOLS]" ${GREEN}"anew installation is done !"; echo "";
	#gron
	echo -e ${BLUE}"[USEFUL TOOLS]" ${RED}"gron installation in progress ...";
	go get -u github.com/tomnomnom/gron > /dev/null 2>&1 && ln -s ~/go/bin/gron /usr/local/bin/;
	echo -e ${BLUE}"[USEFUL TOOLS]" ${GREEN}"gron installation is done !"; echo "";
	#qsreplace
	echo -e ${BLUE}"[USEFUL TOOLS]" ${RED}"qsreplace installation in progress ...";
	go get -u github.com/tomnomnom/qsreplace > /dev/null 2>&1 && ln -s ~/go/bin/qsreplace /usr/local/bin/;
	echo -e ${BLUE}"[USEFUL TOOLS]" ${GREEN}"qsreplace installation is done !"; echo "";
	#Interlace
	echo -e ${BLUE}"[USEFUL TOOLS]" ${RED}"Interlace installation in progress ...";
	cd $TOOLS_DIRECTORY && git clone https://github.com/codingo/Interlace.git > /dev/null 2>&1 && cd Interlace && python3 setup.py install > /dev/null 2>&1;
	echo -e ${BLUE}"[USEFUL TOOLS]" ${GREEN}"Interlace installation is done !"; echo "";
	#Jq
	echo -e ${BLUE}"[USEFUL TOOLS]" ${RED}"jq installation in progress ...";
	apt-get install -y jq > /dev/null 2>&1;
	echo -e ${BLUE}"[USEFUL TOOLS]" ${GREEN}"jq installation is done !" ${RESTORE}; echo "";
	#Tmux
	echo -e ${BLUE}"[USEFUL TOOLS]" ${RED}"Tmux installation in progress ...";
	apt-get install tmux -y > /dev/null 2>&1;
	echo -e ${BLUE}"[USEFUL TOOLS]" ${GREEN}"Tmux installation is done !"; echo "";
	#Uro
	echo -e ${BLUE}"[USEFUL TOOLS]" ${RED}"Uro installation in progress ...";
	pip3 install uro > /dev/null 2>&1;
	echo -e ${BLUE}"[USEFUL TOOLS]" ${GREEN}"Uro installation is done !" ${RESTORE}; echo "";
}

ENVIRONMENT && SUBDOMAINS_ENUMERATION && DNS_RESOLVER && VISUAL_RECON && HTTP_PROBE && WEB_CRAWLING && NETWORK_SCANNER && HTTP_PARAMETER && FUZZING_TOOLS && LFI_TOOLS && SSRF_TOOLS && SSTI_TOOLS && API_TOOLS && WORDLISTS && VULNS_XSS && VULNS_SQLI && CMS_SCANNER && VULNS_SCANNER && JS_HUNTING && GIT_HUNTING  && SENSITIVE_FINDING && USEFUL_TOOLS;
