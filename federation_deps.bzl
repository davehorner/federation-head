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
      name = "com_google_absl",  # 2020-06-12T21:24:49Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/2c92bdc7c2f8e65198af61a0611d90a55312ee82.zip",
           "https://github.com/abseil/abseil-cpp/archive/2c92bdc7c2f8e65198af61a0611d90a55312ee82.zip"
      ],
      strip_prefix = "abseil-cpp-2c92bdc7c2f8e65198af61a0611d90a55312ee82",
      sha256 = "d2d748d24c6bf1e36eadc9669221b7994a11fc9a3103204e701c465c3a7828c1",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2020-06-12T22:24:28Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/8567b09290fe402cf01923e2131c5635b8ed851b.zip",
           "https://github.com/google/googletest/archive/8567b09290fe402cf01923e2131c5635b8ed851b.zip"
      ],
      strip_prefix = "googletest-8567b09290fe402cf01923e2131c5635b8ed851b",
      sha256 = "9a8a166eb6a56c7b3d7b19dc2c946fe4778fd6f21c7a12368ad3b836d8f1be48",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2020-06-09T08:50:20Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/8039b4030795b1c9b8cedb78e3a2a6fb89574b6e.zip",
           "https://github.com/google/benchmark/archive/8039b4030795b1c9b8cedb78e3a2a6fb89574b6e.zip"
      ],
      strip_prefix = "benchmark-8039b4030795b1c9b8cedb78e3a2a6fb89574b6e",
      sha256 = "ffac6f802df53f896e9bf03314146455d30d012fe350f5b22f9ad4fd0b0d8b98",
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
