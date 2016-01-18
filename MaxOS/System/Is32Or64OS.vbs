Option Explicit

Dim intAddressWidth
Dim colItems, objItem, objWMIService
Dim strMsg



Set objWMIService = GetObject( "winmgmts://./root/cimv2" )
If Err Then ShowError

Set colItems = objWMIService.ExecQuery( "SELECT * FROM Win32_Processor", , 48 )
If Err Then ShowError

For Each objItem in colItems
	intAddressWidth = objItem.AddressWidth
	strMsg = "Windows  " & vbTab & ": " & intAddressWidth   & "-bit" & vbCrLf _
	       & "Processor" & vbTab & ": " & objItem.DataWidth & "-bit"
Next

On Error Goto 0

WScript.Echo strMsg

WScript.Quit intAddressWidth

Sub ShowError
	WScript.Echo "Error #" & err.Number & ": " & Err.Description
	WScript.Quit 1
End Sub
