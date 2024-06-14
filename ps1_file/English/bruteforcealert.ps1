# Retrieve the latest failed logon event (EventID 4625)
$event = Get-WinEvent -LogName Security -FilterXPath "*[System[EventID=4625]]" -MaxEvents 1

# Extract the attacker's IP address from the event message
$ipAddress = $event.Message -replace ".+Source Network Address:\s+(\S+).+", "`$1"

# Load the necessary assemblies to display a dialog box
Add-Type -AssemblyName PresentationCore, PresentationFramework

# Define the alert message and the dialog box title
$message = "Brute Force attack detected.`nIP Address of the attacking PC: $ipAddress"
$title = "Security Alert"

# Display the dialog box with the alert message
[void][System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")
[System.Windows.Forms.MessageBox]::Show($message, $title, [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Exclamation)
