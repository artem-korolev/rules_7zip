load("@rules_7zip//:fetch_qt.bzl", "setup_7zip")

def _7zip_impl(ctx):
    for mod in ctx.modules:
        if mod.name == "rules_7zip":
            setup_7zip()

_setup = tag_class(attrs = {})

qt = module_extension(
    implementation = _7zip_impl,
    tag_classes = {
        "setup": _setup,
    },
)
