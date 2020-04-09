#Student Name: Callum Lawton
#Student Number: 10414156 
#The task is to write a guessing game script, that pompts the user to guess betwen the nbumbers 20-70, the user should provide the guess through console input
    # the user is then told if the guess war wrong, and if it was to high or to low, or if the guess was correct. 

#randomely generate a number for the user to guess against $randomnumber, this is done by using $RANDOM and specify between 20 and 70 

#!/bin/bash

randomnumber=$(( 20 + $RANDOM % 70 )) #the RANDOM functuion is being used here to genrate a random number that the user can guess against
    #echo "$randomnumber"  the random number has now been assigned to the variable $randomnumber, this line was used for testing purposes.


 while [[ "$guess" != "$randomnumber" ]]; #while loop put in place until the user gets the right answer, then the program exits
    do

read -p "please enter a number between 20 and 70: " guess #prompting the user to input a number 
    echo "you have entered $guess"                            #Shows the user what they have just inputed

    if [[ "$guess" = "$randomnumber" ]] ; then
         echo "you are correct $guess is the same as $randomnumber. "
         
        elif [[ "$guess" -gt "$randomnumber" ]]; then
            echo "your guess was greater than the random age, try again"

        elif [[ "$guess" > "$randomnumber" ]]; then
            echo "your guess was greater than the random age, try again"   
       

        elif [[ "$guess" -lt "$randomnumber" ]]; then 
            echo "you have guessed less than the random age"
        

        elif [[ "$guess" < "$randomnumber" ]]; then 
            echo "you have guessed less than the random age"
        
    else 
        echo "please enter a number betwween 20-70. "
        

    fi

done 
      