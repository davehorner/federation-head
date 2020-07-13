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
      sha256 = "556c1b6cf5e9093ed309fdfc9ffa85cfeef6bbe6e2cfd858b2ec07134484aa62",
    )

    # ********** rules_python *****************
    http_archive(
      name = "rules_python",  # 2020-07-12T12:40:10Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/32e964842b4139645417d0a8c24c807c163d7cfc.zip",
           "https://github.com/bazelbuild/rules_python/archive/32e964842b4139645417d0a8c24c807c163d7cfc.zip"
      ],
      strip_prefix = "rules_python-32e964842b4139645417d0a8c24c807c163d7cfc",
      sha256 = "3590bcb90a75c32ba8b10d692d26838caedbc267a57db23931694abc9598c873",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2020-07-12T21:21:35Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/302b250e1d917ede77b5ff00a6fd9f28430f1563.zip",
           "https://github.com/abseil/abseil-cpp/archive/302b250e1d917ede77b5ff00a6fd9f28430f1563.zip"
      ],
      strip_prefix = "abseil-cpp-302b250e1d917ede77b5ff00a6fd9f28430f1563",
      sha256 = "556c1b6cf5e9093ed309fdfc9ffa85cfeef6bbe6e2cfd858b2ec07134484aa62",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2020-07-09T17:35:53Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/70b90929b1da20580cad9ed996397cf04ef8f16d.zip",
           "https://github.com/google/googletest/archive/70b90929b1da20580cad9ed996397cf04ef8f16d.zip"
      ],
      strip_prefix = "googletest-70b90929b1da20580cad9ed996397cf04ef8f16d",
      sha256 = "556c1b6cf5e9093ed309fdfc9ffa85cfeef6bbe6e2cfd858b2ec07134484aa62",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2020-07-09T11:54:41Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/37177a84b7e8d33696ea1e1854513cb0de3b4dc3.zip",
           "https://github.com/google/benchmark/archive/37177a84b7e8d33696ea1e1854513cb0de3b4dc3.zip"
      ],
      strip_prefix = "benchmark-37177a84b7e8d33696ea1e1854513cb0de3b4dc3",
      sha256 = "556c1b6cf5e9093ed309fdfc9ffa85cfeef6bbe6e2cfd858b2ec07134484aa62",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2020-07-10T19:36:16Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/65bf45558405312282b71b212f77827bc16bd683.zip",
           "https://github.com/google/tcmalloc/archive/65bf45558405312282b71b212f77827bc16bd683.zip"
      ],
      strip_prefix = "tcmalloc-65bf45558405312282b71b212f77827bc16bd683",
      sha256 = "de78a2a1c47722ab165a36d29e849075e7920e925194eb8ee25f0dafab3cd01c",
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
