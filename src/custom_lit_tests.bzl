load("//third_party/bazel_tools/lit:glob_lit_test.bzl", "glob_lit_tests")


def custom_lit_tests(name, data = []):
    glob_lit_tests(
        name = name,
        lit_path = "src",
        data = data + [
            "@llvm-project//mlir:mlir-opt",
            # other binary here
            "//src:custom-mlir-opt"
        ],
    )
