"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2020-08-18T17:57:24Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/02becfef8bc97bda4f9bb64e153f1b0671aec4ba.zip",
           "https://github.com/bazelbuild/rules_cc/archive/02becfef8bc97bda4f9bb64e153f1b0671aec4ba.zip"
      ],
      strip_prefix = "rules_cc-02becfef8bc97bda4f9bb64e153f1b0671aec4ba",
      sha256 = "fa42eade3cad9190c2a6286a6213f07f1a83d26d9f082d56f526d014c6ea7444",
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
      name = "com_google_absl",  # 2020-09-20T22:26:41Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/d3614de6178018178723ac3b8b4baaf3f1dc7fcb.zip",
           "https://github.com/abseil/abseil-cpp/archive/d3614de6178018178723ac3b8b4baaf3f1dc7fcb.zip"
      ],
      strip_prefix = "abseil-cpp-d3614de6178018178723ac3b8b4baaf3f1dc7fcb",
      sha256 = "1426ddbca312342680a29bad438c3f1aa7a35cdd1675167e6c32d11052e46bd2",
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
      name = "com_github_google_benchmark",  # 2020-09-12T15:56:43Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/7efada2dac40e9f6e5c5f76e0c4a78c85c0a3af5.zip",
           "https://github.com/google/benchmark/archive/7efada2dac40e9f6e5c5f76e0c4a78c85c0a3af5.zip"
      ],
      strip_prefix = "benchmark-7efada2dac40e9f6e5c5f76e0c4a78c85c0a3af5",
      sha256 = "736506de96a1475885ccc4ed104b071ee8bb9727c899da40bbebf82ae379900a",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2020-09-20T14:59:02Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/681c793acd3f37f3f51e9db6fc62487ff8f02a72.zip",
           "https://github.com/google/tcmalloc/archive/681c793acd3f37f3f51e9db6fc62487ff8f02a72.zip"
      ],
      strip_prefix = "tcmalloc-681c793acd3f37f3f51e9db6fc62487ff8f02a72",
      sha256 = "1763866be3bf7c9127cde6d3229eb517692e805003fdcf5a80371ba4f6c0fc43",
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
