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
      name = "rules_python",  # 2021-10-01T23:04:58Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/8e2b6de3e7f434dd98a8d25403bd7fb45866eacc.zip",
           "https://github.com/bazelbuild/rules_python/archive/8e2b6de3e7f434dd98a8d25403bd7fb45866eacc.zip"
      ],
      strip_prefix = "rules_python-8e2b6de3e7f434dd98a8d25403bd7fb45866eacc",
      sha256 = "471776a4b288d0053931686f80358e469c3e7ecf067aa2eab38d2125e4cdbd7e",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2021-10-11T15:51:37Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/084aa074c6e3994471fcdb8f542d3a24916792de.zip",
           "https://github.com/abseil/abseil-cpp/archive/084aa074c6e3994471fcdb8f542d3a24916792de.zip"
      ],
      strip_prefix = "abseil-cpp-084aa074c6e3994471fcdb8f542d3a24916792de",
      sha256 = "b8a6957111b300d9ce7dd57285b233547ca23fae21c11331a10488f1c4102775",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2021-10-05T14:59:42Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/075810f7a20405ea09a93f68847d6e963212fa62.zip",
           "https://github.com/google/googletest/archive/075810f7a20405ea09a93f68847d6e963212fa62.zip"
      ],
      strip_prefix = "googletest-075810f7a20405ea09a93f68847d6e963212fa62",
      sha256 = "19949c33e795197dbb8610672c18bff447dc31faef3257665d69d1bf0884d67b",
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
