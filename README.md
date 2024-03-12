# WIM-AddMountPoint

## En - Table of Contents
1. [Configure Credentials](#en-configure-credentials)
2. [File Preparation](#en-file-preparation)
3. [Execution](#en-execution)
4. [Additional Notes](#en-additional-notes)
5. [Tests](#en-test)

## Fr - Table des matières
1. [Configurer les identifiants](#fr-configure-credentials)
2. [Préparation des fichiers](#fr-file-preparation)
3. [Exécution](#fr-execution)
4. [Notes additionnelles](#fr-additional-notes)
5. [Tests](#fr-test)

# EN WIM-AddMountPoint

### Description
***
The WIM-AddMountPoint repository facilitates the editing of WIM (Windows Imaging Format) images to include a network mount point. This capability is particularly useful in scenarios where network resources need to be accessed within the context of a WIM image, such as during system deployments or customized processes.
Works only with Windows PE environments.

### Utilization
***
Utilizing the tools provided in this repository is designed to be intuitive and straightforward. Follow the steps below to effectively integrate network mount points into your WIM images.


### Configure Credentials
<a name="en-configure-credentials"></a>
***
Begin by configuring the necessary connection credentials within the 'credentials.ini' file. The fields are:
* DOMAIN - The network domain.
* USER - The username to access the network share.
* PASS - The password associated with the username provided.
* SERVER - The address of the network server hosting the share.
* SHARE - The name of the network share.
* LETTER - The drive letter assigned to the mounted network share.

An example of the 'credentials.ini' file:
```
DOMAIN = WORKGROUP
USER = user
PASS = P@$$w0rd
SERVER = 192.168.8.202
SHARE = home
LETTER = A:
```

### File Preparation
<a name="en-file-preparation"></a>
***
Make sure the files you want to edit using the "WIM-AddMountPoint" tool are in the same directory as the repository files. This includes all files and folders.

### Execution
<a name="en-execution"></a>
***
To run the `WIM-AddMountPoint` tool
1. [Run PowerShell as administrator.]
2. [Navigate to the directory containing the repository files.]
3. [Execute the `EditWim.ps1` script.]

### Additional Notes
<a name="en-additional-notes"></a>
***
* **Administrative Privileges**: Make sure you have administrative privileges when running the `EditWim.ps1` script.
* **File Backup**: It's advisable to create backups of your files before using the tool, as changes to WIM images are irreversible.
* **Compatibility**: The tool is designed to work with Windows Imaging Format (WIM) files. Ensure that your files are in the correct format before attempting to modify them.
* **Dependencies**: Ensure that your system meets the necessary dependencies for running PowerShell scripts.

### Tests
<a name="en-test"></a>
***
| Application | Works ? |
|:---:|:---:|
|EaseUS Data Recovery Wizard|No|
|EaseUS Partition Master|Yes|
|EaseUS Todo Backup|No|
|Jayro's Lockpick|Yes|
|Malwarebytes|Yes, doesn't appear in file explorer. Available in address bar.|
|MiniTool Partition Wizard|Yes|
|MiniTool Power Data Recovery|No|
|MiniTool ShadowMaker|Yes|
|ShadowProtect RecoveryEnvironment|Yes|

# FR WIM-AddMountPoint

### Description
***
WIM-AddMountPoint facilite l'édition d'images WIM (Windows Imaging Format) pour inclure un point de montage réseau. Cette fonctionnalité est particulièrement utile dans les scénarios où les ressources réseau doivent être accessible dans le contexte d'une image WIM, par exemple lors de déploiements de systèmes personnalisés.
Fonctionne uniquement avec les environnements Windows PE.

### Utilisation
***
Les outils fournis dans ce dépôt sont conçus pour être intuitives et simples. Suivez les étapes ci-dessous pour intégrer efficacement les points de montage réseau dans vos images WIM.

### Configurer les identifiants
<a name="fr-configure-credentials"></a>
***
Commencez par configurer les informations de connexion nécessaires dans le fichier 'credentials.ini'. Les champs sont :
* DOMAIN - Le domaine du réseau.
* USER - Le nom d'utilisateur pour le partage réseau.
* PASS - Le mot de passe pour le partage réseau.
* SERVER - L'adresse du serveur qui héberge le partage.
* SHARE - Le nom du partage réseau.
* LETTER - La lettre a assigné au point de montage réseau.

Voici un exemple du fichier 'credentials.ini' :
```
DOMAIN = WORKGROUP
USER = user
PASS = P@$$w0rd
SERVER = 192.168.8.202
SHARE = home
LETTER = A:
```

### Préparation des fichiers
<a name="fr-file-preparation"></a>
***
Assurez-vous que les fichiers que vous avez l'intention de modifier à l'aide de `WIM-AddMountPoint` se trouvent dans le même répertoire que les fichiers du référentiel. Cela inclut tous les fichiers et dossiers.

### Exécution
<a name="fr-execution"></a>
***
Pour exécuter l'outil `WIM-AddMountPoint`
1. [Lancez PowerShell en tant qu'Administrateur.]
2. [Naviguez jusqu'au dossier contenant les fichiers du dépôt.]
3. [Exécutez le script `EditWim.ps1`.]

### Notes additionnelles
<a name="fr-additional-notes"></a>
***
* **Privilèges Administrateur**: Assurez-vous d'avoir les privilèges Administrateur quand vous exécutez le script `EditWim.ps1`.
* **Sauvegarde de fichiers**: Assurez-vous d'avoir créé des sauvegardes de vos fichiers avant d'utiliser l'outil car les modifications sont irréversibles.
* **Compatibilité**: L'outil est concu pour fonctionner avec les fichiers Windows Imaging Format (WIM). Assurez-vous que vos fichiers sont au format correct avant de tenter des modifications.
* **Dépendances**: Assurez-vous que votre système répond aux dépendances nécessaires pour exécuter des scripts Power Shell.

### Tests
<a name="fr-test"></a>
***
| Application | Fonctionne ? |
|:---:|:---:|
|EaseUS Data Recovery Wizard|Non|
|EaseUS Partition Master|Oui|
|EaseUS Todo Backup|Non|
|Jayro's Lockpick|Oui|
|Malwarebytes|Oui, n'apparaît pas dans l'explorateur de fichiers. Disponible dans la barre d'adresse.|
|MiniTool Partition Wizard|Oui|
|MiniTool Power Data Recovery|Non|
|MiniTool ShadowMaker|Oui|
|ShadowProtect RecoveryEnvironment|Oui|