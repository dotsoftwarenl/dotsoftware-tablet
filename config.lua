Config = {
    ["Tablet"] = {
        ["EnableEpd"] = true, -- Wil je de Epd tablet in of uitgeschakeld hebben
        ["EnableMeos"] = true, -- Wil je de Meos tablet in of uitgeschakeld hebben
    },
    ["EnableAnimations"] = true, -- Wil je tablet animaties in of uitgeschakeld hebben
    ["Commands"] = {
        ["Epd"] = {
            ["Enabled"] = true, -- Wil je Epd command in of uitgeschakeld hebben
            ["command"] = "epd", -- Welk command moet een speler typen om het Epd te mogen gebruiken
        },
        ["Meos"] = {
            ["Enabled"] = true, -- Wil je Meos tablet in of uitgeschakeld hebben
            ["command"] = "meos", -- Welk command moet een speler typen om het Meos te mogen gebruiken
        },
    }
}