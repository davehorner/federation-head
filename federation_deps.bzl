"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2021-03-16T13:45:21Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/608c7b605fb844a20e96a3eddc9b49ad2542adab.zip",
           "https://github.com/bazelbuild/rules_cc/archive/608c7b605fb844a20e96a3eddc9b49ad2542adab.zip"
      ],
      strip_prefix = "rules_cc-608c7b605fb844a20e96a3eddc9b49ad2542adab",
      sha256 = "ed36cc7a6f46b7c28ab4009db4a37e350e1ba367446b0886bcc9cdc1df92752e",
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
      name = "com_google_googletest",  # 2021-03-16T13:51:31Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/b7d472f1225c5a64943821d8483fecb469d3f382.zip",
           "https://github.com/google/googletest/archive/b7d472f1225c5a64943821d8483fecb469d3f382.zip"
      ],
      strip_prefix = "googletest-b7d472f1225c5a64943821d8483fecb469d3f382",
      sha256 = "371958d634a3ffc52f3a0f63ac77b99e4795901753ebf431a02454309fac117d",
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
      name = "com_github_google_tcmalloc",  # 2021-03-16T18:00:51Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/69829ac94fa690daa4c75588daacf132aee62b5f.zip",
           "https://github.com/google/tcmalloc/archive/69829ac94fa690daa4c75588daacf132aee62b5f.zip"
      ],
      strip_prefix = "tcmalloc-69829ac94fa690daa4c75588daacf132aee62b5f",
      sha256 = "4431864eb4269358964fae1dffae1cd8ab926a47853f0529d57ad44acb29f65f",
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
