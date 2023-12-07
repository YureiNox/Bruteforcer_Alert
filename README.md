# Bruteforcer_Alert
detect failed connection and prevent you with the ip of the personne who try to hack/connect to your pc only work on windows



![Capture d'écran 2023-10-25 205813](https://github.com/Yudaol/Bruteforcer_Alert/assets/92973701/3e607aa6-547b-4b40-9066-1641330c7e6b)


# How to set up (a little bit long)

1- download and extract tak the bruteforcealert.ps1 and the bruteforcealert.bat bruteforcealert.ps1 is on ps1_file/English or French



2- Modify the .bat file to ADD YOUR PATH TO THE BRUTEFORCEALERT.PS1
![Capture d'écran 2023-10-25 210430](https://github.com/Yudaol/Bruteforcer_Alert/assets/92973701/af9555da-e4f2-49fb-b71e-4dd9ba65c87c)



3- To the programme to work you need to activate some kind of stuff 

3.1- go to Local Group Policy Editor or something like this (win+r > gpedit.msc) and go to : `Windows settings > Sécurity setings > Advence Audit Policy Configuration > Sytem Audit Policy - ....` > presse on logon/logoff

3.2- when you are in logon/logoff double-click on audit logon and select first the first case Configure the following.... and then select the two other case Success AND Failur



4- now go to task scheduler click on create task. From now on the "pop up" make every thing that look like the picture down here

4.1-
![Capture d'écran 2023-10-25 211614](https://github.com/Yudaol/Bruteforcer_Alert/assets/92973701/7580eb5d-8c6d-4fde-ab41-66a37fad0824)
sorry mine it's in french but it's always the same 
`AND YOU DO NOT NEED TO CHANGE ANYTHING JUSTE PUT THE NAME IN THE TWO PLACE CIRCLE IN THE PICTURE`

4.2-
![Capture d'écran 2023-10-25 211707](https://github.com/Yudaol/Bruteforcer_Alert/assets/92973701/b9d15676-7fb1-4cb3-8952-1be568cb1c21)
SORRY i do a mistake you nead to presse on new at first on the left windows in the picture ;)... 
then in the list select on event on the first line on the seconde line select security then microsoft windows security auditing then on event id put ```4625```

4.3-
![Capture d'écran 2023-10-25 211826](https://github.com/Yudaol/Bruteforcer_Alert/assets/92973701/d1403dbe-8b8d-43f3-adad-cb19d43ce1bf)
SORRY i make for the second time a mistake you need to create on so press on new now i will do it in not 1,2,3 but 3,1,2
so 

3- select in the list Start an programme on anything that start a programme then 

1- click on browse and go to the powershell path `C:\Windows\System32\WindowsPowerShell\v1.0 and select powershell.exe`

2- put your path to the bruteforcealert.bat BE CAREFUL THE .BAT FILE NOT THE .PS1 I AM WORKING ON A MORE SIMPLE VERSION WHERE YOU DO NOT NEED TO PRESS EVERYTIME ON THE ADMIN POP UP when you put your path to the bat file presse ok and another time ok and restart to complete all your stuff

IF YOU WANNA TEST THIS BAD STUFF ACTIVATE remote Desktop connection ON SETTINGS AND SELECT TO ACTIVATE THIS AND ON AN OTHER PC GO TO remote Desktop connection APP AND PASTE THE IP OF YOUR COMPUTER THAT YOU NEED TO TEST AND PUT THE GOOD USERNAME BUT A WRONG PASSWORD AND YOU SHOULD SEE THE POP UP 
TO TEST THIS STUFF BOTH OF THE PC NEED TO BE ON THE SAME NETWORK

Enjoy !!
 
