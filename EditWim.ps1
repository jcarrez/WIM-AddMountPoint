$WIM = Get-ChildItem -Path $PWD -Filter "*.wim"

if (-not(Test-Path .\mount -PathType Container)) {
    New-Item -ItemType Directory -Path .\mount | Out-Null
}

foreach ($IMAGE in $WIM) {
    Write-Host "Image - $IMAGE"
    Write-Host "DISM - Montage de l'image"
    DISM /Mount-Image /ImageFile:$IMAGE /Index:1 /MountDir:.\mount | Out-Null
    if ($LASTEXITCODE -ne 0) {
        Write-Host "DISM - Une erreur est survenue"
        exit 1
    }
    
    Write-Host "winpeshl.ini - Ajout du point de montage"
    $FILE = Get-Content -Path .\mount\Windows\System32\winpeshl.ini
    $FILE = $FILE[0..1] + "%SYSTEMROOT%\System32\sMount.cmd" + $FILE[(2..($FILE.Count -1))]
    $FILE | Set-Content -Path .\mount\Windows\System32\winpeshl.ini
    
    Write-Host "Copy - Copie des fichiers"
    Copy-Item .\Files\Mount.cmd .\mount\Windows\System32\
    Copy-Item .\Files\sMount.cmd .\mount\Windows\System32\
    Copy-Item .\Files\Mount.cmd .\mount\
    Copy-Item .\credentials.ini .\mount\Windows\System32\

    Write-Host "DISM - Sauvegarde de l'image"
    DISM /UnMount-Image /MountDir:.\mount /Commit | Out-Null
    if ($LASTEXITCODE -ne 0) {
        Write-Host "DISM - Une erreur est survenue"
        exit 1
    }
}