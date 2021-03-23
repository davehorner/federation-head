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
      name = "com_google_absl",  # 2021-03-22T18:47:13Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/f3eff479834e579111e195d8f9245050a4488eed.zip",
           "https://github.com/abseil/abseil-cpp/archive/f3eff479834e579111e195d8f9245050a4488eed.zip"
      ],
      strip_prefix = "abseil-cpp-f3eff479834e579111e195d8f9245050a4488eed",
      sha256 = "3b85c3d61e8182419f2aeb50d1843f0f0188de9411e58569ff1103c388ec1a21",
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
      name = "com_github_google_tcmalloc",  # 2021-03-23T02:15:47Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/ca91bd90e843c91011ef176220aa2a06c6643313.zip",
           "https://github.com/google/tcmalloc/archive/ca91bd90e843c91011ef176220aa2a06c6643313.zip"
      ],
      strip_prefix = "tcmalloc-ca91bd90e843c91011ef176220aa2a06c6643313",
      sha256 = "1cdff83bb933a14fa1e3e95a14f2d30d1321c453862ab73b89c8374428edaa19",
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
