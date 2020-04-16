"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2020-04-14T06:44:09Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/67086db2c4587062bc0936d4099f6aff940f3ffb.zip",
           "https://github.com/bazelbuild/rules_cc/archive/67086db2c4587062bc0936d4099f6aff940f3ffb.zip"
      ],
      strip_prefix = "rules_cc-67086db2c4587062bc0936d4099f6aff940f3ffb",
      sha256 = "5d6b2b86dae61345a840664006d7c2252e17490ddbf3b5c33a88a8b542b0af77",
    )

    # ********** rules_python *****************
    http_archive(
      name = "rules_python",  # 2020-04-09T15:00:47Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/a0fbf98d4e3a232144df4d0d80b577c7a693b570.zip",
           "https://github.com/bazelbuild/rules_python/archive/a0fbf98d4e3a232144df4d0d80b577c7a693b570.zip"
      ],
      strip_prefix = "rules_python-a0fbf98d4e3a232144df4d0d80b577c7a693b570",
      sha256 = "98c9b903f6e8fe20b7e56d19c4822c8c49a11b475bd4ec0ca6a564e8bc5d5fa2",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2020-04-15T17:29:54Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/71079e42cb4ae53db02f9bbe446ad51ed62fd17f.zip",
           "https://github.com/abseil/abseil-cpp/archive/71079e42cb4ae53db02f9bbe446ad51ed62fd17f.zip"
      ],
      strip_prefix = "abseil-cpp-71079e42cb4ae53db02f9bbe446ad51ed62fd17f",
      sha256 = "8369f7d4f372318b205f1e8fd283a3f2757a78751157bd874bac8a2d7187d472",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2020-04-04T22:05:39Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/e3f0319d89f4cbf32993de595d984183b1a9fc57.zip",
           "https://github.com/google/googletest/archive/e3f0319d89f4cbf32993de595d984183b1a9fc57.zip"
      ],
      strip_prefix = "googletest-e3f0319d89f4cbf32993de595d984183b1a9fc57",
      sha256 = "363089f62b375e6a73b7149015e7fe92e50d124ab4e95ba062774c496d96f2fc",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2020-04-14T09:20:22Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/8cead007830bdbe94b7cc259e873179d0ef84da6.zip",
           "https://github.com/google/benchmark/archive/8cead007830bdbe94b7cc259e873179d0ef84da6.zip"
      ],
      strip_prefix = "benchmark-8cead007830bdbe94b7cc259e873179d0ef84da6",
      sha256 = "a9d41abe1bd45a707d39fdfd46c01b92e340923bc5972c0b54a48002a9a7cfa3",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2020-04-15T19:48:26Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/8f9837d84b37b38e03f7080ba455f9359122a265.zip",
           "https://github.com/google/tcmalloc/archive/8f9837d84b37b38e03f7080ba455f9359122a265.zip"
      ],
      strip_prefix = "tcmalloc-8f9837d84b37b38e03f7080ba455f9359122a265",
      sha256 = "08a34d7668050619b7e6447f8c6159dd8e9d3636e91dacaa09b3a2c2d3f86dc5",
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
