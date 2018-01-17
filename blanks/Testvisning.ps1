$testvisning = @'
{
    "$schema": "schema.json",
        "actions": [
            {
                "verb": "createSPList",
                "listName": "Testvisning",
                "templateType": 100,
                "subactions": [
                    {
                        "verb": "SetDescription",
                        "description": "Liste over dokumenter"
                    },
                    {
                        "verb": "addSPField",
                        "fieldType": "Text",
                        "displayName": "Kundenavn",
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
                        "verb": "addSPField",
                        "fieldType": "User",
                        "displayName": "Kontaktinformasjon",
                        "addToDefaultView": true,
                        "isRequired": true
                    },
                    {
                        "verb": "addSPField",
                        "fieldType": "Note",
                        "displayName": "Notater",
                        "isRequired": false
                    }
                ]
            }
        ],
            "bindata": { },
    "version": 1
}
'@