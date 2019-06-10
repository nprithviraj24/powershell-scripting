#Load required assemblies
[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")

#Drawing form and controls. Create variable with $
$Form_HelloWorld = New-Object System.Windows.Forms.Form
    $Form_HelloWorld.Text = "Hello World"
    $Form_HelloWorld.Size = New-Object System.Drawing.Size(272,160)
    $Form_HelloWorld.FormBorderStyle = "FixedDialog"
    $Form_HelloWorld.TopMost = $true
    $Form_HelloWorld.MaximizeBox = $true
    $Form_HelloWorld.MinimizeBox = $true
    $Form_HelloWorld.ControlBox = $true
    $Form_HelloWorld.StartPosition = "CenterScreen"
    $Form_HelloWorld.Font = "Segoe UI"

#adding a label 
$label_HelloWorld = New-Object System.Windows.Forms.Label
    $label_HelloWorld.Location =  New-Object System.Drawing.Size(8,8)
    $label_HelloWorld.Size = New-Object System.Drawing.Size(240,32)
    $label_HelloWorld.TextAlign = "MiddleCenter"
    $label_HelloWorld.Text = "Hello World"
    $Form_HelloWorld.Controls.Add($label_HelloWorld)


#show form

$Form_HelloWorld.Add_Shown({$Form_HelloWorld.Activate()})
[void] $Form_HelloWorld.ShowDialog()