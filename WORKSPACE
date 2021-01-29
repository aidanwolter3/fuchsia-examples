load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")

# Fuchsia Bazel SDK.
git_repository(
  name = "fuchsia_sdk_downloader",
  commit = "ab0a75aff80665670a9125a3a7850f2d3882967e",
  remote = "https://github.com/aidanwolter3/fuchsia-sdk-downloader",
)

load("@fuchsia_sdk_downloader//:download.bzl", "download_fuchsia_sdk")
download_fuchsia_sdk(
    name = "fuchsia_sdk",
)

load("@fuchsia_sdk//build_defs:fuchsia_setup.bzl", "fuchsia_setup")
fuchsia_setup(with_toolchain = True)
