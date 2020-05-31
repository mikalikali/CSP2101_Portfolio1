#!/bin/bash
#Callum Lawton 10414156
#Software Based Solution CSP2101


#downloads the website, and saves it to a txt file 
#wget -p -O EcuTest.txt https://www.ecu.edu.au/service-centres/MACSC/gallery/gallery.php?folder=152 
STD='\033[0;0;39m' #used for aligning the main menu 
RED='\033[0;41;30m' #used for when input is incorrect, changes the message to red 

#curl https://www.ecu.edu.au/service-centres/MACSC/gallery/gallery.php?folder=152 > tmp_file 
#grep "[.]jpg" tmp_file > temp_file1.txt
#this removes the first 14 characters cleaning up the file, leaving only the url at the start, ready to be searched by other functions 
#sed -e 's/^.\{14\}//' temp_file1.txt


#Download a specific thumbnail, inputed by the user. then save to a new folder named "function one" 
one() {
    echo "you have selected choice 1, which downloads a specific image inputed by the user"
        #loop until right input is received 
        #prompt the user for input
        #use grep to search the file and look for the specific image entered by the user 
   
    echo "what DSC would you like to search for, you can search betwwen 1533-2042, your choice must be between these 2 numbers"
    echo "enter first value betweeb 1533 and 2041 EG: 1600 " #need to find a list of correct values, import that list.  
    #user inputs thier selected photo they want to download 
    read  Firstvalue 
    #loops until the user enters a number between 1532 and 2041, must be a number not an int, or float value etc. 
    until (($Firstvalue > 1532)) && (($Firstvalue < 2041)) ; do 
        echo "please try again, enter a number between 1532 and 2041" #tell user what to enter 
        read Firstvalue #user re-enters their input until it is between 1532 and 2041, proram will repeat (loop) until this is true 
done

# curl https://secure.ecu.edu.au/service-centres/MACSC/gallery/152/DSC0["$Firstvalue"] | xargs wget 

#downloading the image from the website based on the users input, is then saved to a new folder       
wget -0 newfolder.zip https://secure.ecu.edu.au/service-centres/MACSC/gallery/152/DSC0"$Firstvalue".jpg #wont save to new file, saves to the wroking file 

#add in correct download echo "Downloading "DSC0$Input", with the file name of "FullFilename DSC0$Input.jpg", with a file size of "File size"... file download
#complete
#PROGRAM FINISHED 
echo "PROGRAM FINISHED"
} 

#Download every thumbnail from the wesbite to the working file (try and download to a new folder)
two() {

    echo "you have chosen choice 2" 
        #Download every thumbnail from the webpage, based on the line having http and .jpg in it 
     #xarg used to download each line, repeat wget mutiple times
     #files saved to a new folder called FunctionOne 
    curl -0 FunctionTwo.zip https://www.ecu.edu.au/service-centres/MACSC/gallery/gallery.php?folder=152 | grep -o -e 'http[^"]*\.jpg' | xargs wget 
    echo "you have downloaded every .jpg file  on the website"

#add in correct download echo "Downloading "DSC0$Input", with the file name of "FullFilename DSC0$Input.jpg", with a file size of "File size"... file download
#complete
#PROGRAM FINISHED 
echo "PROGRAM FINISHED"
} 

#downloads images in a range specified by the user 
three() {

    echo "you have selected choice 3"
    echo "this choice downloads all images from the range the user gives"
        #download images in a range specifed by the user
        #if out of range prompt to re-enter a legit range and give an exmple of what they can enter 
    echo "what DSC would you like to search for, you can search betwwen 1533-2042, your choice must be between these 2 numbers"
    echo "enter first value EG: 1534 " 
    

read  FirstValue3
until (($FirstValue3 > 1532)) && (($FirstValue3 < 2041)) ; do 
    echo "please try again"
    read Firstvalue


done

#getting the user to input a second value so that a ranfe can be created, every file in this range will be downloaded 
echo "enter second value EG: 1723 " #prompt user for inputing second value 
read   SecondValue3 #taking users input for second value 
    until (($SecondValue3 > 1532)) && (($SecondValue3 < 2041)) ; do #checks second value is within the correct range that is being searched for 
        echo "please try again"
        read SecondValue3 

done 
    #xargs used to download mutiple urls 
curl -0 FuncitonThree.zip https://secure.ecu.edu.au/service-centres/MACSC/gallery/152/DSC0["$FirstValue3"-"$SecondValue3"].jpg | grep -o -e 'http[^"]*\.jpg' | xargs wget 

#add in correct download echo "Downloading "DSC0$Input", with the file name of "FullFilename DSC0$Input.jpg", with a file size of "File size"... file download
#complete
#PROGRAM FINISHED 
echo "PROGRAM FINISHED"
} 

#function 4 to be called upon by menu 
four() {
    echo "you have selected option4"
        #download a specific number of images, EG:5 random images in a random range / take input from user for how many images are wanted cant be more than 75, less than 1 
        #randomise the process, loop until there are 5 variables 
        #prompt like function 3, for input within the range. error cehck that there are x number in the range availible to download 
        #how to make it random? in the availible range?? 
        #where are they going to be saved, and how to name the images appropriatly 
        #report to user when finished
        #prompt user to enter a new selection when finished 
    
    #Do while count loop = 5 
    echo "enter the amount of images you would like to download" 
    echo "the images will be downloaded at random" 

  
   echo "enter amount of images to download EG: 5 "
    read  UserInput
    until (($UserInput > 0)) && (($UserInput < 76)) ; do 
        echo "please try again, enter a value between 1 and 75"
        read UserInput 

 done        
    echo "enter first value EG: 1656 "
    read  FirstValue4
    until (($FirstValue4 > 1532)) && (($FirstValue4 < 2041)) ; do 
        echo "please try again, enter a value between 1533 and 2041"
        read FirstValue4
done

    echo "enter second value 1723 "
    read   SecondValue4 
    until (($SecondValue4 > 1532)) && (($SecondValue4 < 2041)) ; do 
        echo "please try again, enter a value between 1533 and 2041"
        read SecondValue4 
done 
    
    #curl https://secure.ecu.edu.au/service-centres/MACSC/gallery/152/DSC0["$FirstValue4"-"$SecondValue4"] | xargs wget 

   # else : 
   # echo 
echo "PROGRAM FINISHED"
} 

#displays a user frindly menu for the user to choose from. 
showMenus() { 
    echo " PLEASE CHOOSE ONE OF THE BELOW OPTIONS: " 
    echo " "
    echo "1. option 1, download one image specified by user input"
    echo " "
    echo "2. option 2, download every image from the website"
    echo " "
    echo "3. option 3 download images from a range inputed by the user" 
    echo " "
    echo "4. option 4, user inputs amount of imsages to download, and range to download those images fromat random" 
    echo " "
    echo "5(EXIT). Press the number 5 to Exit" #exits the program by entering the number 5
}

#read users input to choose which option to run, if option 1 is chosen then function 1 is run. 

readOptions() {
    local choice 
    read -p "enter a choice from 1-4 or enter Exit to quit the program: " choice 
    case $choice in 
        1) one ;;
        2) two ;; 
        3) three ;;
        4) four ;; 
        5) exit ;;
        *) echo -e "${RED}Please enter one of the above options to continue${STD}" && sleep 2
    esac 
} 

#trap CNTRL+C, CNTRL+Z, and quit singles
trap '' SIGINT SIGQUIT SIGTSTP


while true
do 

    showMenus
    readOptions
done 


