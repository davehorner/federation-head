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
      name = "rules_python",  # 2021-03-22T23:20:55Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/7aaf7627485c84c4ecd976f7b3fa940f60bb007c.zip",
           "https://github.com/bazelbuild/rules_python/archive/7aaf7627485c84c4ecd976f7b3fa940f60bb007c.zip"
      ],
      strip_prefix = "rules_python-7aaf7627485c84c4ecd976f7b3fa940f60bb007c",
      sha256 = "5cf0a233e5f66d1190fda0fbe49938c95e8a2415aaa2b05b8bc396b3a8309d80",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2021-03-25T15:05:20Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/a09b5de0d57d7b2179210989ab63361c3c1894f5.zip",
           "https://github.com/abseil/abseil-cpp/archive/a09b5de0d57d7b2179210989ab63361c3c1894f5.zip"
      ],
      strip_prefix = "abseil-cpp-a09b5de0d57d7b2179210989ab63361c3c1894f5",
      sha256 = "595a502009b3f97f9407ff0557abc0fc4a9d9a574662353ccb2971c539ddb2e3",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2021-03-25T23:04:59Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/df7fee587d442b372ef43bd66c6a2f5c9af8c5eb.zip",
           "https://github.com/google/googletest/archive/df7fee587d442b372ef43bd66c6a2f5c9af8c5eb.zip"
      ],
      strip_prefix = "googletest-df7fee587d442b372ef43bd66c6a2f5c9af8c5eb",
      sha256 = "1a44bc8668c9c1eb876dbb29a8c615fb825f4b21ca59e0217ea602501a92f493",
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
      name = "com_github_google_tcmalloc",  # 2021-03-26T04:45:37Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/50b0a96d30f8acd7278a82816a2a325d50821cda.zip",
           "https://github.com/google/tcmalloc/archive/50b0a96d30f8acd7278a82816a2a325d50821cda.zip"
      ],
      strip_prefix = "tcmalloc-50b0a96d30f8acd7278a82816a2a325d50821cda",
      sha256 = "62191e4b371e0d5852d40832f1713fcfd27a29cb7ef961844617fa172eded0c2",
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
