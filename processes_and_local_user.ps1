# 2.5.4 Spelen met processen 

# 1. Maak gebruik van de cmdlet Get-ChildItem om de locatie van het programma Notepad.exe terug te vinden onder de folder c:\Windows.

# help
get-help Get-ChildItem -Examples 
#  Example 8: Get items using the Depth parameter : 
 Get-ChildItem -Path C:\Parent -Depth 2
 # chaning example
 Get-ChildItem -Path c:\Windows -Filter *notepad*

 <# 2. Start Notepad.exe op via een cmdlet. Herhaal deze actie 4 x. Normaal kunnen we een cmdlets 
 automatisch herhalen door te werken met een controlestructuur. Dit onderwerp snijden we aan 
naar het einde van de module toe. 
 #>

 # help 
get-help get-command -Examples

#Example 11: Get all instances of the Notepad command 
Get-Command Notepad -All | Format-Table CommandType, Name, Definition

# trying to get help for specifically what I want 
Get-Command *start*
# cmdlets 
get-help Start-Process
# help again
get-help Start-Process -Examples
# Example 1: Start a process that uses default values
Start-Process -FilePath "sort.exe"
# starting Notepad
Start-Process -FilePath "Notepad.exe"

#  4 x start notepad 
Start-Process -FilePath c:\Windows\Notepad.exe

# Controlestructuren

for($i = 0 ; $i -lt 4; $i++)
{
 Start-Process -FilePath c:\Windows\Notepad.exe
}

 <# info from ai : 
 Een for-lus bestaat altijd uit 3 delen tussen de haakjes ( ), gescheiden door puntkomma's ;:
1) Initialisatie → een teller die een getal krijgt (bijv. $i = 0)
2) Voorwaarde → zolang dit waar is, draait de lus (bijv. $i -lt 4)
3) Increment → hoe de teller elke ronde verandert (bijv. $i++)

het commando dat je wilt herhalen moet binnen de accolades { } staan.
  #>


# 3. Vraag alle Notepad processen op. 

# help
Get-Help Get-Process -Examples
# Example 2: Display detailed information about one or more processes
Get-Process winword, explorer | Format-List *
#  Example 7: Get modules loaded with the specified process ---------
    
    ```powershell
    Get-Process -Name SQL* -Module
    ```
    
    This command uses the **Module** parameter to get the modules loaded by all processes with a name
    beginning with `SQL`.

# alle Notepad processen
Get-Process *Notepad*  

# 4. Stop nu alle Notepad processen via 1 cmdlet. 
get-help Stop-Process -Examples
Stop-Process -Name "notepad"


--------------------------------------------------------

# 2.5.5 Lokale gebruikers 
