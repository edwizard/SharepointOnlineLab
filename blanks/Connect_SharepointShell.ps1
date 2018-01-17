$adminUPN="admin@M365x796596.onmicrosoft.com"
$orgName="m365x796596"
$userCredential = Get-Credential -UserName $adminUPN -Message "Type the password."
Connect-SPOService -Url https://$orgName-admin.sharepoint.com -Credential $userCredential