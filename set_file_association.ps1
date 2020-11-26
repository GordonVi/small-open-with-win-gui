

Function Set-FileAssociationToPowerShellScript($extension, $pathToScript) {

#Source: https://stackoverflow.com/questions/48280464/how-can-i-associate-a-file-type-with-a-powershell-script

    # first create a filetype
    $filetype = cmd /c "assoc $extension 2>NUL"
    if ($filetype) {
        # Association already exists: override it
        $filetype = $filetype.Split('=')[1]
        Write-Output "Using filetype $filetype"
    }
    else {
        # Name doesn't exist: create it
        # ".log.1" becomes "log1file"
        $filetype = "$($extension.Replace('.', ''))file"
        Write-Output "Creating filetype $filetype ($extension)"
        cmd /c "assoc $extension=$filetype"
    }
    Write-Output "Associating filetype $filetype ($extension) with $pathToScript.."
    cmd /c "ftype $filetype=powershell.exe -File `"$pathToScript`" `"%1`""
}

Set-FileAssociationToPowerShellScript("gordontext", "C:\Program Files\gordontext\menu.exe")