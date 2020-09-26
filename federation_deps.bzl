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
      name = "com_google_absl",  # 2020-09-25T14:29:02Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/cad3f30b44c2bfac54ee82c6fc9e49ba49078620.zip",
           "https://github.com/abseil/abseil-cpp/archive/cad3f30b44c2bfac54ee82c6fc9e49ba49078620.zip"
      ],
      strip_prefix = "abseil-cpp-cad3f30b44c2bfac54ee82c6fc9e49ba49078620",
      sha256 = "986ae4ca04fb10d9f80f7cf227d98d2cd4bcd3f682fbb68bb5145740560049c8",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2020-09-24T16:06:42Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/fe4d5f10840c5f62b984364a4d41719f1bc079a2.zip",
           "https://github.com/google/googletest/archive/fe4d5f10840c5f62b984364a4d41719f1bc079a2.zip"
      ],
      strip_prefix = "googletest-fe4d5f10840c5f62b984364a4d41719f1bc079a2",
      sha256 = "4f57038582659c08971ce89f56f6e41ba4e56215f3387a514ade5b7fb15cb83c",
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
      name = "com_github_google_tcmalloc",  # 2020-09-25T21:24:50Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/adb37a39b74c7e0036cb122fb2b5b20163a3aef9.zip",
           "https://github.com/google/tcmalloc/archive/adb37a39b74c7e0036cb122fb2b5b20163a3aef9.zip"
      ],
      strip_prefix = "tcmalloc-adb37a39b74c7e0036cb122fb2b5b20163a3aef9",
      sha256 = "f402359a12da7acb17357f630a03ef9031cd3c45622fc515ed06444544518930",
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
