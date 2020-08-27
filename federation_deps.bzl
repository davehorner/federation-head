"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2020-08-18T17:57:24Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/02becfef8bc97bda4f9bb64e153f1b0671aec4ba.zip",
           "https://github.com/bazelbuild/rules_cc/archive/02becfef8bc97bda4f9bb64e153f1b0671aec4ba.zip"
      ],
      strip_prefix = "rules_cc-02becfef8bc97bda4f9bb64e153f1b0671aec4ba",
      sha256 = "fa42eade3cad9190c2a6286a6213f07f1a83d26d9f082d56f526d014c6ea7444",
    )

    # ********** rules_python *****************
    http_archive(
      name = "rules_python",  # 2020-08-26T02:05:37Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/1d5d7249ffabd743b0c9d62826b44cbfb5702556.zip",
           "https://github.com/bazelbuild/rules_python/archive/1d5d7249ffabd743b0c9d62826b44cbfb5702556.zip"
      ],
      strip_prefix = "rules_python-1d5d7249ffabd743b0c9d62826b44cbfb5702556",
      sha256 = "b279c209bb80064813a49221a9f84d4a6313f8c94dcca4acc62956c3c93a8f28",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2020-08-26T23:59:45Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/c03c18e7fef8d06eb6c445f5607af533e69cadfe.zip",
           "https://github.com/abseil/abseil-cpp/archive/c03c18e7fef8d06eb6c445f5607af533e69cadfe.zip"
      ],
      strip_prefix = "abseil-cpp-c03c18e7fef8d06eb6c445f5607af533e69cadfe",
      sha256 = "3ca6fe98a9a7bce55f8c7462000ab643f33c25635d454f78d64f4910aa096e84",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2020-08-27T01:23:05Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/df6b75949b1efab7606ba60c0f0a0125ac95c5af.zip",
           "https://github.com/google/googletest/archive/df6b75949b1efab7606ba60c0f0a0125ac95c5af.zip"
      ],
      strip_prefix = "googletest-df6b75949b1efab7606ba60c0f0a0125ac95c5af",
      sha256 = "c56bf83954642b44357051d1c0979d9ec58c79bc9e20cb4961ba65c1c97a120e",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2020-08-25T12:47:44Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/4857962394266165790de2266a695f328fc144f3.zip",
           "https://github.com/google/benchmark/archive/4857962394266165790de2266a695f328fc144f3.zip"
      ],
      strip_prefix = "benchmark-4857962394266165790de2266a695f328fc144f3",
      sha256 = "7d2a020bcfffb8238fe9c035510d13b5bad072c219500c33c4a0be3bac6a224f",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2020-08-25T16:42:39Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/c52615abade8e1a5e4c91e735a0eeaba15366682.zip",
           "https://github.com/google/tcmalloc/archive/c52615abade8e1a5e4c91e735a0eeaba15366682.zip"
      ],
      strip_prefix = "tcmalloc-c52615abade8e1a5e4c91e735a0eeaba15366682",
      sha256 = "e80c9db73392670477b264271aa6bc52b346bea59668674dcd1c6fbbda5d6376",
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
