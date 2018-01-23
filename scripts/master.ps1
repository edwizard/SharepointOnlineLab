# Connect to sharepoint site #
    $adminUPN="admin@M365x796596.onmicrosoft.com"
    $orgName="m365x796596"
    $userCredential = Get-Credential -UserName $adminUPN -Message "Type the password."
    Connect-SPOService -Url https://$orgName-admin.sharepoint.com -Credential $userCredential

### $json = Get-Content 'c:\scripts\site-script.json' -Raw ###
# /// When using .json-files instead of generating variables \\\ #

# Creating a new theme that's available on team and communication sites
    Add-SPOTheme -Name "Asletema" -Palette $asletema -IsInverted $false

# Creating a variable for json script
    $navlink = Get-Content 'C:\Users\edghol\Desktop\Powershell Scripts\SharepointOnlineLab\scripts' -Raw

# Create IDs for Site Scripts #
    # --- Each lines creates an ID that we extract and add to a variable. 
    # --- All JSON scripts must excist before running master
    $id1 = Add-SPOSiteScript -Title "endringsliste" -Content $endringsliste -Description "test #1"
    $id2 = Add-SPOSiteScript -Title "internbibliotek" -Content $internbibliotek -Description "test #1"
    $id3 = Add-SPOSiteScript -Title "navlink" -Content $navlink -Description "test #1"
        # --- Not in use... --- #
        #$id4 = Add-SPOSiteScript -Title "internbibliotek" -Content $contenttypetest -Description "test #1"
        # --- Changing logo only works with communication sites --- #
        #$id5 = Add-SPOSiteScript -Title "logo" -Content $logo -Description "test #1"
        # --- Getting an unknown error when run, will troubleshoot later --- #
        #$id6 = Add-SPOSiteScript -Title "theme" -Content $theme -Description "test #1"

# Creating an array #
    # --- When adding more than one SiteScript to a design we have to add them to an array to function with -SiteScripts using CMDLet SPOSiteDesign.
    $SPOIDArray = ($id1.id, $id2.id, $id3.id)

# Adding a new Site Design #
    # --- WebTemplate 64 is for adding team sites, 68 is for communication sites.
    # --- -SiteScripts runs all variables inside $SPOIDArray and adds them to the new site. 
    # --- The site design is static, and contents doesn't have to be...
Add-SPOSiteDesign -Title "Mal_Prosjektside" -WebTemplate "64" -SiteScripts $SPOIDArray -Description "Test #1 for standardisering av prosjektsider" 