"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2020-02-05T14:24:04Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/cd0fa354f63f8c9f036d1101e8eb0da643ee7f55.zip",
           "https://github.com/bazelbuild/rules_cc/archive/cd0fa354f63f8c9f036d1101e8eb0da643ee7f55.zip"
      ],
      strip_prefix = "rules_cc-cd0fa354f63f8c9f036d1101e8eb0da643ee7f55",
      sha256 = "934bcf220b5c8a7a5c830d4c94998a951024606a1c4ad855ab18e3cbf7d47a37",
    )

    # ********** rules_python *****************
    http_archive(
      name = "rules_python",  # 2019-12-05T03:53:08Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/38f86fb55b698c51e8510c807489c9f4e047480e.zip",
           "https://github.com/bazelbuild/rules_python/archive/38f86fb55b698c51e8510c807489c9f4e047480e.zip"
      ],
      strip_prefix = "rules_python-38f86fb55b698c51e8510c807489c9f4e047480e",
      sha256 = "7d64815f4b22400bed0f1b9da663037e1578573446b7bc78f20f24b2b5459bb9",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2020-02-07T21:58:49Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/d95d1567165d449e4c213ea31a15cbb112a9865f.zip",
           "https://github.com/abseil/abseil-cpp/archive/d95d1567165d449e4c213ea31a15cbb112a9865f.zip"
      ],
      strip_prefix = "abseil-cpp-d95d1567165d449e4c213ea31a15cbb112a9865f",
      sha256 = "4320a49cef887ddded56c55beb72c56c8fbb4af28813881962584c22d82a5904",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2020-02-07T23:20:45Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/41b5f149ab306e96b5b2faf523505d75acffd98a.zip",
           "https://github.com/google/googletest/archive/41b5f149ab306e96b5b2faf523505d75acffd98a.zip"
      ],
      strip_prefix = "googletest-41b5f149ab306e96b5b2faf523505d75acffd98a",
      sha256 = "bba6ff1b12565c767fc623c1bfa8778588e147f38fec6630be16862f2a63408c",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2020-02-07T23:48:01Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/8982e1ee6aef31e48170400b7d1dc9969b156e5e.zip",
           "https://github.com/google/benchmark/archive/8982e1ee6aef31e48170400b7d1dc9969b156e5e.zip"
      ],
      strip_prefix = "benchmark-8982e1ee6aef31e48170400b7d1dc9969b156e5e",
      sha256 = "c3673a6c8c9233e88d885c61a4f152ae585247901c6e221b19e4cfe5415f743f",
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
