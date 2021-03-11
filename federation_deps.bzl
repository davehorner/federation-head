"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2021-03-10T17:58:09Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/9544a3eeacfba706ab6be839af9b4a9a26f0a4bd.zip",
           "https://github.com/bazelbuild/rules_cc/archive/9544a3eeacfba706ab6be839af9b4a9a26f0a4bd.zip"
      ],
      strip_prefix = "rules_cc-9544a3eeacfba706ab6be839af9b4a9a26f0a4bd",
      sha256 = "24f73ccc0731cb6b5fd2f639ab7d6c60a33086f249074aa843a27f788f0572d0",
    )

    # ********** rules_python *****************
    http_archive(
      name = "rules_python",  # 2021-03-11T03:34:12Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/c37ba2215eccab53ae1da5f827a335281f81b9e1.zip",
           "https://github.com/bazelbuild/rules_python/archive/c37ba2215eccab53ae1da5f827a335281f81b9e1.zip"
      ],
      strip_prefix = "rules_python-c37ba2215eccab53ae1da5f827a335281f81b9e1",
      sha256 = "c1de63ef53c7dfea9107dfb8b824dbd33669557ae6ca1950e2543d6436e6d42e",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2021-03-10T16:40:10Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/2e9532cc6c701a8323d0cffb468999ab804095ab.zip",
           "https://github.com/abseil/abseil-cpp/archive/2e9532cc6c701a8323d0cffb468999ab804095ab.zip"
      ],
      strip_prefix = "abseil-cpp-2e9532cc6c701a8323d0cffb468999ab804095ab",
      sha256 = "542dee3a6692cf7851329f4f9f4de463bb6305c7e0439946d4ba750852e4d71c",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2021-03-10T16:49:41Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/e8512bc38c4c0060858c3306b0660a3f126aee30.zip",
           "https://github.com/google/googletest/archive/e8512bc38c4c0060858c3306b0660a3f126aee30.zip"
      ],
      strip_prefix = "googletest-e8512bc38c4c0060858c3306b0660a3f126aee30",
      sha256 = "72ccb29062790ffab9ad89524b9846958afd6ed96c0151d30f373e94f518245a",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2021-03-08T09:23:24Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/cc9abfc8f12577ea83b2d093693ba70c3c0fd2c7.zip",
           "https://github.com/google/benchmark/archive/cc9abfc8f12577ea83b2d093693ba70c3c0fd2c7.zip"
      ],
      strip_prefix = "benchmark-cc9abfc8f12577ea83b2d093693ba70c3c0fd2c7",
      sha256 = "bc60957389e8d9e37d1a40fad22da7a1950e382850cec80b0133fcbfa7d41016",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2021-03-10T23:53:16Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/ade7d0393fa1449f22f5198f7126ac515fcd868c.zip",
           "https://github.com/google/tcmalloc/archive/ade7d0393fa1449f22f5198f7126ac515fcd868c.zip"
      ],
      strip_prefix = "tcmalloc-ade7d0393fa1449f22f5198f7126ac515fcd868c",
      sha256 = "33994f26f75eee6e89ceef64b3204cb1d3ecf5ba39d7a95da64198aca1ad8d65",
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
