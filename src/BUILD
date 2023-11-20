package(
    default_visibility = ["//visibility:public"],
    features = ["layering_check"],
)


filegroup(
    name = "litfiles",
    srcs = glob(["runlit*py"]),
    visibility = ["//src:__subpackages__"],
)

exports_files(["run_lit.sh"])


cc_binary(
    name = "main",
    srcs = ["main.cc"],
    deps = ["@llvm-project//llvm:Support"],
)

cc_binary(
    name = "custom-mlir-opt",
    srcs = [":custom-mlir-opt.cc"],
    deps = [
        "@llvm-project//llvm:AllTargetsCodeGens",
        "@llvm-project//llvm:Support",
        "@llvm-project//mlir:AllExtensions",
        "@llvm-project//mlir:AllPassesAndDialects",
        "@llvm-project//mlir:AllToLLVMIRTranslations",
        "@llvm-project//mlir:Analysis",
        "@llvm-project//mlir:IR",
        "@llvm-project//mlir:MlirOptLib",
        "@llvm-project//mlir:OpenMPDialect",
        "@llvm-project//mlir:Pass",
        "@llvm-project//mlir:QuantOps",
        "@llvm-project//mlir:SCFToGPU",
        "@llvm-project//mlir:SerializeToCubin",
        "@llvm-project//mlir:Support",
        "@llvm-project//mlir:Transforms",
    ],
)
