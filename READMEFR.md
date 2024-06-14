# Alerte Bruteforcer

Détectez les tentatives de connexion échouées et recevez une notification avec l'adresse IP de la personne essayant de pirater/se connecter à votre PC. Ce script fonctionne uniquement sur Windows.

![Capture d'écran 2023-10-25 205813](https://github.com/Yudaol/Bruteforcer_Alert/assets/92973701/3e607aa6-547b-4b40-9066-1641330c7e6b)

## Comment configurer (un peu long)

### Étape 1 : Télécharger et extraire les fichiers

1. Téléchargez et extrayez le package `Bruteforcer_Alert`.
2. Trouvez `bruteforcealert.ps1` et `bruteforcealert.bat` dans le répertoire `ps1_file/English` ou `ps1_file/French`.

### Étape 2 : Modifier le fichier .bat

1. Modifiez le fichier `bruteforcealert.bat` pour ajouter le chemin vers votre fichier `bruteforcealert.ps1`.
   
   ![Modifier le fichier .bat](https://github.com/Yudaol/Bruteforcer_Alert/assets/92973701/af9555da-e4f2-49fb-b71e-4dd9ba65c87c)

### Étape 3 : Configurer la stratégie de groupe locale

1. Ouvrez l'éditeur de stratégie de groupe locale (Win + R > `gpedit.msc`).
2. Naviguez jusqu'à : `Paramètres Windows > Paramètres de sécurité > Configuration avancée des stratégies d'audit > Stratégies d'audit du système > Connexion/Déconnexion`.
3. Double-cliquez sur `Audit des connexions` et configurez-le comme suit :
    - Sélectionnez "Configurer les événements d'audit suivants :"
    - Cochez à la fois "Succès" et "Échec".

### Étape 4 : Configurer le Planificateur de tâches

1. Ouvrez le Planificateur de tâches et cliquez sur "Créer une tâche".
2. Suivez les étapes ci-dessous pour configurer la tâche :

#### Onglet Général

![Onglet Général](https://github.com/Yudaol/Bruteforcer_Alert/assets/92973701/7580eb5d-8c6d-4fde-ab41-66a37fad0824)
- Assurez-vous que le nom est rempli dans les deux zones encerclées.

#### Onglet Déclencheurs

1. Cliquez sur "Nouveau".
2. Configurez-le comme suit :
    - Commencer la tâche : "Lorsqu'un événement est enregistré".
    - Journal : "Sécurité".
    - Source : "Microsoft Windows security auditing".
    - ID de l'événement : `4625`.

   ![Onglet Déclencheurs](https://github.com/Yudaol/Bruteforcer_Alert/assets/92973701/b9d15676-7fb1-4cb3-8952-1be568cb1c21)

#### Onglet Actions

1. Cliquez sur "Nouveau".
2. Configurez-le comme suit :
    - Action : "Démarrer un programme".
    - Programme/script : Parcourez jusqu'à `C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe`.
    - Ajouter des arguments : Ajoutez le chemin vers votre fichier `bruteforcealert.bat`.

   ![Onglet Actions](https://github.com/Yudaol/Bruteforcer_Alert/assets/92973701/d1403dbe-8b8d-43f3-adad-cb19d43ce1bf)

#### Activation du script

1. Faites un clic droit sur l'un des fichiers, allez dans Propriétés et sélectionnez Débloquer.
2. Faites de même avec l'autre fichier.
3. Ouvrez PowerShell en tant qu'administrateur.
4. Tapez ensuite : et appuyez sur la touche demandée pour oui
```
Set-ExecutionPolicy RemoteSigned
```

### Test

Pour tester la configuration :
1. Activez la connexion Bureau à distance dans les paramètres.
2. Depuis un autre PC, utilisez l'application Connexion Bureau à distance pour tenter une connexion avec le nom d'utilisateur correct mais un mot de passe incorrect.
3. Les deux PC doivent être sur le même réseau.

### Profitez !

Si vous rencontrez des problèmes ou avez des suggestions d'amélioration, n'hésitez pas à ouvrir un ticket sur GitHub.
