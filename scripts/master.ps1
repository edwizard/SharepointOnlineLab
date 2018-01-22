# Connect to sharepoint site #
    $adminUPN="admin@M365x796596.onmicrosoft.com"
    $orgName="m365x796596"
    $userCredential = Get-Credential -UserName $adminUPN -Message "Type the password."
    Connect-SPOService -Url https://$orgName-admin.sharepoint.com -Credential $userCredential

### $json = Get-Content 'c:\scripts\site-script.json' -Raw ###
# /// When using .json-files instead of generating variables \\\ #

# Create IDs for Site Scripts #
    # --- Each lines creates an ID that we extract and add to a variable. 
    $id1 = Add-SPOSiteScript -Title "endringsliste" -Content $endringsliste -Description "test #1"
    $id2 = Add-SPOSiteScript -Title "internbibliotek" -Content $internbibliotek -Description "test #2"

# Creating an array #
    # --- When adding more than one SiteScript to a design we have to add them to an array to function with -SiteScripts using CMDLet SPOSiteDesign.
    $SPOIDArray = Array($id1.id, $id2.id)

# Adding a new Site Design #
    # --- WebTemplate 64 is for adding team sites, 68 is for communication sites.
Add-SPOSiteDesign -Title "Mal_Prosjektside" -WebTemplate "64" -SiteScripts $SPOIDArray -Description "Test #1 for standardisering av prosjektsider" 