# Options

$jsontext = @"

[

	{
		"Program": "Notepad",
		"EXE": "c:\\windows\\notepad.exe"
	},
	
	{
		"Program": "Notepad++",
		"EXE": "C:\\Program Files (x86)\\Notepad++\\Notepad++.exe"
	},

	{
		"Program": "Notepad++ 2",
		"EXE": "C:\\Program Files (x86)\\Notepad++\\Notepad++.exe"
	},

	{
		"Program": "Write",
		"EXE": "c:\\windows\\write.exe"
	},

	{
		"Program": "Internet Explorer",
		"EXE": "C:\\Program Files\\Internet Explorer\\iexplore.exe"
	},
	
	{
		"Program": "Chrome",
		"EXE": "C:\\Program Files (x86)\\Google\\Chrome\\Application\\chrome.exe"
	}

]


"@


# --------------------
#   Do not edit anything below this.
# --------------------

$list = $jsontext | convertfrom-json
$button_y = 25
$button_kerning = 10

# File name from command line argument
$targetfile = $args[0] 
if (!$targetfile) {write-host "Missing argument. The program does not know which file to open. Use the command line to specify the file (menu.exe file.txt) or drag a file over menu.exe" -foregroundcolor red; exit}
#if (![System.IO.File]::Exists($targetfile)) {write-host "File does not exist" -foregroundcolor red; exit}

     
    Add-Type -AssemblyName System.Windows.Forms 
    Add-Type -AssemblyName System.Drawing 
    $MyForm = New-Object System.Windows.Forms.Form 
    $MyForm.Text="Open with" 
	$ysize = 50 + ($list.length * ($button_y + $button_kerning))
	
    $MyForm.Size = New-Object System.Drawing.Size(320,$ysize) 
	
	
	$mbutton=@(New-Object System.Windows.Forms.Button)
	
	$y=10 # Position of button kerning from top

	
	foreach ($program in $list) {
		
		
		
        $mButton = [System.Windows.Forms.Button]@{ 
                Text=$program.program;
                Top=$y.ToString(); #position of button
                Left="25";
                Anchor="Left,Top";
				Size = New-Object System.Drawing.Size(250,$button_y);
			 }

		
		$mButton.Add_Click({
			
				#iex $($program.exe) $targetfile
				iex "&`"$($program.exe)`" `"$targetfile`""
				$MyForm.close()
			
			}.GetNewClosure())

		
        $MyForm.Controls.Add($mButton) 
		$y += $button_y + $button_kerning # position of button incriment
		
	}
	
        $MyForm.ShowDialog() | Out-Null