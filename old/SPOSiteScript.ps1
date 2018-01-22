$datasets = "vising1.ps1","visning2.ps1"
#$json = Get-Content 'c:\scripts\site-script.json' -Raw

    .\visning1.ps1
    $id = Add-SPOSiteScript -Title "Prosjektside" -Content $data -Description "Prosjektside"
    $id2 = Add-SPOSiteScript -Title "Prosjektside" -Content $data2 -Description "Prosjektside"
    $array[0] = $id.id
    $array[1] = $id2.id
    Add-SPOSiteDesign -Title "Prosjektside" -WebTemplate "64" -SiteScripts $array -Description "Prosjektside"    

