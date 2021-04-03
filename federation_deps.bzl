"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2021-04-01T09:45:57Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/c612c9581b9e740a49ed4c006edb93912c8ab205.zip",
           "https://github.com/bazelbuild/rules_cc/archive/c612c9581b9e740a49ed4c006edb93912c8ab205.zip"
      ],
      strip_prefix = "rules_cc-c612c9581b9e740a49ed4c006edb93912c8ab205",
      sha256 = "1bef6433ba1a4288b5853dc0ebd6cf436dc1c83cce6e16abf73e7ad1b785def4",
    )

    # ********** rules_python *****************
    http_archive(
      name = "rules_python",  # 2021-04-01T19:21:20Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/5126cf1bd3d423bbb6aebe14e44546ca2585ea44.zip",
           "https://github.com/bazelbuild/rules_python/archive/5126cf1bd3d423bbb6aebe14e44546ca2585ea44.zip"
      ],
      strip_prefix = "rules_python-5126cf1bd3d423bbb6aebe14e44546ca2585ea44",
      sha256 = "804179a8dced7cb8f14218d6810990391d4d82bb1e1c636a579bbc45ee0e7694",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2021-04-01T22:28:34Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/354030bec37f8d90092245e07323628da50c6996.zip",
           "https://github.com/abseil/abseil-cpp/archive/354030bec37f8d90092245e07323628da50c6996.zip"
      ],
      strip_prefix = "abseil-cpp-354030bec37f8d90092245e07323628da50c6996",
      sha256 = "98a06857490d4cc160d56a7dce1766fb676b74b1244d1a1c36996e3b21890808",
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
      name = "com_github_google_tcmalloc",  # 2021-04-02T18:56:30Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/5f73843f6daab27d8feb67210597a5e11c2a0486.zip",
           "https://github.com/google/tcmalloc/archive/5f73843f6daab27d8feb67210597a5e11c2a0486.zip"
      ],
      strip_prefix = "tcmalloc-5f73843f6daab27d8feb67210597a5e11c2a0486",
      sha256 = "e1d692c92831e791fa80e5eef3b93c118b5dfc9b35ff38b491c688936112c30c",
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
