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
      name = "com_google_absl",  # 2020-07-07T15:37:48Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/bf655de09b67fd8b924814cbb369cb65ddd0bd24.zip",
           "https://github.com/abseil/abseil-cpp/archive/bf655de09b67fd8b924814cbb369cb65ddd0bd24.zip"
      ],
      strip_prefix = "abseil-cpp-bf655de09b67fd8b924814cbb369cb65ddd0bd24",
      sha256 = "c487a9a925e06f45b58178caa55b1a7fd3dc95d6e85441aca6ef77485fdfa98e",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2020-07-05T20:25:43Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/356f2d264a485db2fcc50ec1c672e0d37b6cb39b.zip",
           "https://github.com/google/googletest/archive/356f2d264a485db2fcc50ec1c672e0d37b6cb39b.zip"
      ],
      strip_prefix = "googletest-356f2d264a485db2fcc50ec1c672e0d37b6cb39b",
      sha256 = "4957bdc3fa86e0e1ee889d90266122d3e27803543931892d56c0162185a66028",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2020-06-30T08:51:30Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/7f27afe83b82f3a98baf58ef595814b9d42a5b2b.zip",
           "https://github.com/google/benchmark/archive/7f27afe83b82f3a98baf58ef595814b9d42a5b2b.zip"
      ],
      strip_prefix = "benchmark-7f27afe83b82f3a98baf58ef595814b9d42a5b2b",
      sha256 = "9432f0e157bdb0a0688880b83b668731198cc16495ef9f63a088cb3fdce5ae57",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2020-07-07T14:10:25Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/53ec144c5015c8e35c9d9ac5f2cf0e23b1a949d5.zip",
           "https://github.com/google/tcmalloc/archive/53ec144c5015c8e35c9d9ac5f2cf0e23b1a949d5.zip"
      ],
      strip_prefix = "tcmalloc-53ec144c5015c8e35c9d9ac5f2cf0e23b1a949d5",
      sha256 = "3d8819a33b3063e1b6ba3615031a4084e238cc24c543792da269a5cf3a0a2695",
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
