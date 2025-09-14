return {
    s("/output", {
        t("output \""), i(1, "name"), t("\" {"),
        t({ "", "\tvalue = " }), i(2, "value"), i(3, ""),
        t({ "", "}" }),
        t({ "", "" }), i(0),
    }),
    s("/variable", {
        t("variable \""), i(1, "name"), t("\" {"),
        t({ "", "\ttype = " }), i(2, "string"),
        t({ "", "\tdescription = \"" }), i(3, "description"), t("\""), i(4, ""),
        t({ "", "}" }),
        t({ "", "" }), i(0),
    }),
}

