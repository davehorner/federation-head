"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2020-10-05T06:01:24Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/f055da4ff0cb2b3c73de1fe2f094ebdfb8b3acb9.zip",
           "https://github.com/bazelbuild/rules_cc/archive/f055da4ff0cb2b3c73de1fe2f094ebdfb8b3acb9.zip"
      ],
      strip_prefix = "rules_cc-f055da4ff0cb2b3c73de1fe2f094ebdfb8b3acb9",
      sha256 = "35ea62c63cd71d4000efe85f9f4f17e8afb23896c37ee9510952db2e9d8fbb70",
    )

    # ********** rules_python *****************
    http_archive(
      name = "rules_python",  # 2020-10-16T14:03:16Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/5c948dcfd4ca79c2ed3a87636c46abba9f5836e9.zip",
           "https://github.com/bazelbuild/rules_python/archive/5c948dcfd4ca79c2ed3a87636c46abba9f5836e9.zip"
      ],
      strip_prefix = "rules_python-5c948dcfd4ca79c2ed3a87636c46abba9f5836e9",
      sha256 = "4d8ed66d5f57a0b6b90e495ca8e29e5c5fa353b93f093e7c31c595a4631ff293",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2020-10-19T23:24:23Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/4b915e70929ca2d6152240facc83d3d38c5d5f28.zip",
           "https://github.com/abseil/abseil-cpp/archive/4b915e70929ca2d6152240facc83d3d38c5d5f28.zip"
      ],
      strip_prefix = "abseil-cpp-4b915e70929ca2d6152240facc83d3d38c5d5f28",
      sha256 = "acac35eca3dbb42de05eff89b3c4a6506721a402f72a27f119caf2e64c6853ea",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2020-10-19T18:01:36Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/620659ed92829a88ee34134c782bf5b5aa5a0a0c.zip",
           "https://github.com/google/googletest/archive/620659ed92829a88ee34134c782bf5b5aa5a0a0c.zip"
      ],
      strip_prefix = "googletest-620659ed92829a88ee34134c782bf5b5aa5a0a0c",
      sha256 = "a2e48f1c92e68ba5d84afc42ea163e017d1b612f818ef4002f4bf4d88d6aca09",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2020-10-15T08:12:40Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/3d1c2677686718d906f28c1d4da001c42666e6d2.zip",
           "https://github.com/google/benchmark/archive/3d1c2677686718d906f28c1d4da001c42666e6d2.zip"
      ],
      strip_prefix = "benchmark-3d1c2677686718d906f28c1d4da001c42666e6d2",
      sha256 = "3d489382142d9449798d255d43acce7d8c7b603525b2c15c7eb953d75036a783",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2020-10-20T14:11:02Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/251f8856758f89ca50df9e542480a7906aad9f73.zip",
           "https://github.com/google/tcmalloc/archive/251f8856758f89ca50df9e542480a7906aad9f73.zip"
      ],
      strip_prefix = "tcmalloc-251f8856758f89ca50df9e542480a7906aad9f73",
      sha256 = "e4fc638b31528042405ae648d9b77cb51b2d9895ec4fd3abd9a0adc2b8595ce7",
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
