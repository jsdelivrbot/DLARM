#!/bin/bash
mean=114667,24;
amountOfFiles=0;
R=$((RANDOM%1000+1));
acc=0;
N=12;
outputpath="/home/nvidia/Desktop/folder";

cd train/;
for i in `ls`;
        do cd $i;
        for j in `ls`;
                do std=$(stat -c '%s' "$j");
                aux=$((std-(mean)));
                acc=$(((acc)+((aux)^2)));
                amountOfFiles=$((amountOfFiles+1));
                done;
        cd ..; 
        done;
echo 'end for'
acc=$((acc / (amountOfFiles)));
stddev=$(echo "sqrt ( ($acc) )" | bc -l) ; 
echo 'stddev'
echo $stddev

#lowerICNinetyFive=$((($mean)-1,64*(($stddev) / ($amountOfFiles))));
#upperICNinetyFive=$((($mean)+1,64*(($stddev) / ($amountOfFiles))));

#lowerICNinetyNine=$((($mean)-2,965*(($stddev) / ($amountOfFiles))));
#upperICNinetyNine=$((($mean)+2,965*(($stddev) / ($amountOfFiles))));

#Selects the random folders#
a=( * )
randf=()
for((i=0;i<N && ${#a[@]};++i)); do
    ((j=RANDOM%${#a[@]}))
    
    echo ${a[j]}
    #resto da logica de verificacao aqui
    
for i in `ls`; do
        #pegar a folder com o indice
        mkdir(outputpath/$i);
        done;

localMedian=0;
localStddev=0;

for i in `ls`; do
        #pegar a folder com o indice
        cd $i;
        for j in {1..10}; do
                while()
                        #verifica se está abaixo da média
                        #se sim, adiciona
                        #se não, retira outro
                        #adicionar ao contador total
                done;
        cd ..;
        done;

                
