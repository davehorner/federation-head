"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2021-10-07T16:39:32Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/8f861e884c0003554b39fd0358293bbde3923ecd.zip",
           "https://github.com/bazelbuild/rules_cc/archive/8f861e884c0003554b39fd0358293bbde3923ecd.zip"
      ],
      strip_prefix = "rules_cc-8f861e884c0003554b39fd0358293bbde3923ecd",
      sha256 = "8a726c5682bbab9ff4c1afaced45a446129d5a816555e234ff987dcc297a0f66",
    )

    # ********** rules_python *****************
    http_archive(
      name = "rules_python",  # 2021-10-18T22:17:17Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/9b765cb92fad671669136e33795848a88e60dae2.zip",
           "https://github.com/bazelbuild/rules_python/archive/9b765cb92fad671669136e33795848a88e60dae2.zip"
      ],
      strip_prefix = "rules_python-9b765cb92fad671669136e33795848a88e60dae2",
      sha256 = "ab85df252a874749602633ebf79ebde2a6db4c0ded5dcb5075694fdea560c053",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2021-10-21T20:01:48Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/ddb842f583e560bbde497bc96cfebe25f9089e11.zip",
           "https://github.com/abseil/abseil-cpp/archive/ddb842f583e560bbde497bc96cfebe25f9089e11.zip"
      ],
      strip_prefix = "abseil-cpp-ddb842f583e560bbde497bc96cfebe25f9089e11",
      sha256 = "e37c55d4469b53a9badfc326156cf5a244a997829c3731495bbd9d3df2d8fc91",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2021-10-13T16:28:20Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/16f637fbf4ffc3f7a01fa4eceb7906634565242f.zip",
           "https://github.com/google/googletest/archive/16f637fbf4ffc3f7a01fa4eceb7906634565242f.zip"
      ],
      strip_prefix = "googletest-16f637fbf4ffc3f7a01fa4eceb7906634565242f",
      sha256 = "002d540f947e5981f54ddaab476d87b113d2a14822f21a34dca30f24c9492a24",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2021-10-21T09:10:38Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/80d70ddd943aea41f105cd337b3efcf62c94eea0.zip",
           "https://github.com/google/benchmark/archive/80d70ddd943aea41f105cd337b3efcf62c94eea0.zip"
      ],
      strip_prefix = "benchmark-80d70ddd943aea41f105cd337b3efcf62c94eea0",
      sha256 = "70b3b31b3e0be2516e468464eedc35c62b09e3339c0cc16a0ea6296d4c41952f",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2021-10-21T21:31:33Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/7f2cf4ec9206922b8684836a32354f99bcffba75.zip",
           "https://github.com/google/tcmalloc/archive/7f2cf4ec9206922b8684836a32354f99bcffba75.zip"
      ],
      strip_prefix = "tcmalloc-7f2cf4ec9206922b8684836a32354f99bcffba75",
      sha256 = "9a461cc51ef6f3da2c12961fa3e9763c0fc95cdab04a4f44f9202c247da15bbc",
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
    # ********** rules_fuzzing (pinned to 0.1.3) *****************
    http_archive(
      name = "rules_fuzzing",
      sha256 = "94f25c7a18db0502ace26a3ef7d0a25fd7c195c4e9770ddd1b1ec718e8936091",
      strip_prefix = "rules_fuzzing-0.1.3",
      # Use the same URL twice to trick bazel into re-trying if connection fails
      urls = [
          "https://github.com/bazelbuild/rules_fuzzing/archive/v0.1.3.zip",
          "https://github.com/bazelbuild/rules_fuzzing/archive/v0.1.3.zip"
      ],
    )
