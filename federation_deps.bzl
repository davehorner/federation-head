"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2021-05-14T14:51:14Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/68cb652a71e7e7e2858c50593e5a9e3b94e5b9a9.zip",
           "https://github.com/bazelbuild/rules_cc/archive/68cb652a71e7e7e2858c50593e5a9e3b94e5b9a9.zip"
      ],
      strip_prefix = "rules_cc-68cb652a71e7e7e2858c50593e5a9e3b94e5b9a9",
      sha256 = "1e19e9a3bc3d4ee91d7fcad00653485ee6c798efbbf9588d40b34cbfbded143d",
    )

    # ********** rules_python *****************
    http_archive(
      name = "rules_python",  # 2021-05-17T00:24:16Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/ed6cc8f2c3692a6a7f013ff8bc185ba77eb9b4d2.zip",
           "https://github.com/bazelbuild/rules_python/archive/ed6cc8f2c3692a6a7f013ff8bc185ba77eb9b4d2.zip"
      ],
      strip_prefix = "rules_python-ed6cc8f2c3692a6a7f013ff8bc185ba77eb9b4d2",
      sha256 = "98b3c592faea9636ac8444bfd9de7f3fb4c60590932d6e6ac5946e3f8dbd5ff6",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2021-05-20T02:59:16Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/7971fb358ae376e016d2d4fc9327aad95659b25e.zip",
           "https://github.com/abseil/abseil-cpp/archive/7971fb358ae376e016d2d4fc9327aad95659b25e.zip"
      ],
      strip_prefix = "abseil-cpp-7971fb358ae376e016d2d4fc9327aad95659b25e",
      sha256 = "aeba534f7307e36fe084b452299e49b97420667a8d28102cf9a0daeed340b859",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2021-05-21T20:58:11Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/9741c42200b66abc708ee6da269a29c8bd912cee.zip",
           "https://github.com/google/googletest/archive/9741c42200b66abc708ee6da269a29c8bd912cee.zip"
      ],
      strip_prefix = "googletest-9741c42200b66abc708ee6da269a29c8bd912cee",
      sha256 = "c8278ad5d1f502007c93c08894b3048d2c98130eacec10c6842b2a36002990f4",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2021-05-21T08:48:20Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/db2de74cc8c34131a6f673e35751935cc1897a0d.zip",
           "https://github.com/google/benchmark/archive/db2de74cc8c34131a6f673e35751935cc1897a0d.zip"
      ],
      strip_prefix = "benchmark-db2de74cc8c34131a6f673e35751935cc1897a0d",
      sha256 = "0b6380d26b38a7d06a578dfb286e51d804db418feef7f86a2c2af582badbfb31",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2021-05-24T13:56:00Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/fd2aa654174a882ea6a6e95dee352dca9bd224de.zip",
           "https://github.com/google/tcmalloc/archive/fd2aa654174a882ea6a6e95dee352dca9bd224de.zip"
      ],
      strip_prefix = "tcmalloc-fd2aa654174a882ea6a6e95dee352dca9bd224de",
      sha256 = "e1a0a9841a3fb43fc6c35d71ededdd1ef7bbe5b5f8af23c2d9ac3f3151df2364",
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
