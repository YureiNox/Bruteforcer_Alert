$event = Get-WinEvent -LogName Security -FilterXPath "*[System[EventID=4625]]" -MaxEvents 1
$ipAdresse = $event.Message -replace ".+Adresse réseau source :\s+(\S+).+", "`$1"
Add-Type -AssemblyName PresentationCore, PresentationFramework;
$message = "Tentative d'attaque par force brute detectee.`nAdresse IP de l'attaquant : $ipAdresse"; $title = "Alerte de securite";
[void][System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms"); [System.Windows.Forms.MessageBox]::Show($message, $title, [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Exclamation);
