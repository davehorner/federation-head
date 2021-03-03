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
      name = "rules_python",  # 2021-02-16T18:15:13Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/6135186f93d46ab8551d9fe52bac97bf0c2de1ab.zip",
           "https://github.com/bazelbuild/rules_python/archive/6135186f93d46ab8551d9fe52bac97bf0c2de1ab.zip"
      ],
      strip_prefix = "rules_python-6135186f93d46ab8551d9fe52bac97bf0c2de1ab",
      sha256 = "a83c49226394d80442bf1e872ed02b1a5633969b5ec7f7f5644b2852019e76d7",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2021-03-01T16:09:42Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/a76698790753d2ec71f655cdc84d61bcb27780d4.zip",
           "https://github.com/abseil/abseil-cpp/archive/a76698790753d2ec71f655cdc84d61bcb27780d4.zip"
      ],
      strip_prefix = "abseil-cpp-a76698790753d2ec71f655cdc84d61bcb27780d4",
      sha256 = "1c47b2afe38201330cdd0a328bf69f9ca85567e241bea77d35765fdcc2830af7",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2021-02-26T22:58:17Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/e8b478a7356f21efbada1aae15b49b332cc54e3f.zip",
           "https://github.com/google/googletest/archive/e8b478a7356f21efbada1aae15b49b332cc54e3f.zip"
      ],
      strip_prefix = "googletest-e8b478a7356f21efbada1aae15b49b332cc54e3f",
      sha256 = "3001ec7f6deeff9ba4c69df4c5fd93560964591547e47e0970bb87a19a116c8a",
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
