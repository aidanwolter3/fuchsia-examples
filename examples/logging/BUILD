load("@fuchsia_sdk//build_defs:cc_binary_component.bzl", "cc_binary_component");
load("@fuchsia_sdk//build_defs:package.bzl", "fuchsia_package");

cc_binary(
    name = "logging_exe",
    srcs = [ "main.cc" ],
)

cc_binary_component(
    name = "logging_component",
    component_name = "logging",
    manifest = "meta/logging.cmx",
    deps = [ ":logging_exe" ],
)

fuchsia_package(
    name = "logging",
    deps = [ ":logging_component" ],
)
