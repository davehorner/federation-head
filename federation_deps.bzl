"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2020-06-03T07:53:38Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/5cbd3dfbd1613f71ef29bbb7b10310b81e272975.zip",
           "https://github.com/bazelbuild/rules_cc/archive/5cbd3dfbd1613f71ef29bbb7b10310b81e272975.zip"
      ],
      strip_prefix = "rules_cc-5cbd3dfbd1613f71ef29bbb7b10310b81e272975",
      sha256 = "d6775fe03da086dfe47c668f54e77e220aa6e601a66a4517eaf19fa1d9fda309",
    )

    # ********** rules_python *****************
    http_archive(
      name = "rules_python",  # 2020-06-25T01:00:24Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/cd552725122fdfe06a72864e21a92b5093a1857d.zip",
           "https://github.com/bazelbuild/rules_python/archive/cd552725122fdfe06a72864e21a92b5093a1857d.zip"
      ],
      strip_prefix = "rules_python-cd552725122fdfe06a72864e21a92b5093a1857d",
      sha256 = "e4ddb2bf3c2e0ddfec5a1ab41e480661e65605c6e3c336fe85c5bd6a267dbc2e",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2020-06-24T20:12:47Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/b86fff162e15ad8ee534c25e58bf522330e8376d.zip",
           "https://github.com/abseil/abseil-cpp/archive/b86fff162e15ad8ee534c25e58bf522330e8376d.zip"
      ],
      strip_prefix = "abseil-cpp-b86fff162e15ad8ee534c25e58bf522330e8376d",
      sha256 = "c75507067e718e221ccd47ccca804ff899d4e057b5961866e1b0cd6d6dc4031a",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2020-06-26T16:04:14Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/aee0f9d9b5b87796ee8a0ab26b7587ec30e8858e.zip",
           "https://github.com/google/googletest/archive/aee0f9d9b5b87796ee8a0ab26b7587ec30e8858e.zip"
      ],
      strip_prefix = "googletest-aee0f9d9b5b87796ee8a0ab26b7587ec30e8858e",
      sha256 = "04a1751f94244307cebe695a69cc945f9387a80b0ef1af21394a490697c5c895",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2020-06-25T10:46:13Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/39b6e703f8cdf87284db2aaca2f9b214f02e5673.zip",
           "https://github.com/google/benchmark/archive/39b6e703f8cdf87284db2aaca2f9b214f02e5673.zip"
      ],
      strip_prefix = "benchmark-39b6e703f8cdf87284db2aaca2f9b214f02e5673",
      sha256 = "f0a74928b8e105fabeacc778bcfc5fd89cce68cbb664bfc2456373959d3e3b67",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2020-06-27T00:42:10Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/8738f271bd58a0decb358fd6047f3bfac1be3382.zip",
           "https://github.com/google/tcmalloc/archive/8738f271bd58a0decb358fd6047f3bfac1be3382.zip"
      ],
      strip_prefix = "tcmalloc-8738f271bd58a0decb358fd6047f3bfac1be3382",
      sha256 = "69b3d67e4b8345c3ab4ebafd9ce6dff4a1b5d42fc95d02fe864f13ba79550bb3",
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
