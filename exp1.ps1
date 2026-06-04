# powershell 

#to get the version of PowerShell 
$psversiontable.PSVersion 

# We need this policy to run custom scripts, so we click yes to all : 
Set-ExecutionPolicy RemoteSigned 

#just like with Python, you can print hello world
#cmdlet
Write-Host "hello world!" -NoNewline #this makes sure it is on the same line 
Write-Host "Hello again!"

#note in the blue space where you see the outcomes, you can execute "clear" to remove what you did before

# How do you find cmdlets?
Get-Command -CommandType Cmdlet #gives you all the comandlet's avaikabk

#piping the result of command 1 into command 2, this is combining commands done with "|"
command-1 | command-2

# example : 
"May the 4th be with you" | out-file forcewithwho.txt
ls 

# variable is an object that you can create, for example: $something = variable 
$favcharacter = "spongebob"
$favcharacter.gettype() #it should say string
# now piping 
$favcharacter | Select-Object -property * 
# * is a wildcard, so for everything, but because it is a string, it only has the length property 

#array is a collection of variables
$jedi = @('obi-wan','luke skywalker','yoda','mace windu')
# if we do gettype 
$jedi.gettype() # we will see an object[] but the base type is system.array 
#if you want to find the very first Jedi on the list : 
$jedi[0] 
# As I learned with Python, counting starts with 0, so for this list [0,1,2,3]
#this is how you add a 5th Jedi to the list, or number 4 if we count in programming/scripting 
$jedi += "bart simpson"

# Hashtables
$fellowship = @{key1 = "item1"; key2 = "item2"} 

$fellowship = @{"wizard" = "gandalf"; "hobbit" = "frodo" ; "Elf" = "Legolas"} 

# adding something to the Hashtables
$fellowship.add("dwarf", "gimli")

# Now let's edit the key value pair we have added to the Hashtables
$fellowship.set_item("dwarf", "bilbo")

#getting specific data 
$fellowship."dwarf"

# or 
$fellowship["dwarf"]

#removing 
$fellowship.remove("dwarf")

#Collecting user input with Read-Host
#user input
$favsystem = read-host -Prompt "what is your favorite nintendo gaming system?"


#options, we can't do anything with it yet 
Write-Host "1. NES"
Write-Host "2. SNES"
Write-Host "3. N64"
Write-Host "4. gamecube"
Write-Host "5. wii"
$favsystem = read-host -Prompt "what is your favorite nintendo gaming system?"

#  If... then... else conditionals
$pokemoncaught = "908"
if ($pokemoncaught -eq 908) 
    { Write-Host "you're a pokemon master!" } 
        Else {Write-Host "go catch more pokemon!"}  
        
        
# For Loops

$halopeeps = @('master chief', 'cortana', 'captain keys', 'flood')
for($counter =0; $counter -le 3;$counter++) {
    Write-Host "Holy smokes, it's" $halopeeps[$counter] 
    }
