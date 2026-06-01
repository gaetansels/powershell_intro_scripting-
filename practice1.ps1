# 2.5.3 Maak gebruik van de New-Item cmdlet 

# Maak op een schijf naar keuze een directory ‘ps-test’ 
Get-Help New-Item -Examples
# voorbeeld 
New-Item -ItemType "Directory" -Path "C:\ps-test"

# Maak op een efficiënte manier (in 2 lijnen) 5 testfiles aan in je ‘ps-test’ directory (array)

#voorbeeld 
New-Item -ItemType "File" -Path "C:\ps-test\test.txt", "C:\ps-test\Logs\test.log"

# maak een array van 2 lijnen voor 5 items 

$testfiles = @('C:\ps-test\testfile1.txt','C:\ps-test\testfile2.txt','C:\ps-test\testfile3.txt','C:\ps-test\testfile4.txt','C:\ps-test\testfile5.txt')
New-Item -ItemType "file" -Path $testfiles

# Maak op een efficiënte manier 5 testfiles aan. De naam van de testfile haal je uit een *.txt bestand 
# dat je manueel hebt aangemaakt (TIP: gebruik eveneens de cmdlet Get-Content). 

# get help 
Get-Help New-Item -Examples
Get-Help Get-Content -Examples

#cmdlet 
# part 1 reading the content : 

get-content (Get-ChildItem C:\scripts\text-file-list\read.txt) # als je dit gebruikt krijg je een object terug en moet er een extra stap gebeuren

get-content "C:\scripts\text-file-list\read.txt"

 
#part 2 reading + creating 

New-Item -ItemType "File" -Path (get-content "C:\scripts\text-file-list\read.txt") 
 
# locatie map 

Get-Location # word gemaakt in user admin

pwd

# I want a better location : cd is used to set location so : 
cd C:\scripts\readingmap
New-Item -ItemType "File" -Path (get-content "C:\scripts\text-file-list\read.txt") 
# werkt ook met +100 nieuwe files 

# help with paramaters
Get-Help New-Item -Parameter ItemType

# overwriting files , help 

Get-Help New-Item -Parameter *

<#
-Force [<System.Management.Automation.SwitchParameter>]
    Forces this cmdlet to create an item that writes over an existing read-only item.
#>

# force parameter with the get-help : 
# which cmdlet support the parameter force :
Get-Command -ParameterName force
# look at how the force parameter works with the cmdlet we are using (new-item) : 
Get-Help New-Item -Parameter force
# get help 
Get-Help New-Item -Examples # example 9 : 
New-Item ./TestFile.txt -ItemType File -Value 'This is just a test file'

  New-Item ./TestFile.txt -ItemType File -Force

# 5. Voer het vorige cmdlet opnieuw uit maar overschrijf deze 150 files en geef ze een kleine inhoud (waarde).
cd C:\scripts\readingmap
New-Item -Path (get-content "C:\scripts\text-file-list\ORead.txt") -value "test" -force

# not working , below I will try to understand why : 
(Get-Content "C:\scripts\text-file-list\ORead.txt") | ForEach-Object { "[$_]" }

(Get-Content "C:\scripts\text-file-list\ORead.txt") | ForEach-Object { $_.Length }


