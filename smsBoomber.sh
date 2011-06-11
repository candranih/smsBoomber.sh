#!/bin/bash
#Simple SMS Boomber using gammu

#cek apakah parameter yang dimasukan sesuai
if [ $# -ne  3 ]; then
	echo "Gunakan sh smsBoomber.sh <nomor target> <pesan(dalam tanda kutip)> <jumlah sms>"
	echo "Contoh sh smsBoomber.sh 08562xxxxx \"dor dor dor\"  500"
	exit 0
fi


#kirim sms sebanyak jumlah pada parameter ke 3
for i in `seq 1 $3`;
do
	echo $2 | gammu sendsms TEXT $1   
done
