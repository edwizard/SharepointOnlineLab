# Connect to sharepoint site #
    $adminUPN="admin@M365x796596.onmicrosoft.com"
    $orgName="m365x796596"
    $userCredential = Get-Credential -UserName $adminUPN -Message "Type the password."
    Connect-SPOService -Url https://$orgName-admin.sharepoint.com -Credential $userCredential

### $json = Get-Content 'c:\scripts\site-script.json' -Raw ###
# /// When using .json-files instead of generating variables \\\ #

# Creating a variable for json script # lists and libraries
    $master = Get-Content 'C:\Users\edghol\Desktop\Powershell Scripts\SharepointOnlineLab\scripts\list-library-navlink.json' -Raw

#Creating a variable for json script # formatted list
    $slave = Get-Content 'C:\Users\edghol\Desktop\Powershell Scripts\SharepointOnlineLab\scripts\formatted-list.json' -Raw

# Creating a new theme that's available on team and communication sites
    #Add-SPOTheme -Name "Asletema" -Palette $asletema -IsInverted $false

# Create ID for Site Script #
    $id = Add-SPOSiteScript -Title "master" -Content $master -Description "test #1"

# Creating an array #
    # --- When adding more than one SiteScript to a design we have to add them to an array to function with -SiteScripts using CMDLet SPOSiteDesign.
    $siteid = ($id.id)

# Adding a new Site Design #
    # --- WebTemplate 64 is for adding team sites, 68 is for communication sites. 
    # --- The site design is static, and contents doesn't have to be...
Add-SPOSiteDesign -Title "Mal_Prosjektside" -WebTemplate "64" -SiteScripts $siteid -Description "Test #2 for standardisering av prosjektsider" 