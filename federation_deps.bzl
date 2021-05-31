"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2021-05-14T14:51:14Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/68cb652a71e7e7e2858c50593e5a9e3b94e5b9a9.zip",
           "https://github.com/bazelbuild/rules_cc/archive/68cb652a71e7e7e2858c50593e5a9e3b94e5b9a9.zip"
      ],
      strip_prefix = "rules_cc-68cb652a71e7e7e2858c50593e5a9e3b94e5b9a9",
      sha256 = "1e19e9a3bc3d4ee91d7fcad00653485ee6c798efbbf9588d40b34cbfbded143d",
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
      name = "com_google_absl",  # 2021-05-27T18:34:59Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/0d5156018dd3d0d075cc14a0aa6078979c7a85d3.zip",
           "https://github.com/abseil/abseil-cpp/archive/0d5156018dd3d0d075cc14a0aa6078979c7a85d3.zip"
      ],
      strip_prefix = "abseil-cpp-0d5156018dd3d0d075cc14a0aa6078979c7a85d3",
      sha256 = "6d79d0566956f01bd7c1a64947109f01bf0d3f041764e5b61674726db9a5f6b5",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2021-05-25T17:34:39Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/a3460d1aeeaa43fdf137a6adefef10ba0b59fe4b.zip",
           "https://github.com/google/googletest/archive/a3460d1aeeaa43fdf137a6adefef10ba0b59fe4b.zip"
      ],
      strip_prefix = "googletest-a3460d1aeeaa43fdf137a6adefef10ba0b59fe4b",
      sha256 = "d3d307a240e129bb57da8aae64f3b0099bf1b8efff7249df993b619b8641ec77",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2021-05-30T08:58:57Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/09a87e319454fac2681caac0d4fe98cb6ec23cf5.zip",
           "https://github.com/google/benchmark/archive/09a87e319454fac2681caac0d4fe98cb6ec23cf5.zip"
      ],
      strip_prefix = "benchmark-09a87e319454fac2681caac0d4fe98cb6ec23cf5",
      sha256 = "f5b85c354391764b445d317eef49d2cdd01a2aceca6d79c2941c2a0d91391f7f",
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
