"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2020-09-23T13:28:04Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/53f28aeac9a5bb70dc5f8dfbcd924f298f05da01.zip",
           "https://github.com/bazelbuild/rules_cc/archive/53f28aeac9a5bb70dc5f8dfbcd924f298f05da01.zip"
      ],
      strip_prefix = "rules_cc-53f28aeac9a5bb70dc5f8dfbcd924f298f05da01",
      sha256 = "d6ec8bfa562c64d43e16c5199fbfd6d0a2ff28bb6fdaae827149de2c5b94f45d",
    )

    # ********** rules_python *****************
    http_archive(
      name = "rules_python",  # 2020-09-20T14:59:23Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/e821ce92eef2a938cb4ffb8a164d8327ebb6285f.zip",
           "https://github.com/bazelbuild/rules_python/archive/e821ce92eef2a938cb4ffb8a164d8327ebb6285f.zip"
      ],
      strip_prefix = "rules_python-e821ce92eef2a938cb4ffb8a164d8327ebb6285f",
      sha256 = "8f95291288b97887147d85b0eeb1036322f0e7c18e7c6b6a7f6fd84b5eea534a",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2020-09-23T17:36:05Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/9927a09898f1287e0ecd1276f42ec7a252667dad.zip",
           "https://github.com/abseil/abseil-cpp/archive/9927a09898f1287e0ecd1276f42ec7a252667dad.zip"
      ],
      strip_prefix = "abseil-cpp-9927a09898f1287e0ecd1276f42ec7a252667dad",
      sha256 = "49bdd29bd0dc54d4e4c7533402824c6d8a2c1dd04abffb10a8de8f1adf5a686b",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2020-09-20T22:48:41Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/7aca84427f224eeed3144123d5230d5871e93347.zip",
           "https://github.com/google/googletest/archive/7aca84427f224eeed3144123d5230d5871e93347.zip"
      ],
      strip_prefix = "googletest-7aca84427f224eeed3144123d5230d5871e93347",
      sha256 = "1d547f2b83e16eed4f6e3d5504dab0be60886bcb19cc4c62ee174d3c2cca03a8",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2020-09-21T10:25:28Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/949f5bb11fb36ac0108c8e1cd238f738a24265f4.zip",
           "https://github.com/google/benchmark/archive/949f5bb11fb36ac0108c8e1cd238f738a24265f4.zip"
      ],
      strip_prefix = "benchmark-949f5bb11fb36ac0108c8e1cd238f738a24265f4",
      sha256 = "0b6c479941e680362b3d76dfc93fd391ffb4ccf297983d3cf1ef819e0af17ea9",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2020-09-23T19:05:26Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/37d6cea706c23a5bcd3442e8570cd1a29ae679a0.zip",
           "https://github.com/google/tcmalloc/archive/37d6cea706c23a5bcd3442e8570cd1a29ae679a0.zip"
      ],
      strip_prefix = "tcmalloc-37d6cea706c23a5bcd3442e8570cd1a29ae679a0",
      sha256 = "b622dc327278cee520cc1aa15f676dc4baba1ac66e31da7f15efb03b41c2b4d9",
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
