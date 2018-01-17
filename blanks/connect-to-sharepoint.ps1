$adminUPN="Administrator @ Sharepoint site"
$orgName="Tenant name/Site name"
$userCredential = Get-Credential -UserName $adminUPN -Message "Type the password."
Connect-SPOService -Url https://$orgName-admin.sharepoint.com -Credential $userCredential