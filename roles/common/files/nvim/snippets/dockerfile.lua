return {
    s("/base", {
        t("FROM "), i(1, "image-name"), t(":"), i(2, "image-version"),
        t({"", ""}),
        t({"", "LABEL "}), i(3, "company.application"), t".owner=", i(4, "owner"),
        t({"", "LABEL "}), extras.rep(3), t".description=", i(5, "description"),
        t({"", "LABEL "}), extras.rep(3), t".git-commit-url=", i(6, "some-url"),
        t({"", "LABEL "}), extras.rep(3), t".base-image=", extras.rep(1), t":", extras.rep(2),
        t({"", ""}),
        t({"", "WORKDIR "}), i(7, "/workdir"),
        t({"", ""}),
        t({"", "USER 1000:1000"}),
        t({"", ""}),
        t({"", "ENTRYPOINT "}), i(8, "entrypoint.sh"),
        t({"", "CMD [\""}), i(9, "mycommand.sh"), t"\"]",
    })
}
