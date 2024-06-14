# Bruteforcer Alert

Detect failed connections and notify you with the IP of the person attempting to hack/connect to your PC. This script only works on Windows.

![Capture d'écran 2023-10-25 205813](https://github.com/Yudaol/Bruteforcer_Alert/assets/92973701/3e607aa6-547b-4b40-9066-1641330c7e6b)

## How to Set Up (A Little Bit Long)

### Step 1: Download and Extract Files

1. Download and extract the `Bruteforcer_Alert` package.
2. Locate `bruteforcealert.ps1` and `bruteforcealert.bat` in the `ps1_file/English` or `ps1_file/French` directory.

### Step 2: Modify the .bat File

1. Edit the `bruteforcealert.bat` file to add the path to your `bruteforcealert.ps1` file.
   
   ![Modify .bat file](https://github.com/Yudaol/Bruteforcer_Alert/assets/92973701/af9555da-e4f2-49fb-b71e-4dd9ba65c87c)

### Step 3: Configure Local Group Policy

1. Open Local Group Policy Editor (Win + R > `gpedit.msc`).
2. Navigate to: `Windows settings > Security settings > Advanced Audit Policy Configuration > System Audit Policies > Logon/Logoff`.
3. Double-click on `Audit Logon` and configure as follows:
    - Select "Configure the following audit events:"
    - Check both "Success" and "Failure".

### Step 4: Set Up Task Scheduler

1. Open Task Scheduler and click on "Create Task".
2. Follow the steps below to configure the task:

#### General Tab

![General Tab](https://github.com/Yudaol/Bruteforcer_Alert/assets/92973701/7580eb5d-8c6d-4fde-ab41-66a37fad0824)
- Ensure the name is filled in both circled areas.

#### Triggers Tab

1. Click "New".
2. Configure as follows:
    - Begin the task: "On an event".
    - Log: "Security".
    - Source: "Microsoft Windows security auditing".
    - Event ID: `4625`.

   ![Triggers Tab](https://github.com/Yudaol/Bruteforcer_Alert/assets/92973701/b9d15676-7fb1-4cb3-8952-1be568cb1c21)

#### Actions Tab

1. Click "New".
2. Configure as follows:
    - Action: "Start a program".
    - Program/script: Browse to `C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe`.
    - Add arguments: Add the path to your `bruteforcealert.bat` file.

   ![Actions Tab](https://github.com/Yudaol/Bruteforcer_Alert/assets/92973701/d1403dbe-8b8d-43f3-adad-cb19d43ce1bf)

### Testing

To test the setup:
1. Enable Remote Desktop Connection in settings.
2. From another PC, use the Remote Desktop Connection app to attempt a connection with the correct username but an incorrect password.
3. Both PCs must be on the same network.

### Enjoy!

If you encounter any issues or have suggestions for improvement, feel free to open an issue on GitHub.
