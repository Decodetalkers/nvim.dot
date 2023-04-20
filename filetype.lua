vim.filetype.add({
    extension = {
        njk = "html",
        qml = "qmljs",
        qmltypes = "qmljs",
        qmlproject = "qmljs",
        conf = "dosini",
        service = "dosini",
        ini = "dosini",
        timer = "dosini",
        vala = "vala",
        vapi = "vala",
        qrc = "xml",
        tex = "tex",
        mpp = "cpp",
        slint = "slint",
        qss = "css",
        agda = "agda",
        dox = "doxygen",
        pam = "dosini",
        gyp = "jsonc",
        vert = "glsl",
        frag = "glsl",
        rkt = "racket",
        pc = "PKGBUILD",
        gdextension = "toml",
        uml = "plantuml",
        theme = "dosini",
    },
    filename = {
        environment = "dosini",
        grub = "dosini",
        ufw = "dosini",
        qmldir = "qmldir",
        [".clang-format"] = "yaml",
        [".gitignore"] = "gitignore",
    },
    pattern = {
        ["environment.*"] = "dosini",
        ["fstab.*"] = "fstab",
    },
})
