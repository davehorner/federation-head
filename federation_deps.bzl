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
      name = "rules_python",  # 2020-06-12T14:45:24Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/c82a8cc1f44ba6e81c65e801b1ec3e4f3852359e.zip",
           "https://github.com/bazelbuild/rules_python/archive/c82a8cc1f44ba6e81c65e801b1ec3e4f3852359e.zip"
      ],
      strip_prefix = "rules_python-c82a8cc1f44ba6e81c65e801b1ec3e4f3852359e",
      sha256 = "877537a37b3c17cbd84cdc1d1892a22fa185b8298d3a1ab301c5dbff42480cf5",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2020-06-17T14:29:28Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/4a851046a0102cd986a5714a1af8deef28a544c4.zip",
           "https://github.com/abseil/abseil-cpp/archive/4a851046a0102cd986a5714a1af8deef28a544c4.zip"
      ],
      strip_prefix = "abseil-cpp-4a851046a0102cd986a5714a1af8deef28a544c4",
      sha256 = "ecdf600f40b8390d7b3adf623892b422fd500235b6353e5f846a417ca19157f0",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2020-06-15T20:56:42Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/549c5d061e3c5ea4acffb43c92b048dd16812805.zip",
           "https://github.com/google/googletest/archive/549c5d061e3c5ea4acffb43c92b048dd16812805.zip"
      ],
      strip_prefix = "googletest-549c5d061e3c5ea4acffb43c92b048dd16812805",
      sha256 = "b29e3d79718467ae8988573cd57f5f63832b980e3a7ab44a0cde1a191fde833e",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2020-06-17T11:58:12Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/15e6dfd7182b74b4fb6860f52fe314d0654307fb.zip",
           "https://github.com/google/benchmark/archive/15e6dfd7182b74b4fb6860f52fe314d0654307fb.zip"
      ],
      strip_prefix = "benchmark-15e6dfd7182b74b4fb6860f52fe314d0654307fb",
      sha256 = "b41f0cf12fc217c69117e3a492059dea260dc1a57cfb8ddc11cfcada8dac411a",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2020-06-17T15:48:42Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/0e804fce712aee21c344c50eac242c365e0edd65.zip",
           "https://github.com/google/tcmalloc/archive/0e804fce712aee21c344c50eac242c365e0edd65.zip"
      ],
      strip_prefix = "tcmalloc-0e804fce712aee21c344c50eac242c365e0edd65",
      sha256 = "eb4f2b3a680e8effca1ea320a151a249ddbb8792a6936d255323ea543e040c31",
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
