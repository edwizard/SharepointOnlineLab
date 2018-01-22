$internbibliotek = @'
{
    "$schema": "schema.json",
        "actions": [
            {
                "verb": "createSPList",
                "listName": "internbibliotek",
                "templateType": 100,
                "subactions": [
                    {
                        "verb": "SetDescription",
                        "description": "visning1"
                    },
                    {
                        "verb": "addSPField",
                        "fieldType": "Text",
                        "displayName": "Navn",
                        "isRequired": false,
                        "addToDefaultView": true
                    },
                    {
                        "verb": "addSPField",
                        "fieldType": "Number",
                        "displayName": "Antall",
                        "addToDefaultView": true,
                        "isRequired": true
                    },
                    {
                        "verb": "addContentType",
                        "name": "PID",
                        "fieldType": "Text",
                        "displayName": "Prosjekt ID",
                        "addToDefaultView": true,
                        "isRequired": true
                    },
                    {
                        "verb": "addSPField",
                        "fieldType": "User",
                        "displayName": "Kontakt",
                        "addToDefaultView": true,
                        "isRequired": true
                    },
                    {
                        "verb": "addSPField",
                        "fieldType": "Note",
                        "displayName": "Kommentar",
                        "isRequired": false
                    }
                ]
            }
        ],
            "bindata": { },
    "version": 1
}
'@