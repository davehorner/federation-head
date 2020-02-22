"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2020-02-19T10:22:42Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/726dd8157557f1456b3656e26ab21a1646653405.zip",
           "https://github.com/bazelbuild/rules_cc/archive/726dd8157557f1456b3656e26ab21a1646653405.zip"
      ],
      strip_prefix = "rules_cc-726dd8157557f1456b3656e26ab21a1646653405",
      sha256 = "98d5f9324d346bdce89a1a9ced1b9a3fcb2bae8b9a71510de7afa0cfb466d7af",
    )

    # ********** rules_python *****************
    http_archive(
      name = "rules_python",  # 2020-02-21T20:02:50Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/dd7f9c5f01bafbfea08c44092b6b0c8fc8fcb77f.zip",
           "https://github.com/bazelbuild/rules_python/archive/dd7f9c5f01bafbfea08c44092b6b0c8fc8fcb77f.zip"
      ],
      strip_prefix = "rules_python-dd7f9c5f01bafbfea08c44092b6b0c8fc8fcb77f",
      sha256 = "ddb2e1298684defde2f5e466d96e572119f30f9e2a901a7a81474fd4fa9f6d52",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2020-02-21T20:56:04Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/b69c7d880caddfc25bf348dbcfe9d45fdd8bc6e6.zip",
           "https://github.com/abseil/abseil-cpp/archive/b69c7d880caddfc25bf348dbcfe9d45fdd8bc6e6.zip"
      ],
      strip_prefix = "abseil-cpp-b69c7d880caddfc25bf348dbcfe9d45fdd8bc6e6",
      sha256 = "20f287a05b5625bbbcc8a45108c7750aa8d66b8cb0935cdc8193d9d6afc1d2a9",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2020-02-13T18:52:14Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/23b2a3b1cf803999fb38175f6e9e038a4495c8a5.zip",
           "https://github.com/google/googletest/archive/23b2a3b1cf803999fb38175f6e9e038a4495c8a5.zip"
      ],
      strip_prefix = "googletest-23b2a3b1cf803999fb38175f6e9e038a4495c8a5",
      sha256 = "11d71c27a79346747c74f470c46e6c4d4ab764e3a2507b38ab1f7eba265fc986",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2020-02-21T14:53:25Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/c078337494086f9372a46b4ed31a3ae7b3f1a6a2.zip",
           "https://github.com/google/benchmark/archive/c078337494086f9372a46b4ed31a3ae7b3f1a6a2.zip"
      ],
      strip_prefix = "benchmark-c078337494086f9372a46b4ed31a3ae7b3f1a6a2",
      sha256 = "0dee85144791e4aab107b9a381df410389951504d277bd811cb747ca70af5103",
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
