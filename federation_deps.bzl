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
      name = "com_google_absl",  # 2020-10-14T18:52:17Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/60d00a5822bb98f18e40b294554f91ca14fb793a.zip",
           "https://github.com/abseil/abseil-cpp/archive/60d00a5822bb98f18e40b294554f91ca14fb793a.zip"
      ],
      strip_prefix = "abseil-cpp-60d00a5822bb98f18e40b294554f91ca14fb793a",
      sha256 = "7cf7281cda2b330ebd22d1ffc0af06810d1a4397e0e61cffbcdfb4823318e2d7",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2020-10-15T17:32:43Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/3c95bf552405fd0cc63cea0ca2f6c4cd89c8d356.zip",
           "https://github.com/google/googletest/archive/3c95bf552405fd0cc63cea0ca2f6c4cd89c8d356.zip"
      ],
      strip_prefix = "googletest-3c95bf552405fd0cc63cea0ca2f6c4cd89c8d356",
      sha256 = "5ecbede0bd876e75a8ab57b18483f2262e82ae8aaf6d278d85c6fecb8136e448",
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
      name = "com_github_google_tcmalloc",  # 2020-10-17T01:02:27Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/6b77ee4a5078aace5d918dd27f3c7082ee1feabd.zip",
           "https://github.com/google/tcmalloc/archive/6b77ee4a5078aace5d918dd27f3c7082ee1feabd.zip"
      ],
      strip_prefix = "tcmalloc-6b77ee4a5078aace5d918dd27f3c7082ee1feabd",
      sha256 = "fdadbdecff27889a6a9dcbf4611de2816b0cad058787c6ad6e54ea7621cda707",
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
