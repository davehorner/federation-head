"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2021-03-05T17:10:23Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/88ef31b429631b787ceb5e4556d773b20ad797c8.zip",
           "https://github.com/bazelbuild/rules_cc/archive/88ef31b429631b787ceb5e4556d773b20ad797c8.zip"
      ],
      strip_prefix = "rules_cc-88ef31b429631b787ceb5e4556d773b20ad797c8",
      sha256 = "92a89a2bbe6c6db2a8b87da4ce723aff6253656e8417f37e50d362817c39b98b",
    )

    # ********** rules_python *****************
    http_archive(
      name = "rules_python",  # 2021-03-07T12:26:24Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/e48694612ebaa83fedc4d22105eb7a49587574f0.zip",
           "https://github.com/bazelbuild/rules_python/archive/e48694612ebaa83fedc4d22105eb7a49587574f0.zip"
      ],
      strip_prefix = "rules_python-e48694612ebaa83fedc4d22105eb7a49587574f0",
      sha256 = "b1ac506b315c6c79ad1fa429e54fe499401d36591b4d994fae2fda647f3dc50d",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2021-03-05T14:40:59Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/ab21820d47e4f83875dda008b600514d3520fd35.zip",
           "https://github.com/abseil/abseil-cpp/archive/ab21820d47e4f83875dda008b600514d3520fd35.zip"
      ],
      strip_prefix = "abseil-cpp-ab21820d47e4f83875dda008b600514d3520fd35",
      sha256 = "84abeb6101e5d9719d13e571704bd44290766d08dd6679f199e65e74463caeb8",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2021-03-04T17:07:39Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/e7e591764baba0a0c3c9ad0014430e7a27331d16.zip",
           "https://github.com/google/googletest/archive/e7e591764baba0a0c3c9ad0014430e7a27331d16.zip"
      ],
      strip_prefix = "googletest-e7e591764baba0a0c3c9ad0014430e7a27331d16",
      sha256 = "4958743d6f1b96c249d7ddb0707e82f78c9e7c78f95a598efb4c347563a7a9c7",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2021-03-05T16:37:55Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/50c9eb54962c5adaa9c6804848b96216fb66c0ad.zip",
           "https://github.com/google/benchmark/archive/50c9eb54962c5adaa9c6804848b96216fb66c0ad.zip"
      ],
      strip_prefix = "benchmark-50c9eb54962c5adaa9c6804848b96216fb66c0ad",
      sha256 = "b335d7fe78ca151e3eb55b16375b5a951f67abd760b57cc8454df6bb1d740b0e",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2021-03-02T19:36:21Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/ca93361644ebe822c479a31018f9221549e07a87.zip",
           "https://github.com/google/tcmalloc/archive/ca93361644ebe822c479a31018f9221549e07a87.zip"
      ],
      strip_prefix = "tcmalloc-ca93361644ebe822c479a31018f9221549e07a87",
      sha256 = "8330f8deaa9f1ec908face43fe49da34b38d7c42e76d6ddbdbe5c6ede71a9c6a",
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
