<# This form was created using POSHGUI.com  a free online gui designer for PowerShell
.NAME
    Check_review
#>

Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Application]::EnableVisualStyles()

$Form                            = New-Object System.Windows.Forms.Form
$Form.ClientSize                 = '400,400'
$Form.text                       = "Form"
$Form.TopMost                    = $false

$TextBox1                        = New-Object System.Windows.Forms.TextBox
$TextBox1.multiline              = $false
$TextBox1.width                  = 243
$TextBox1.height                 = 20
$TextBox1.location               = New-Object System.Drawing.Point(68,64)
$TextBox1.Font                   = 'Microsoft Sans Serif,10'

$Button1                         = New-Object System.Windows.Forms.Button
$Button1.text                    = "Click it."
$Button1.width                   = 60
$Button1.height                  = 30
$Button1.location                = New-Object System.Drawing.Point(154,116)
$Button1.Font                    = 'Microsoft Sans Serif,10'

$Label1                          = New-Object System.Windows.Forms.Label
$Label1.text                     = "Random Label"
$Label1.AutoSize                 = $true
$Label1.width                    = 25
$Label1.height                   = 10
$Label1.location                 = New-Object System.Drawing.Point(174,233)
$Label1.Font                     = 'Microsoft Sans Serif,10'

$Form.controls.AddRange(@($TextBox1,$Button1,$Label1))


#show form

$Form.Add_Shown({$Form.Activate()})
[void] $Form.ShowDialog()