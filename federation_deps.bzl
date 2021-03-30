"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2021-03-16T13:45:21Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/608c7b605fb844a20e96a3eddc9b49ad2542adab.zip",
           "https://github.com/bazelbuild/rules_cc/archive/608c7b605fb844a20e96a3eddc9b49ad2542adab.zip"
      ],
      strip_prefix = "rules_cc-608c7b605fb844a20e96a3eddc9b49ad2542adab",
      sha256 = "ed36cc7a6f46b7c28ab4009db4a37e350e1ba367446b0886bcc9cdc1df92752e",
    )

    # ********** rules_python *****************
    http_archive(
      name = "rules_python",  # 2021-03-29T16:16:35Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/c7e573e834b06a2e08ab829e53212a26e42801c7.zip",
           "https://github.com/bazelbuild/rules_python/archive/c7e573e834b06a2e08ab829e53212a26e42801c7.zip"
      ],
      strip_prefix = "rules_python-c7e573e834b06a2e08ab829e53212a26e42801c7",
      sha256 = "3c58732474b8337466449a62e9cd1fc09e7a7abf31d07ea72e4f1d753137003d",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2021-03-25T15:05:20Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/a09b5de0d57d7b2179210989ab63361c3c1894f5.zip",
           "https://github.com/abseil/abseil-cpp/archive/a09b5de0d57d7b2179210989ab63361c3c1894f5.zip"
      ],
      strip_prefix = "abseil-cpp-a09b5de0d57d7b2179210989ab63361c3c1894f5",
      sha256 = "595a502009b3f97f9407ff0557abc0fc4a9d9a574662353ccb2971c539ddb2e3",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2021-03-30T04:29:19Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/6c5c4554ac218a8e19168edc121b1ad232015185.zip",
           "https://github.com/google/googletest/archive/6c5c4554ac218a8e19168edc121b1ad232015185.zip"
      ],
      strip_prefix = "googletest-6c5c4554ac218a8e19168edc121b1ad232015185",
      sha256 = "4d6bb52c23b6c590fd0f8bea90bed9a1f263c61a1ac0e2d66dadb9213fbe4b1c",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2021-03-08T09:23:24Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/cc9abfc8f12577ea83b2d093693ba70c3c0fd2c7.zip",
           "https://github.com/google/benchmark/archive/cc9abfc8f12577ea83b2d093693ba70c3c0fd2c7.zip"
      ],
      strip_prefix = "benchmark-cc9abfc8f12577ea83b2d093693ba70c3c0fd2c7",
      sha256 = "bc60957389e8d9e37d1a40fad22da7a1950e382850cec80b0133fcbfa7d41016",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2021-03-30T00:00:50Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/9eac6fe77246d93eeffa68751057e17f74e4c78b.zip",
           "https://github.com/google/tcmalloc/archive/9eac6fe77246d93eeffa68751057e17f74e4c78b.zip"
      ],
      strip_prefix = "tcmalloc-9eac6fe77246d93eeffa68751057e17f74e4c78b",
      sha256 = "7e097c6dd5f953429f1edf270701ec5c16d717c849a740ff591976a930b195a6",
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
