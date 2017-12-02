#!/bin/bash
clear
echo
echo ===============Online Radio 9.05.2013 Update list 09.09.2017====================
TIME=`date +%F\ %H:%M:%S`

echo "$TIME"
#echo -e "\a"
#echo "Online Radio 9.05.2013 Update list 1.09.2017"
#notify-send --expire-time=10000 "Слушаем радио!" "Доброе время суток $TIME"

echo "0 RADIO 7		11 Zvezda		22 Дискотека 90х"
echo "1 Radio Uniton		12 Doroznoe Radio	23 Relax FM"
echo "2 Vesti FM		13 HitFM Kyiv		24 Радио МАЯК"
echo "3 Бизнес ФМ		14 BestFM Kyiv		29 Комсом правда"
echo "4 KANAL 112		15 Radio ПРОМИНЬ	30 Эхо Москвы"
echo "5 Радио ДАЧА		16 RadioERA		31 Atmosfera"
echo "6 Коммерсантъ		17 Lux FM Kiev		32 Europa+ light"
echo "7 RADIO SPUTNIK		18 РАДИО KARNAVAL	33 101:Chillout"
echo "8 Радио Пионер		19 Radio Melodia	34 Спок Радио"
echo "9 Europa+		20 Русское радио"       35 Ретро ФМ"
echo "10 Классное радио	21 AVTORadio"     36 Дискотека 80-х"

#notify-send --expire-time=5000 "Слушаем радио!" "Доброе время суток $TIME "

echo ===============================================================================

read doing
case $doing in

30)mplayer http://81.19.85.197:80/echo.mp3;;
0)mplayer http://listen18.vdfm.ru:8000/radio7 2>&1 | sed -une 's/^.*ICY[^:]*: //p';;
1)mplayer http://online.uniton.ru:8300/RadioUniton128 2>&1 | sed -une 's/^.*ICY[^:]*: //p';;
2)mplayer http://icecast.vgtrk.cdnvideo.ru/vestifm_mp3_64kbps;;
3)mplayer http://bfm.hostingradio.ru:8004/fm;;
16)mplayer http://212.26.129.2:8000/era96;;
15)mplayer http://nrcu.gov.ua:8000/ur2-mp3-m;;
7)mplayer http://audio1.video.ria.ru/voicerus 2>&1 | sed -une 's/^.*ICY[^:]*: //p';;
24)mplayer http://icecast.vgtrk.cdnvideo.ru/mayakfm_mp3_192kbps;;
9)mplayer http://ep256.hostingradio.ru:8052/europaplus256.mp3 2>&1 | sed -une 's/^.*ICY[^:]*: //p';;
29)mplayer http://kpradio.hostingradio.ru:8000/128;;
10)mplayer http://31.129.253.239:8000/2-Klassnoe-Radio-Izyum-103.7FM-Stereo-VBR-128k.ogg 2>&1 | sed -une 's/^.*ICY[^:]*: //p';;
11)mplayer http://89.208.99.16:8088/zvezda_128;;
5)mplayer http://listen15.vdfm.ru:8000/dacha 2>&1 | sed -une 's/^.*ICY[^:]*: //p';;
13)mplayer http://online-hitfm.tavrmedia.ua/HitFM;;
14)mplayer http://radio.bestfm.fm:8080/bestfm;;
12)mplayer http://dorognoe.hostingradio.ru:8000/radio;;
23)mplayer http://ic3.101.ru:8000/v13_1;;
17)mplayer http://icecastdc.luxnet.ua/lux?type=.flv;;
18)mplayer http://stream02.media.rambler.ru/karnaval128.mp3;;
19)mplayer http://melodia.ipfm.net:80/RadioMelodia 2>&1 | sed -une 's/^.*ICY[^:]*: //p';;
20)mplayer http://icecast.russkoeradio.cdnvideo.ru/rr.mp3;;
21)mplayer http://ic4.101.ru:8000/v3_1;;
6)mplayer http://kommersant77.hostingradio.ru:8016/kommersant128.mp3;;
4)mplayer http://audio.112.ua:8000/live112;;
22)mplayer http://air.radiorecord.ru:8102/sd90_128;;
8)mplayer http://pioner.hostingradio.ru:8008/ppr128 2>&1 | sed -une 's/^.*ICY[^:]*: //p';;
25)mplayer http://icecastdc.luxnet.ua/lux?type=.flv;;
31)mplayer http://185.53.169.128:8000/192;;
32)mplayer http://emg02.hostingradio.ru/ep-light128.mp3;;
33)mplayer http://ic2.101.ru:8000/c15_3;;
34)mplayer http://listen1.myradio24.com:9000/6262;;
35)mplayer http://retroserver.streamr.ru:8043/retro256.mp3;;
36)mplayer http://ic2.101.ru:8000/c7_0;;

e)exit 0;;
*)
echo "Вы ощиблись при вводе! "
esac
#echo "Пока! Удачи!"
/home/ace/Desktop/radio.sh

