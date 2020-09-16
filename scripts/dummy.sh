#!/bin/bash

COUNTER=0
Bill=0
while [ $COUNTER -eq 0 ]
do
echo "What is your favorite Breakfast?"

echo "1 - DOSA"
echo "2 - IDLI"
echo "3 - VADA"
echo "4 - RICEITEM"
echo "5 - Exit"
read Main

   case $Main in
      1)echo "1-Onion Dosa,2-Rava Dosa,3-Masala Dosa,4-Main Menue"
        read subDosa
        Dosanum=0
                case $subDosa in
                        1)echo "Enter Number of Item needed"
                                read Dosanum
                                 Bill=`expr $Bill + 30`
                                 Bill=`expr $Dosanum \* $Bill`;;
                        2) echo "Enter Number of Item needed"
                                read Dosanum
                                 Bill=`expr $Bill + 35`
                                 Bill=`expr $Dosanum \* $Bill`;;
                        3)echo "Enter Number of Item needed"
                                read Dosanum
                                Bill=`expr $Bill + 25`
                                Bill=`expr $Dosanum \* $Bill`;;
                        4)exit;;
                esac
                echo "You have ordered $Dosanum Daosa"
         ;;
   2)echo "1-Rava Idli,2-Rice Idli,3-Thatte Idli,4-Main Menue"
        read subIdli
        Idlinum=0
                case $subIdli in
                        1)echo "Enter Number of Item needed"
                                read Idlinum
                                 Bill=`expr $Bill + 35`
                                 Bill=`expr $Idlinum \* $Bill`;;
                        2)echo "Enter Number of Item needed"
                                read Idlinum
                                 Bill=`expr $Bill + 25`
                                 Bill=`expr $Idlinum \* $Bill`;;
                        3)echo "Enter Number of Item needed"
                                read Idlinum
                                 Bill=`expr $Bill + 20`
                                 Bill=`expr $Idlinum \* $Bill`;;
                        4)exit;;
                esac
                 echo "You have ordered $Idlinum Idli"
        ;;
      3) echo "1-Onion Vada,2-Dal Vada,3-Aloo Vada,4-Main Menue"
        read subVada
        Vadanum=0
                case $subVada in
                        1)echo "Enter Number of Item needed"
                                read Vadanum
                                 Bill=`expr $Bill + 15`
                                 Bill=`expr $Vadanum \* $Bill`;;
                        2)echo "Enter Number of Item needed"
                                read Vadanum
                                 Bill=`expr $Bill + 25`
                                 Bill=`expr $Vadanum \* $Bill`;;
                        3)echo "Enter Number of Item needed"
                                read Vadanum
                                 Bill=`expr $Bill + 20`
                                 Bill=`expr $Vadanum \* $Bill`;;
                        4)exit;;
                esac
                 echo "You have ordered $Vadanum Vada"

        ;;
  4) echo "1-Pullav,2-Puliogre,3-Bisibelebath,4-Main Menue"
        read subRice
        Ricenum=0
                case $subRice in
                        1)echo "Enter Number of Item needed"
                                read Dosanum
                                 Bill=`expr $Bill + 25`
                                 Bill=`expr $Ricenum \* $Bill`;;
                        2)echo "Enter Number of Item needed"
                                read Ricenum
                                 Bill=`expr $Bill + 25`
                                 Bill=`expr $Ricenum \* $Bill`;;
                        3)echo "Enter Number of Item needed"
                                read Ricenum
                                 Bill=`expr $Bill + 30`
                                 Bill=`expr $Ricenum \* $Bill`;;
                        4)exit;;
                esac
                 echo "You have ordered $Ricenum Rice Item"

        ;;
      *) echo "Thank You"
         COUNTER=`expr $COUNTER + 1`
         ;;
   esac
done
echo "Bill amount is $Bill"
