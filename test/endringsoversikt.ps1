$endringsoversikt = @'
{
    "$schema": "schema.json",
        "actions": [
            {
                "verb": "createSPList",
                "title": "Endringsoversikt",
                "listName": "endringsoversikt",
                "templateType": 100,
                "subactions": [
                    {
                        "verb": "SetDescription",
                        "description": "Oversikt over siste endringer"
                    },
                    {
                        "verb": "addSPField",
                        "fieldType": "Text",
                        "displayName": "Tittel",
                        "isRequired": false,
                        "addToDefaultView": true
                    },
                    {
                        "verb": "addSPField",
                        "fieldType": "Text",
                        "displayName": "Endringsnummer",
                        "addToDefaultView": true,
                        "isRequired": true
                    },
                    {
                        "verb": "addSPField",
                        "fieldType": "User",
                        "displayName": "Forespurt av",
                        "addToDefaultView": true,
                        "isRequired": true
                    },
                    {
                        "verb": "addSPField",
                        "fieldType": "DateTime",
                        "displayName": "Dato",
                        "isRequired": false
                    }
                    $schema": "http://columnformatting.sharepointpnp.com/columnFormattingSchema.json",
                    "debugMode": true,
                    "elmType": "div",
                    "attributes": {
                        "class": {
                            "operator": "?",
                            "operands": [
                                {
                                    "operator": "==",
                                    "operands": [
                                        {
                                            "operator": "toString()",
                                            "operands": [
                                                "@currentField"
                                            ]
                                        },
                                        "Done"
                                    ]
                                },
                                "sp-field-severity--good",
                                {
                                    "operator": "?",
                                    "operands": [
                                        {
                                            "operator": "==",
                                            "operands": [
                                                {
                                                    "operator": "toString()",
                                                    "operands": [
                                                        "@currentField"
                                                    ]
                                                },
                                                "In progress"
                                            ]
                                        },
                                        "sp-field-severity--low",
                                        {
                                            "operator": "?",
                                            "operands": [
                                                {
                                                    "operator": "==",
                                                    "operands": [
                                                        {
                                                            "operator": "toString()",
                                                            "operands": [
                                                                "@currentField"
                                                            ]
                                                        },
                                                        "In review"
                                                    ]
                                                },
                                                "sp-field-severity--warning",
                                                {
                                                    "operator": "?",
                                                    "operands": [
                                                        {
                                                            "operator": "==",
                                                            "operands": [
                                                                {
                                                                    "operator": "toString()",
                                                                    "operands": [
                                                                        "@currentField"
                                                                    ]
                                                                },
                                                                "Blocked"
                                                            ]
                                                        },
                                                        "sp-field-severity--severeWarning",
                                                        "sp-field-severity--blocked"
                                                    ]
                                                }
                                            ]
                                        }
                                    ]
                                }
                            ]
                        }
                    },
                    "children": [
                        {
                            "elmType": "span",
                            "style": {
                                "display": "inline-block",
                                "padding": "0 4px"
                            },
                            "attributes": {
                                "iconName": {
                                    "operator": "?",
                                    "operands": [
                                        {
                                            "operator": "==",
                                            "operands": [
                                                {
                                                    "operator": "toString()",
                                                    "operands": [
                                                        "@currentField"
                                                    ]
                                                },
                                                "Done"
                                            ]
                                        },
                                        "CheckMark",
                                        {
                                            "operator": "?",
                                            "operands": [
                                                {
                                                    "operator": "==",
                                                    "operands": [
                                                        {
                                                            "operator": "toString()",
                                                            "operands": [
                                                                "@currentField"
                                                            ]
                                                        },
                                                        "In progress"
                                                    ]
                                                },
                                                "Forward",
                                                {
                                                    "operator": "?",
                                                    "operands": [
                                                        {
                                                            "operator": "==",
                                                            "operands": [
                                                                {
                                                                    "operator": "toString()",
                                                                    "operands": [
                                                                        "@currentField"
                                                                    ]
                                                                },
                                                                "In review"
                                                            ]
                                                        },
                                                        "Error",
                                                        {
                                                            "operator": "?",
                                                            "operands": [
                                                                {
                                                                    "operator": "==",
                                                                    "operands": [
                                                                        {
                                                                            "operator": "toString()",
                                                                            "operands": [
                                                                                "@currentField"
                                                                            ]
                                                                        },
                                                                        "Has issues"
                                                                    ]
                                                                },
                                                                "Warning",
                                                                "ErrorBadge"
                                                            ]
                                                        }
                                                    ]
                                                }
                                            ]
                                        }
                                    ]
                                }
                            }
                        },
                        {
                            "elmType": "span",
                            "txtContent": "@currentField"
                        }
                    ]
                }
                    {
                        "verb": "addSPField",
                        "fieldType": "Number",
                        "displayName": "Timer",
                        "isRequired": true
                    }
                    {
                        "verb": "addSPField",
                        "fieldType": "Number",
                        "displayName": "Kost",
                        "isRequired": true
                    }
                    {
                        "verb": "addSPField",
                        "fieldType": "Text",
                        "displayName": "Merknad",
                        "isRequired": true
                    }
                ]
            }
        ],
            "bindata": { },
    "version": 1
}
'@