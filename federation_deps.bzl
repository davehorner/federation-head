"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2021-02-25T13:13:20Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/d5d830baafdf0c6f95d7af1577dbaa610fa76a92.zip",
           "https://github.com/bazelbuild/rules_cc/archive/d5d830baafdf0c6f95d7af1577dbaa610fa76a92.zip"
      ],
      strip_prefix = "rules_cc-d5d830baafdf0c6f95d7af1577dbaa610fa76a92",
      sha256 = "6c8dfa9d034d39d09077db726cf50e822d16a2fc18e0984cf0971c7aa3c39728",
    )

    # ********** rules_python *****************
    http_archive(
      name = "rules_python",  # 2021-03-04T01:55:29Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/fd31d2c7ad5c8fe2b4c85e81b2c8205aada84bd8.zip",
           "https://github.com/bazelbuild/rules_python/archive/fd31d2c7ad5c8fe2b4c85e81b2c8205aada84bd8.zip"
      ],
      strip_prefix = "rules_python-fd31d2c7ad5c8fe2b4c85e81b2c8205aada84bd8",
      sha256 = "6e25d7f0db4307b4b7a20a917dbd91ae6860d0e9f783ddbb7acc2a7681f0350f",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2021-03-03T17:03:24Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/b0735979d778a768caee207f01f327535cbd2140.zip",
           "https://github.com/abseil/abseil-cpp/archive/b0735979d778a768caee207f01f327535cbd2140.zip"
      ],
      strip_prefix = "abseil-cpp-b0735979d778a768caee207f01f327535cbd2140",
      sha256 = "0dbe936c51ad6567446b5a60ea5f2649bdfe5ed4e054972960a0799b74da9d43",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2021-03-04T17:07:39Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/e7e591764baba0a0c3c9ad0014430e7a27331d16.zip",
           "https://github.com/google/googletest/archive/e7e591764baba0a0c3c9ad0014430e7a27331d16.zip"
      ],
      strip_prefix = "googletest-e7e591764baba0a0c3c9ad0014430e7a27331d16",
      sha256 = "4958743d6f1b96c249d7ddb0707e82f78c9e7c78f95a598efb4c347563a7a9c7",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2021-02-22T09:55:59Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/5c43112eb3d70cec10784d8d1f4373bc7397836b.zip",
           "https://github.com/google/benchmark/archive/5c43112eb3d70cec10784d8d1f4373bc7397836b.zip"
      ],
      strip_prefix = "benchmark-5c43112eb3d70cec10784d8d1f4373bc7397836b",
      sha256 = "5fb6e94a88b468cf8625ef687ff151d3817c65e903a21f76674cd3d9587883df",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2021-03-02T19:36:21Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/ca93361644ebe822c479a31018f9221549e07a87.zip",
           "https://github.com/google/tcmalloc/archive/ca93361644ebe822c479a31018f9221549e07a87.zip"
      ],
      strip_prefix = "tcmalloc-ca93361644ebe822c479a31018f9221549e07a87",
      sha256 = "8330f8deaa9f1ec908face43fe49da34b38d7c42e76d6ddbdbe5c6ede71a9c6a",
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
