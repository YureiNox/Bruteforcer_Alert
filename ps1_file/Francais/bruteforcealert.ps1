# Récupérer le dernier événement de validation des informations d'identification (EventID 4625) ou 4776 pour Credentials Validation
$event = Get-WinEvent -LogName Security -FilterXPath "*[System[EventID=4776]]" -MaxEvents 1

# Extraire l'adresse IP de l'attaquant à partir du message de l'événement
$ipAdresse = $event.Message -replace ".+Adresse réseau source :\s+(\S+).+", "`$1"

# Charger les bibliothèques nécessaires pour afficher une boîte de dialogue
Add-Type -AssemblyName PresentationCore, PresentationFramework

# Définir le message d'alerte et le titre de la boîte de dialogue
$message = "Tentative d'attaque par force brute detectee.`nAdresse IP de l'attaquant : $ipAdresse"
$title = "Alerte de securite"

# Afficher la boîte de dialogue avec le message d'alerte
[void][System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")
[System.Windows.Forms.MessageBox]::Show($message, $title, [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Exclamation)
