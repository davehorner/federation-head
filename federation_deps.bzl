"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2021-10-07T16:39:32Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/8f861e884c0003554b39fd0358293bbde3923ecd.zip",
           "https://github.com/bazelbuild/rules_cc/archive/8f861e884c0003554b39fd0358293bbde3923ecd.zip"
      ],
      strip_prefix = "rules_cc-8f861e884c0003554b39fd0358293bbde3923ecd",
      sha256 = "8a726c5682bbab9ff4c1afaced45a446129d5a816555e234ff987dcc297a0f66",
    )

    # ********** rules_python *****************
    http_archive(
      name = "rules_python",  # 2021-10-14T23:36:35Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/cd5416e3b2702e7ff7d7564c2a9395344e9e724a.zip",
           "https://github.com/bazelbuild/rules_python/archive/cd5416e3b2702e7ff7d7564c2a9395344e9e724a.zip"
      ],
      strip_prefix = "rules_python-cd5416e3b2702e7ff7d7564c2a9395344e9e724a",
      sha256 = "c816b4e3429c0b7fe82f8ccaa37f258584fc846dbd6fb001749272fd88429f60",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2021-10-15T17:31:11Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/7e446075d4aff4601c1e7627c7c0be2c4833a53a.zip",
           "https://github.com/abseil/abseil-cpp/archive/7e446075d4aff4601c1e7627c7c0be2c4833a53a.zip"
      ],
      strip_prefix = "abseil-cpp-7e446075d4aff4601c1e7627c7c0be2c4833a53a",
      sha256 = "6487a4eebeb92c50564be523c9e73299b72bbe927f262c2f05ca66585949c0fd",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2021-10-13T16:28:20Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/16f637fbf4ffc3f7a01fa4eceb7906634565242f.zip",
           "https://github.com/google/googletest/archive/16f637fbf4ffc3f7a01fa4eceb7906634565242f.zip"
      ],
      strip_prefix = "googletest-16f637fbf4ffc3f7a01fa4eceb7906634565242f",
      sha256 = "002d540f947e5981f54ddaab476d87b113d2a14822f21a34dca30f24c9492a24",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2021-09-20T09:19:51Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/0baacde3618ca617da95375e0af13ce1baadea47.zip",
           "https://github.com/google/benchmark/archive/0baacde3618ca617da95375e0af13ce1baadea47.zip"
      ],
      strip_prefix = "benchmark-0baacde3618ca617da95375e0af13ce1baadea47",
      sha256 = "62e2f2e6d8a744d67e4bbc212fcfd06647080de4253c97ad5c6749e09faf2cb0",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2021-10-11T16:24:31Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/0cd26a48c6b21cbb7156660300ee3fb7092b37c9.zip",
           "https://github.com/google/tcmalloc/archive/0cd26a48c6b21cbb7156660300ee3fb7092b37c9.zip"
      ],
      strip_prefix = "tcmalloc-0cd26a48c6b21cbb7156660300ee3fb7092b37c9",
      sha256 = "7b72dc68b76c0084cc66c5e984866bcab163024ca0ce425351969998f3a17697",
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
