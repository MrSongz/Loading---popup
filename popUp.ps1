cls

[string]$Titre = Read-Host("Quel est le titre de la pop up ?")
[string]$Message = Read-Host("Quel est le texte du message ?")
[int]$typeBouton = Read-Host("Quel est le type de Bouton ?`n`n[1] - Ok/Cancel`n[2] - Abort/Retry/Ignore`n[3] - Yes/No/Cancel`n[4] - Yes/No`n[5] - Retry/Cancel`n")
[int]$Icone = Read-Host("Quel est le type d'icone ?`n`n[16] - Erreur`n[32] - Question`n[48] - Avertissement`n[64] - Information`n")
    

# Charger la biblithèque d'objets graphiques Windows.Forms
[System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms") | Out-Null

# Afficher la boite de dialogue et renvoyer la valeur de retour (bouton appuyé)
$Reponse = [System.Windows.Forms.MessageBox]::Show($Message, $Titre , $typeBouton, $Icone)

#[System.Windows.Forms.MessageBox]::Show("hello", "bonjour" ,3, 32)