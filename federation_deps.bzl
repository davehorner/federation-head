"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2020-05-13T14:24:06Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/818289e5613731ae410efb54218a4077fb9dbb03.zip",
           "https://github.com/bazelbuild/rules_cc/archive/818289e5613731ae410efb54218a4077fb9dbb03.zip"
      ],
      strip_prefix = "rules_cc-818289e5613731ae410efb54218a4077fb9dbb03",
      sha256 = "0adbd6f567291ad526e82c765e15aed33cea5e256eeba129f1501142c2c56610",
    )

    # ********** rules_python *****************
    http_archive(
      name = "rules_python",  # 2020-05-12T14:01:26Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/4fcc24fd8a850bdab2ef2e078b1de337eea751a6.zip",
           "https://github.com/bazelbuild/rules_python/archive/4fcc24fd8a850bdab2ef2e078b1de337eea751a6.zip"
      ],
      strip_prefix = "rules_python-4fcc24fd8a850bdab2ef2e078b1de337eea751a6",
      sha256 = "ff480e501aaf6e3311d9c59369d5804bb2b034087c78a6bc0952b557f2314855",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2020-05-13T23:46:00Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/f2bc9d11e841e247c95f9f1426b367721d0a8fa6.zip",
           "https://github.com/abseil/abseil-cpp/archive/f2bc9d11e841e247c95f9f1426b367721d0a8fa6.zip"
      ],
      strip_prefix = "abseil-cpp-f2bc9d11e841e247c95f9f1426b367721d0a8fa6",
      sha256 = "c6d339af28d39229d3089ab0fc03bc033df50646bf796e634bcba4711a46f645",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2020-05-14T00:36:05Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/011959aafddcd30611003de96cfd8d7a7685c700.zip",
           "https://github.com/google/googletest/archive/011959aafddcd30611003de96cfd8d7a7685c700.zip"
      ],
      strip_prefix = "googletest-011959aafddcd30611003de96cfd8d7a7685c700",
      sha256 = "6a5d7d63cd6e0ad2a7130471105a3b83799a7a2b14ef7ec8d742b54f01a4833c",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2020-05-06T16:28:29Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/d3ad0b9d11c190cb58de5fb17c3555def61fdc96.zip",
           "https://github.com/google/benchmark/archive/d3ad0b9d11c190cb58de5fb17c3555def61fdc96.zip"
      ],
      strip_prefix = "benchmark-d3ad0b9d11c190cb58de5fb17c3555def61fdc96",
      sha256 = "ce4147ea69a18d4efec6f649ec0f7628b363929be6a45a721f17d81a38ee8583",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2020-05-13T21:04:06Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/7a171a527d7c968c62265728fbf33c236749b4a4.zip",
           "https://github.com/google/tcmalloc/archive/7a171a527d7c968c62265728fbf33c236749b4a4.zip"
      ],
      strip_prefix = "tcmalloc-7a171a527d7c968c62265728fbf33c236749b4a4",
      sha256 = "28bdb5270e36804231fe40855cf65dd0d0441b8ee26fb5b8a6f676fd9d3cd07f",
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
