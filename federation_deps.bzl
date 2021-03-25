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
      name = "com_google_absl",  # 2021-03-24T12:58:27Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/1fdbe1ea1b8c835c11ed6fbec4d4259ad104f765.zip",
           "https://github.com/abseil/abseil-cpp/archive/1fdbe1ea1b8c835c11ed6fbec4d4259ad104f765.zip"
      ],
      strip_prefix = "abseil-cpp-1fdbe1ea1b8c835c11ed6fbec4d4259ad104f765",
      sha256 = "02cf605a5942437af287c91d854b7e2ec398d97041f44d91e6fb64a652218cd3",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2021-03-22T19:18:50Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/1a8ecf1813d022cc7914e04564b92decff6161fc.zip",
           "https://github.com/google/googletest/archive/1a8ecf1813d022cc7914e04564b92decff6161fc.zip"
      ],
      strip_prefix = "googletest-1a8ecf1813d022cc7914e04564b92decff6161fc",
      sha256 = "ef7cc1de60baa093cdaf5037ece2a3967dbb1efbf0988ca784cecff67e423b39",
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
      name = "com_github_google_tcmalloc",  # 2021-03-24T23:12:09Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/7d97898ffe4d7a505f02ecc660faa065248546f1.zip",
           "https://github.com/google/tcmalloc/archive/7d97898ffe4d7a505f02ecc660faa065248546f1.zip"
      ],
      strip_prefix = "tcmalloc-7d97898ffe4d7a505f02ecc660faa065248546f1",
      sha256 = "6a35c9a4d87ca0898796ed91e8628ac70e6ef6c9c1b44b835e79a4294dfdcc07",
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
