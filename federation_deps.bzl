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
      name = "com_google_absl",  # 2020-07-10T23:23:10Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/61d8bc057cacd2355be9e34aa6856b87de3c4e7f.zip",
           "https://github.com/abseil/abseil-cpp/archive/61d8bc057cacd2355be9e34aa6856b87de3c4e7f.zip"
      ],
      strip_prefix = "abseil-cpp-61d8bc057cacd2355be9e34aa6856b87de3c4e7f",
      sha256 = "2018c9f5eb3db8a4c3aa5e52ecc00698e1dbc3e10b1c4f0233a92cd02929b5a1",
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
      sha256 = "3c029c3d9c215ca87e972606f48c53363b909656f31e054195c411267821ff58",
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
      sha256 = "cd5b852873c0d8fd60aba2bdb3ebc5187b484c18c72dc885d405e33198373bca",
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
      sha256 = "3f69c8ae876310162a88cc2957265d289e468cd5d9ca0b4464fa6e50cb7b8129",
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
