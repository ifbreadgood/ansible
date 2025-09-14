return {
    s({ trig = "b" }, {
        t("<button>"), i(0), t("</button>"), 
    }),
    s({ trig = "d" }, {
        t("<div>"), i(0), t("</div>"), 
    }),
    s({ trig = "s" }, {
        t("<span>"), i(0), t("</span>"), 
    }),
    s({ trig = "i" }, {
        t("<label for=\""), i(1, "id"), t("\">"), i(2, "label"), t("</label>"), 
        t({"", "<input id=\""}), extras.rep(1),  t("\" type=\""), i(3, "text"), t("\" />"), 
    }),
}
