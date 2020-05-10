load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")

# Fuchsia Bazel SDK.
git_repository(
  name = "fuchsia_sdk",
  commit = "0c9ea1e2c02f4801b8aa0cf0bbd345d50c8098fe",
  shallow_since = "1589105840 -0700",
  remote = "https://github.com/aidanwolter3/fuchsia-bazel-sdk",
)

load("@fuchsia_sdk//build_defs:fuchsia_setup.bzl", "fuchsia_setup")
fuchsia_setup(with_toolchain = True)
