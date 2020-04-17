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
      name = "com_google_absl",  # 2020-04-16T15:33:32Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/db5773a721a50d1fc8c9b51efea0e70be4003d36.zip",
           "https://github.com/abseil/abseil-cpp/archive/db5773a721a50d1fc8c9b51efea0e70be4003d36.zip"
      ],
      strip_prefix = "abseil-cpp-db5773a721a50d1fc8c9b51efea0e70be4003d36",
      sha256 = "83be4b9b919c3fe7574e49782ab924d5ac59f266f1e93c4e5fddf8a5fca43361",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2020-04-16T17:33:10Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/dcc92d0ab6c4ce022162a23566d44f673251eee4.zip",
           "https://github.com/google/googletest/archive/dcc92d0ab6c4ce022162a23566d44f673251eee4.zip"
      ],
      strip_prefix = "googletest-dcc92d0ab6c4ce022162a23566d44f673251eee4",
      sha256 = "a6ab7c7d6fd4dd727f6012b5d85d71a73d3aa1274f529ecd4ad84eb9ec4ff767",
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
