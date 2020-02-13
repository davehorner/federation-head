"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2020-02-12T16:01:50Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/4de26b53a6ad892b605e747fbafe256e48d5b56e.zip",
           "https://github.com/bazelbuild/rules_cc/archive/4de26b53a6ad892b605e747fbafe256e48d5b56e.zip"
      ],
      strip_prefix = "rules_cc-4de26b53a6ad892b605e747fbafe256e48d5b56e",
      sha256 = "5233d5a14c23c2a9c1df0e76deba0100090f973b15e5460b596283b569823c8c",
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
      name = "com_google_absl",  # 2020-02-11T18:50:53Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/98eb410c93ad059f9bba1bf43f5bb916fc92a5ea.zip",
           "https://github.com/abseil/abseil-cpp/archive/98eb410c93ad059f9bba1bf43f5bb916fc92a5ea.zip"
      ],
      strip_prefix = "abseil-cpp-98eb410c93ad059f9bba1bf43f5bb916fc92a5ea",
      sha256 = "aabf6c57e3834f8dc3873a927f37eaf69975d4b28117fc7427dfb1c661542a87",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2020-02-11T20:50:26Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/6f5fd0d7199b9a19faa9f499ecc266e6ae0329e7.zip",
           "https://github.com/google/googletest/archive/6f5fd0d7199b9a19faa9f499ecc266e6ae0329e7.zip"
      ],
      strip_prefix = "googletest-6f5fd0d7199b9a19faa9f499ecc266e6ae0329e7",
      sha256 = "bcc5ce47c19ff7e2e4004fd3f5d9152e98aa5ef1ebf430ebf72be53a5c82dcec",
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
