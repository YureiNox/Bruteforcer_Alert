$event = Get-WinEvent -LogName Security -FilterXPath "*[System[EventID=4625]]" -MaxEvents 1
$ipAdresse = $event.Message -replace ".+Adresse réseau source :\s+(\S+).+", "`$1"
Add-Type -AssemblyName PresentationCore, PresentationFramework;
$message = "Brute Force attack detected.`nIP Adresse of the hunter pc : $ipAdresse"; $title = "Security Alert";
[void][System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms"); [System.Windows.Forms.MessageBox]::Show($message, $title, [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Exclamation);
