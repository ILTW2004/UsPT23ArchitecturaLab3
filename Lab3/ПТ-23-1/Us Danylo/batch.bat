rem Make directory batch
mkdir batch
rem Go to the batch
cd batch
rem Make 2 directory Hidden folder and Not hidden folder
mkdir "Hidden folder"
mkdir "Not hidden folder"
rem Add attribute to the Hidden folder
attrib +h "Hidden folder"
rem Add text to the text file copyhelp.txt
xcopy /? > ".\Not hidden folder\copyhelp.txt"
rem Copy file copyhelp.txt to directory Hidden folder to copied_copyhelp.txt
xcopy ".\Not hidden folder\copyhelp.txt" ".\Hidden folder\copied_copyhelp.txt"
pause