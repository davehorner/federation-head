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
      name = "rules_python",  # 2020-02-20T18:22:32Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/7c0abe59d3333652449a868f33a243bdc7d39666.zip",
           "https://github.com/bazelbuild/rules_python/archive/7c0abe59d3333652449a868f33a243bdc7d39666.zip"
      ],
      strip_prefix = "rules_python-7c0abe59d3333652449a868f33a243bdc7d39666",
      sha256 = "0f206e34ae9de6feb0a2fd47976fcfd655eae0732d50c40b12b30a4cf9c16118",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2020-02-21T03:36:23Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/f9b3d6e493c1b6ab3dbdab71c5f8fa849db4abaf.zip",
           "https://github.com/abseil/abseil-cpp/archive/f9b3d6e493c1b6ab3dbdab71c5f8fa849db4abaf.zip"
      ],
      strip_prefix = "abseil-cpp-f9b3d6e493c1b6ab3dbdab71c5f8fa849db4abaf",
      sha256 = "810197f61b7502909cd73f45dbbc281dc962ef3cde294c83fd4294c80a5af090",
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
      name = "com_github_google_benchmark",  # 2020-02-18T12:04:45Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/168604d8f8e84c1f991de85f1a723c0df9a5b944.zip",
           "https://github.com/google/benchmark/archive/168604d8f8e84c1f991de85f1a723c0df9a5b944.zip"
      ],
      strip_prefix = "benchmark-168604d8f8e84c1f991de85f1a723c0df9a5b944",
      sha256 = "1c21db42e0aac9c15ca3c6a7179c966c1f7916d7a573462a85b2eb72197997c7",
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
