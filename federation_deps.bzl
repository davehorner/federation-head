"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2020-11-11T13:29:11Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/b1c40e1de81913a3c40e5948f78719c28152486d.zip",
           "https://github.com/bazelbuild/rules_cc/archive/b1c40e1de81913a3c40e5948f78719c28152486d.zip"
      ],
      strip_prefix = "rules_cc-b1c40e1de81913a3c40e5948f78719c28152486d",
      sha256 = "d0c573b94a6ef20ef6ff20154a23d0efcb409fb0e1ff0979cec318dfe42f0cdd",
    )

    # ********** rules_python *****************
    http_archive(
      name = "rules_python",  # 2021-01-10T12:54:33Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/a4a1ccffc666db5376342789ad021a943fb84256.zip",
           "https://github.com/bazelbuild/rules_python/archive/a4a1ccffc666db5376342789ad021a943fb84256.zip"
      ],
      strip_prefix = "rules_python-a4a1ccffc666db5376342789ad021a943fb84256",
      sha256 = "b8c25b89ce184accfaec6d8d923d41709acad6876c7f9b71c1ba669312ed44a0",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2021-01-14T16:20:44Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/ff361eb3aac20f08ec7b1ccfdd3204b0aa6cbe33.zip",
           "https://github.com/abseil/abseil-cpp/archive/ff361eb3aac20f08ec7b1ccfdd3204b0aa6cbe33.zip"
      ],
      strip_prefix = "abseil-cpp-ff361eb3aac20f08ec7b1ccfdd3204b0aa6cbe33",
      sha256 = "18104277858af5733668ff00262896bf62b40056ab50f6398b0d1b383feae853",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2021-01-14T01:59:51Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/6c58c11d5497b6ee1df3cb400ce30deb72fc28c0.zip",
           "https://github.com/google/googletest/archive/6c58c11d5497b6ee1df3cb400ce30deb72fc28c0.zip"
      ],
      strip_prefix = "googletest-6c58c11d5497b6ee1df3cb400ce30deb72fc28c0",
      sha256 = "7f958f2f142e0733cf46437c0ae28e41c617950e4a6d5962319bb3876e41a24b",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2021-01-05T09:54:04Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/8df87f6c879cbcabd17c5cfcec7b89687df36953.zip",
           "https://github.com/google/benchmark/archive/8df87f6c879cbcabd17c5cfcec7b89687df36953.zip"
      ],
      strip_prefix = "benchmark-8df87f6c879cbcabd17c5cfcec7b89687df36953",
      sha256 = "da89d07439a4ba0e649a3d957af639db15b3d2ee65731a4b58e674a59f82b893",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2021-01-13T20:16:14Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/1ceaf9496ea9771fc61c2e2104130ceb7f7bb9b6.zip",
           "https://github.com/google/tcmalloc/archive/1ceaf9496ea9771fc61c2e2104130ceb7f7bb9b6.zip"
      ],
      strip_prefix = "tcmalloc-1ceaf9496ea9771fc61c2e2104130ceb7f7bb9b6",
      sha256 = "0e0ae9766206a148943169144009c4159b7e2bd64e20d8ba39489e17273f342a",
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
