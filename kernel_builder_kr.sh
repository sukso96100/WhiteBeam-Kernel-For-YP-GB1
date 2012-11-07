#!/bin/bash

#cubebone kernel compile script : YP-GB1 (korean)
#Copyright (C) 2012  Young-Bin Han

#sukso96100@gmail.com

#This program is free software: you can redistribute it and/or modify
#it under the terms of the GNU General Public License as published by
#the Free Software Foundation, either version 3 of the License, or
#(at your option) any later version.

#This program is distributed in the hope that it will be useful,
#but WITHOUT ANY WARRANTY; without even the implied warranty of
#MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#GNU General Public License for more details.

#You should have received a copy of the GNU General Public License
#along with this program.  If not, see <http://www.gnu.org/licenses/>
#--------------------------------------------------------------------------------
#Please edit root of toolchain on line 35 before excute this script

echo "------------------------------------------------"
echo "LANUGUAGE : 한국어"
echo "cubebone kernel 컴파일 스크립트"
echo "YP-GB1"
sleep 5
echo "------------------------------------------------"
echo "몇몇 명령을 실행중.."
echo "------------------------------------------------"
sleep 5

export ARCH=arm

export CROSS_COMPILE=/home/youngbin/arm-2009q3/bin/arm-none-linux-gnueabi-



echo "다음과 같은 명령을 실행하는중 : make wbk_yp-gb1_defconfig" 
echo "------------------------------------------------"
sleep 5

make wbk_yp-gb1_defconfig

echo "다음과 같은 명령을 실행하는중 : make menuconfig" 
echo "------------------------------------------------"
echo "커널 설정 화면이 곧 나타납니다" 
echo "설정을 마친후, 설정을 저장하세요" 
echo "설정 화면을 나가시면 이 스크립트는 자동으로 커널을 컴파일합니다" 
echo "------------------------------------------------"
sleep 10

make menuconfig

sleep 5
echo "------------------------------------------------"
echo "5초후 커널 컴파일이 시작됩니다"
echo "커널이 컴파일되는 동안 약간의 휴식을 취하세요"
echo "------------------------------------------------"
sleep 5

make
