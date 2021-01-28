load("download_fuchsia_sdk.bzl", "download_fuchsia_sdk")
download_fuchsia_sdk(
    name = "fuchsia_sdk",
)

load("@fuchsia_sdk//build_defs:fuchsia_setup.bzl", "fuchsia_setup")
fuchsia_setup(with_toolchain = True)
