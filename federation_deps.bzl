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
      name = "rules_python",  # 2020-10-14T17:01:38Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/c639955c18bbc16e6a9e5228540b6151fd3b10b3.zip",
           "https://github.com/bazelbuild/rules_python/archive/c639955c18bbc16e6a9e5228540b6151fd3b10b3.zip"
      ],
      strip_prefix = "rules_python-c639955c18bbc16e6a9e5228540b6151fd3b10b3",
      sha256 = "6d36d5dc9c3597b28989f55a1edaec57218cff2c163feb3c0c3821dfa3753faf",
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
      name = "com_google_googletest",  # 2020-10-14T22:27:07Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/a4621888650aaae118de93f9faf8ef5a18cab303.zip",
           "https://github.com/google/googletest/archive/a4621888650aaae118de93f9faf8ef5a18cab303.zip"
      ],
      strip_prefix = "googletest-a4621888650aaae118de93f9faf8ef5a18cab303",
      sha256 = "b177f5d693666a785d8e53db0908bc1cf1a4d74fef27c3d48ef620ad572679d5",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2020-10-12T20:41:49Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/af72911f2fe6b8114564614d2db17a449f8c4af0.zip",
           "https://github.com/google/benchmark/archive/af72911f2fe6b8114564614d2db17a449f8c4af0.zip"
      ],
      strip_prefix = "benchmark-af72911f2fe6b8114564614d2db17a449f8c4af0",
      sha256 = "0d504e12d9078c5f03350de1fa19530dd11a50bdcf6079679ba7250e9dc8ec73",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2020-10-15T02:47:27Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/db3a28f45e7dbe8c3fbecc7712212db911b88fac.zip",
           "https://github.com/google/tcmalloc/archive/db3a28f45e7dbe8c3fbecc7712212db911b88fac.zip"
      ],
      strip_prefix = "tcmalloc-db3a28f45e7dbe8c3fbecc7712212db911b88fac",
      sha256 = "02fa9577f7a130e44e5cc1b2bc79e51fb4d8e7b80b0b14b119e0aeca38761de6",
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
