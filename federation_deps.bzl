"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2020-05-13T14:24:06Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/818289e5613731ae410efb54218a4077fb9dbb03.zip",
           "https://github.com/bazelbuild/rules_cc/archive/818289e5613731ae410efb54218a4077fb9dbb03.zip"
      ],
      strip_prefix = "rules_cc-818289e5613731ae410efb54218a4077fb9dbb03",
      sha256 = "0adbd6f567291ad526e82c765e15aed33cea5e256eeba129f1501142c2c56610",
    )

    # ********** rules_python *****************
    http_archive(
      name = "rules_python",  # 2020-05-19T04:09:56Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/29f96bd504f88fe0a148a726b877b6b3f8c7ab9f.zip",
           "https://github.com/bazelbuild/rules_python/archive/29f96bd504f88fe0a148a726b877b6b3f8c7ab9f.zip"
      ],
      strip_prefix = "rules_python-29f96bd504f88fe0a148a726b877b6b3f8c7ab9f",
      sha256 = "d063e115181a82d6ad1e66cfdd42668d283359cb1066768157774ff1ad9af12b",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2020-05-19T14:59:49Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/768eb2ca2857342673fcd462792ce04b8bac3fa3.zip",
           "https://github.com/abseil/abseil-cpp/archive/768eb2ca2857342673fcd462792ce04b8bac3fa3.zip"
      ],
      strip_prefix = "abseil-cpp-768eb2ca2857342673fcd462792ce04b8bac3fa3",
      sha256 = "f0bf119699847ee0a5ddc00b0bcc8bc5574ae59e4430179eca765fda698e69d9",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2020-05-14T00:36:05Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/011959aafddcd30611003de96cfd8d7a7685c700.zip",
           "https://github.com/google/googletest/archive/011959aafddcd30611003de96cfd8d7a7685c700.zip"
      ],
      strip_prefix = "googletest-011959aafddcd30611003de96cfd8d7a7685c700",
      sha256 = "6a5d7d63cd6e0ad2a7130471105a3b83799a7a2b14ef7ec8d742b54f01a4833c",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2020-05-06T16:28:29Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/d3ad0b9d11c190cb58de5fb17c3555def61fdc96.zip",
           "https://github.com/google/benchmark/archive/d3ad0b9d11c190cb58de5fb17c3555def61fdc96.zip"
      ],
      strip_prefix = "benchmark-d3ad0b9d11c190cb58de5fb17c3555def61fdc96",
      sha256 = "ce4147ea69a18d4efec6f649ec0f7628b363929be6a45a721f17d81a38ee8583",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2020-05-19T17:17:03Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/3ee5eb50cd7e347ef14a00c083f4d0fc97f42296.zip",
           "https://github.com/google/tcmalloc/archive/3ee5eb50cd7e347ef14a00c083f4d0fc97f42296.zip"
      ],
      strip_prefix = "tcmalloc-3ee5eb50cd7e347ef14a00c083f4d0fc97f42296",
      sha256 = "05d3fe81cdd32e168dfb0d16102ac80ea7591d337fe66b28e2589d5363ffce29",
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
