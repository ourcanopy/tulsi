load("@build_bazel_rules_apple//apple:resources.bzl", "apple_resource_group")

licenses(["notice"])  # Apache 2.0

package(default_visibility = ["//:__subpackages__"])

exports_files(
    ["WORKSPACE"],
)

genrule(
    name = "aspect_build",
    srcs = [":tulsi/aspect.BUILD"],
    outs = ["tulsi/BUILD"],
    cmd = "cp $< $@",
    visibility = ["//visibility:private"],
)

apple_resource_group(
    name = "tulsi",
    structured_resources = [
        "tulsi/tulsi_aspects.bzl",
        "tulsi/tulsi_aspects_paths.bzl",
        ":aspect_build",
    ],
)
