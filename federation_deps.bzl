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
      name = "com_google_absl",  # 2020-04-14T21:25:55Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/2946ac0dea49c894215a998aebb19d2f1d942909.zip",
           "https://github.com/abseil/abseil-cpp/archive/2946ac0dea49c894215a998aebb19d2f1d942909.zip"
      ],
      strip_prefix = "abseil-cpp-2946ac0dea49c894215a998aebb19d2f1d942909",
      sha256 = "85a284d5458c39e109e717661451ff6da7e4a22429340166a7dfc3b57aff4994",
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
      name = "com_github_google_tcmalloc",  # 2020-04-14T20:08:44Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/0cf7d1a39838ed0af2cbc0d60980e1b8a55ecbd6.zip",
           "https://github.com/google/tcmalloc/archive/0cf7d1a39838ed0af2cbc0d60980e1b8a55ecbd6.zip"
      ],
      strip_prefix = "tcmalloc-0cf7d1a39838ed0af2cbc0d60980e1b8a55ecbd6",
      sha256 = "80fa388e57135644e570369f57df83e57ec585d093594057179262b5387ddfcf",
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
