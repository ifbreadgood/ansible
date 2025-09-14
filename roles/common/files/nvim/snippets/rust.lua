return {
    s({ trig = "l" }, {
        t("let "), i(1, "variable"), t(" = "), i(0),
    }),
    s({ trig = "lm" }, {
        t("let mut "), i(1, "variable"), t(" = "), i(0),
    }),
    s({ trig = "c" }, {
        t("const "), i(1, "variable"), t(" = "), i(0),
    }),
    s({ trig = "p" }, {
        t("println!(\""), i(1, "content"), t("\""), i(2), t(");"), i(0),
    }),

    -- # macros
    s({ trig = "#d" }, {
        t("#[derive("), i(0), t(")]"),
    }),
    s({ trig = "#ds" }, {
        t("#[derive(Serialize))]"),
    }),
    s({ trig = "#dsd" }, {
        t("#[derive(Serialize, Deserialize)]"),
    }),
    s({ trig = "#dd" }, {
        t("#[derive(Deserialize)]"),
    }),
    s({ trig = "#t" }, {
        t("#[tokio::main]"), 
    }),
    s({ trig = "#ct" }, {
        t("#[cfg(test)]"),
        t({ "", "mod test {" }),
        t({ "", "\t" }), i(0),
        t({ "", "}" }),
    }),

    -- test
    s({ trig = "a" }, {
        t("assert!("), i(0), t(");"),
    }),
    s({ trig = "an" }, {
        t("assert_ne!("), i(1, "lhs"), i(0, "rhs"), t(");"),
    }),
    s({ trig = "ae" }, {
        t("assert_eq!("), i(1, "lhs"), i(0, "rhs"), t(");"),
    }),

    -- types
    s({ trig = "tr" }, {
        t("Result<"), i(1, "String"), t(","), i(2, "err"), t(">"),
    }),
    s({ trig = "to" }, {
        t("Option<"), i(1, "String"), t(">"),
    }),
    s({ trig = "ts" }, {
        t("&str"),
    }),
    s({ trig = "tss" }, {
        t("String"),
    }),

    -- function
    s({ trig = "f" }, {
        t({ "fn " }), i(1, "name"), t(" {"),
        t({ "", "\t" }), i(0),
        t({ "", "}" }),
    }),
    s({ trig = "fa" }, {
        t({ "async fn " }), i(1, "name"), t(" {"),
        t({ "", "\t" }), i(0),
        t({ "", "}" }),
    }),
    s({ trig = "fp" }, {
        t({ "pub fn " }), i(1, "name"), t(" {"),
        t({ "", "\t" }), i(0),
        t({ "", "}" }),
    }),
    s({ trig = "fap" }, {
        t({ "pub async fn " }), i(1, "name"), t(" {"),
        t({ "", "\t" }), i(0),
        t({ "", "}" }),
    }),
    s({ trig = "ft" }, {
        t("#[test]"),
        t({ "", "fn " }), i(1, "name"), t("() {"),
        t({ "", "\t" }), i(0),
        t({ "", "}" }),
    }),
    s({ trig = "fat" }, {
        t("#[test]"),
        t({ "", "async fn " }), i(1, "name"), t("() {"),
        t({ "", "\t" }), i(0),
        t({ "", "}" }),
    }),
    s({ trig = "fn" }, {
        t({ "fn new() -> Self {" }),
        t({ "", "\t" }), i(0),
        t({ "", "}" }),
    }),

    -- struct & interface
    s({ trig = "s" }, {
        t("struct "), i(1, "name"), t(" {"),
        t({ "", "\t" }), i(0),
        t({ "", "}" }),
    }),
    s({ trig = "si" }, {
        t("impl "), i(1, "interface"), t(" for "), i(2, "struct"), t(" {"),
        t({ "", "\t" }), i(0),
        t({ "", "}" }),
    }),
    s({ trig = "i" }, {
        t("impl "), i(1, "name"), t(" {"),
        t({ "", "\t" }), i(0),
        t({ "", "}" }),
    }),

    -- match
    s({ trig = "m" }, {
        t("match "), i(1, "item"), t(" {"),
        t({ "", "\t" }), i(0),
        t({ "", "}" }),
    }),
    s({ trig = "mo" }, {
        t("match "), i(1, "item"), t(" {"),
        t({ "", "\tSome(" }), i(2, "item"), t(") => "), i(3, "action"), t(","),
        t({ "", "\tNone => " }), i(0), t(","),
        t({ "", "}" }),
    }),
    s({ trig = "mr" }, {
        t("match "), i(1, "item"), t(" {"),
        t({ "", "\tOk(" }), i(2, "item"), t(") => "), i(3, "action"), t(","),
        t({ "", "\tErr(" }), i(4, "err"), t(") => "), i(5, "action"), t(","),
        t({ "", "}" }),
    }),
}
