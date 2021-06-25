"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2021-06-07T16:41:49Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/daf6ace7cfeacd6a83e9ff2ed659f416537b6c74.zip",
           "https://github.com/bazelbuild/rules_cc/archive/daf6ace7cfeacd6a83e9ff2ed659f416537b6c74.zip"
      ],
      strip_prefix = "rules_cc-daf6ace7cfeacd6a83e9ff2ed659f416537b6c74",
      sha256 = "b295cad8c5899e371dde175079c0a2cdc0151f5127acc92366a8c986beb95c76",
    )

    # ********** rules_python *****************
    http_archive(
      name = "rules_python",  # 2021-06-25T03:11:56Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/929d5a13d4eb1b930086d9353fc6f2d6ad306e43.zip",
           "https://github.com/bazelbuild/rules_python/archive/929d5a13d4eb1b930086d9353fc6f2d6ad306e43.zip"
      ],
      strip_prefix = "rules_python-929d5a13d4eb1b930086d9353fc6f2d6ad306e43",
      sha256 = "b590e4fc07ec842b8cc8a39a4ca0336f44d7d5f96753229d240884cd016dc1e3",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2021-06-24T15:32:25Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/a2419e63b8ae3b924152822f3c9f9da67ff6e215.zip",
           "https://github.com/abseil/abseil-cpp/archive/a2419e63b8ae3b924152822f3c9f9da67ff6e215.zip"
      ],
      strip_prefix = "abseil-cpp-a2419e63b8ae3b924152822f3c9f9da67ff6e215",
      sha256 = "321de4d5582cda06b78880e7ce0580f38355b33f67041bf7779b7f66029d4f06",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2021-06-22T13:30:42Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/355d57d90d9744c41ac7c99f1e960778f1c63040.zip",
           "https://github.com/google/googletest/archive/355d57d90d9744c41ac7c99f1e960778f1c63040.zip"
      ],
      strip_prefix = "googletest-355d57d90d9744c41ac7c99f1e960778f1c63040",
      sha256 = "bc063f89d5ca3a7d279f49de77c3903dce9cdf16f8b37ee106ddeda3049b56bd",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2021-06-24T17:55:37Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/1799e1b9ec02a111c9a1ce79b10c9233dd60db75.zip",
           "https://github.com/google/benchmark/archive/1799e1b9ec02a111c9a1ce79b10c9233dd60db75.zip"
      ],
      strip_prefix = "benchmark-1799e1b9ec02a111c9a1ce79b10c9233dd60db75",
      sha256 = "f1a5a7170d1b145353e535d6d6f049c361c94ecae34d4c667ea8521dff692d69",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2021-06-21T15:20:05Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/a8a232f3dc9c41196e06251e7164d0404f19cf49.zip",
           "https://github.com/google/tcmalloc/archive/a8a232f3dc9c41196e06251e7164d0404f19cf49.zip"
      ],
      strip_prefix = "tcmalloc-a8a232f3dc9c41196e06251e7164d0404f19cf49",
      sha256 = "caf0cd0e8db1c173b9de5e9c6877763b6110fee4f22688cf808736895d7f0477",
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
    # ********** rules_fuzzing (pinned to 0.1.3) *****************
    http_archive(
      name = "rules_fuzzing",
      sha256 = "94f25c7a18db0502ace26a3ef7d0a25fd7c195c4e9770ddd1b1ec718e8936091",
      strip_prefix = "rules_fuzzing-0.1.3",
      # Use the same URL twice to trick bazel into re-trying if connection fails
      urls = [
          "https://github.com/bazelbuild/rules_fuzzing/archive/v0.1.3.zip",
          "https://github.com/bazelbuild/rules_fuzzing/archive/v0.1.3.zip"
      ],
    )
