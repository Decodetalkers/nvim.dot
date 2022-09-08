vim.filetype.add({
    extension = {
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
    },
    filename = {
        environment = "dosini",
        grub = "dosini",
        ufw = "dosini",
        qmldir = "qmljs",
        [".clang-format"] = "yaml",
        [".gitignore"] = "gitignore"
    },
    pattern = {
        ["environment.*"] = "dosini",
        ["grub.*"] = "dosini"
    }
})
