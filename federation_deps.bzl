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
      name = "rules_python",  # 2021-03-10T01:20:32Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/c30e05efdfd10663bc81f2fb657e57c369cb4bcd.zip",
           "https://github.com/bazelbuild/rules_python/archive/c30e05efdfd10663bc81f2fb657e57c369cb4bcd.zip"
      ],
      strip_prefix = "rules_python-c30e05efdfd10663bc81f2fb657e57c369cb4bcd",
      sha256 = "4080073fc5f0e673d6fa252b07098a971f8dfe659268dbca490464abdd83c1d5",
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
      name = "com_google_googletest",  # 2021-03-09T18:59:35Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/763eaa430540926fa16060654427149802c97fba.zip",
           "https://github.com/google/googletest/archive/763eaa430540926fa16060654427149802c97fba.zip"
      ],
      strip_prefix = "googletest-763eaa430540926fa16060654427149802c97fba",
      sha256 = "3c3e9ec31fe35a230d0fa335a31c5d2262dc50245a1cb1e5969b51c6f038cafc",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2021-03-08T09:23:24Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/cc9abfc8f12577ea83b2d093693ba70c3c0fd2c7.zip",
           "https://github.com/google/benchmark/archive/cc9abfc8f12577ea83b2d093693ba70c3c0fd2c7.zip"
      ],
      strip_prefix = "benchmark-cc9abfc8f12577ea83b2d093693ba70c3c0fd2c7",
      sha256 = "bc60957389e8d9e37d1a40fad22da7a1950e382850cec80b0133fcbfa7d41016",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2021-03-09T23:08:06Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/a7f35f305ac938084d4df475b04c610b288e56a0.zip",
           "https://github.com/google/tcmalloc/archive/a7f35f305ac938084d4df475b04c610b288e56a0.zip"
      ],
      strip_prefix = "tcmalloc-a7f35f305ac938084d4df475b04c610b288e56a0",
      sha256 = "81690728d17fbafbc2f0041f7c09a8ba45198bcffe881d8a74a6c1793cb1d83c",
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
