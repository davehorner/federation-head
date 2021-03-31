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
      name = "rules_python",  # 2021-03-31T04:32:44Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/6f37aa9966f53e063c41b7509a386d53a9f156c3.zip",
           "https://github.com/bazelbuild/rules_python/archive/6f37aa9966f53e063c41b7509a386d53a9f156c3.zip"
      ],
      strip_prefix = "rules_python-6f37aa9966f53e063c41b7509a386d53a9f156c3",
      sha256 = "985562e0dc8d9589b9dbf918c85a825ba54c9b7fec04174900ef66ad023d242c",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2021-03-30T18:51:45Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/d9a31a2d440f33aa40d88b3b8a98f4c19ffaa182.zip",
           "https://github.com/abseil/abseil-cpp/archive/d9a31a2d440f33aa40d88b3b8a98f4c19ffaa182.zip"
      ],
      strip_prefix = "abseil-cpp-d9a31a2d440f33aa40d88b3b8a98f4c19ffaa182",
      sha256 = "4a0d1800653b5e4fdab98711d0885fec863051606b9f3baf033b3409533179e3",
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
      name = "com_github_google_benchmark",  # 2021-03-30T13:43:03Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/5e387e7d33a55b8d6b7c5025379b97cc9418fabf.zip",
           "https://github.com/google/benchmark/archive/5e387e7d33a55b8d6b7c5025379b97cc9418fabf.zip"
      ],
      strip_prefix = "benchmark-5e387e7d33a55b8d6b7c5025379b97cc9418fabf",
      sha256 = "d37d3fb186bbcc30018962185606869c032e866bc9ad376a6112fbb64fe6935f",
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
