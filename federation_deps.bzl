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
      name = "com_google_absl",  # 2020-06-15T16:44:00Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/01f5f81f93c5a18b0b1e35208e654be8d2c69bdd.zip",
           "https://github.com/abseil/abseil-cpp/archive/01f5f81f93c5a18b0b1e35208e654be8d2c69bdd.zip"
      ],
      strip_prefix = "abseil-cpp-01f5f81f93c5a18b0b1e35208e654be8d2c69bdd",
      sha256 = "ec13a1650eeb8596145e72681cd2ea7e9fa1b8ce5713ffda04b03cd64d9f09c0",
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
      name = "com_github_google_benchmark",  # 2020-06-16T06:11:50Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/76efbcdd1b6ebbcee36d1482e0df2326b84669fb.zip",
           "https://github.com/google/benchmark/archive/76efbcdd1b6ebbcee36d1482e0df2326b84669fb.zip"
      ],
      strip_prefix = "benchmark-76efbcdd1b6ebbcee36d1482e0df2326b84669fb",
      sha256 = "8d5d04fc1252c7fa3a1f11f3297048a2f74d7cd29d9b5a2a98bdc89bfcec0442",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2020-06-12T15:06:05Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/623c9e10ca11ca4eda1835817889fe29db02a1ef.zip",
           "https://github.com/google/tcmalloc/archive/623c9e10ca11ca4eda1835817889fe29db02a1ef.zip"
      ],
      strip_prefix = "tcmalloc-623c9e10ca11ca4eda1835817889fe29db02a1ef",
      sha256 = "4d32bfaf4b1f2b17bd8cedb3835baf15393391a051703643d6cf31806bf80ccd",
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
