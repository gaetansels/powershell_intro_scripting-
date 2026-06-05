<#
Opdracht 1: Het basis object aanmaken en uitlezen
Je doel:
Maak een variabele $mijnAuto aan als een [PSCustomObject].
Geef het de volgende eigenschappen: Merk = 'BMW', Model = 'X5', Kleur = 'Zwart'.
Toon daarna in de console alleen het merk van de auto met behulp van de punt-notatie (dot notation).
#>

#voorbeeld 2.3.3 Custom Objects:
$mijnAdres = [PSCustomObject]@{straat='Hoge Weg';huisnummer=11;stad='Brugge'}
#voorbeeld voor info te vragen : 
$mijnAdres.straat

#opdracht 1 : 
$mijnauto = [PSCustomobject]@{ Merk = 'BMW'; Model = 'X5'; Kleur = 'Zwart'}
#alleen merk
$mijnauto.merk

<#
Opdracht 2: Een eigenschap aanpassen aan een bestaand object
Je doel:
1. Voeg aan je bestaande $mijnauto object een nieuwe eigenschap Prijs toe met waarde 75000.
2. Overschrijf daarna de Kleur van 'Zwart' naar 'Rood' via dot notation.
3. Toon tenslotte het volledige object $mijnauto om te controleren of beide wijzigingen zijn doorgevoerd.
#>

<#
💡 Hint 1: Nieuwe eigenschap toevoegen werkt met dezelfde dot-notation: $object.NieuweEigenschap = waarde
💡 Hint 2: Overschrijven werkt identiek: $object.BestaandeEigenschap = nieuwe_waarde
💡 Hint 3: Als je het volledige object wilt zien, typ je gewoon $mijnauto (zonder punt erachter).
Tip: Je mag dit testen in je ISE script door lijnen 18-21 toe te voegen onder je bestaande code, of direct in de console.
#>

# 1. Voeg aan je bestaande $mijnauto object een nieuwe eigenschap Prijs toe met waarde 75000.

# get help
get-help Add-Member -Examples
