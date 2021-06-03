"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2021-06-01T09:54:05Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/8d3ab5f22b8f4a29f3f32c8fbdcc777589d91042.zip",
           "https://github.com/bazelbuild/rules_cc/archive/8d3ab5f22b8f4a29f3f32c8fbdcc777589d91042.zip"
      ],
      strip_prefix = "rules_cc-8d3ab5f22b8f4a29f3f32c8fbdcc777589d91042",
      sha256 = "cd8ca809efaa9c48ad9fd7fed287abc53d33e9bc2b77f22eb35cce3e9d737a58",
    )

    # ********** rules_python *****************
    http_archive(
      name = "rules_python",  # 2021-05-25T23:42:32Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/c6970fc44877dbbbce84d17845d9bc797aefe299.zip",
           "https://github.com/bazelbuild/rules_python/archive/c6970fc44877dbbbce84d17845d9bc797aefe299.zip"
      ],
      strip_prefix = "rules_python-c6970fc44877dbbbce84d17845d9bc797aefe299",
      sha256 = "01ce6e66ce46ee2fda606c554f4b69af7a9b2e60410d7561286169e39950c88f",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2021-06-02T21:19:50Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/ed53ad03abd7baf39dda2ac8037ff3d4f5c533e5.zip",
           "https://github.com/abseil/abseil-cpp/archive/ed53ad03abd7baf39dda2ac8037ff3d4f5c533e5.zip"
      ],
      strip_prefix = "abseil-cpp-ed53ad03abd7baf39dda2ac8037ff3d4f5c533e5",
      sha256 = "1022420af27131c58411ea121d2f17839b3745cd616ba2bbf42a1cb35cae14a2",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2021-06-02T21:55:09Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/53495a2a7d6ba7e0691a7f3602e9a5324bba6e45.zip",
           "https://github.com/google/googletest/archive/53495a2a7d6ba7e0691a7f3602e9a5324bba6e45.zip"
      ],
      strip_prefix = "googletest-53495a2a7d6ba7e0691a7f3602e9a5324bba6e45",
      sha256 = "c4873c05ff263f18124faef3366dda10ab8ef020faf648c3f960927c6db4be54",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2021-06-02T20:45:41Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/80a62618e8a82b56492aecd80921af2166212783.zip",
           "https://github.com/google/benchmark/archive/80a62618e8a82b56492aecd80921af2166212783.zip"
      ],
      strip_prefix = "benchmark-80a62618e8a82b56492aecd80921af2166212783",
      sha256 = "43696612948aef18141ae7d764487accb00f052f84d136e44c320d352287aa97",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2021-05-25T18:44:42Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/bda09979a30886cbe8a6f69dff0c17da03dda54c.zip",
           "https://github.com/google/tcmalloc/archive/bda09979a30886cbe8a6f69dff0c17da03dda54c.zip"
      ],
      strip_prefix = "tcmalloc-bda09979a30886cbe8a6f69dff0c17da03dda54c",
      sha256 = "ae2c30267d028a4f46f29040944a89ba88edac4ca440137b7dab69dfcc8d32dc",
    )

    # ********** zlib (pinned to 1.2.11) *****************
    http_archive(
      name = "net_zlib",
      build_file = "@com_google_absl_oss_federation//:zlib.BUILD",
      sha256 = "c3e5e9fdd5004dcb542feda5ee4f0ff0744628baf8ed2dd5d66f8ca1197cb1a1",
      strip_prefix = "zlib-1.2.11",
      # Use the same URL twice to trick bazel into re-trying if connection fails
      urls = [
          "https://zlib.net/zlib-1.2.11.tar.gz",
          "https://zlib.net/zlib-1.2.11.tar.gz"
      ],
    )
    # ********** rules_fuzzing (pinned to 0.1.3) *****************
    http_archive(
      name = "rules_fuzzing",
      sha256 = "94f25c7a18db0502ace26a3ef7d0a25fd7c195c4e9770ddd1b1ec718e8936091",
      strip_prefix = "rules_fuzzing-0.1.3",
      # Use the same URL twice to trick bazel into re-trying if connection fails
      urls = [
          "https://github.com/bazelbuild/rules_fuzzing/archive/v0.1.3.zip",
          "https://github.com/bazelbuild/rules_fuzzing/archive/v0.1.3.zip"
      ],
    )
