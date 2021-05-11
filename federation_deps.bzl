"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2021-05-10T15:35:04Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/ab5395627c80e025e824bd005d41f96b20618b9d.zip",
           "https://github.com/bazelbuild/rules_cc/archive/ab5395627c80e025e824bd005d41f96b20618b9d.zip"
      ],
      strip_prefix = "rules_cc-ab5395627c80e025e824bd005d41f96b20618b9d",
      sha256 = "f3908cb40a6577ab0d1ef9e00052739bf69b4313fa7d20b4d61d4521ea67abf3",
    )

    # ********** rules_python *****************
    http_archive(
      name = "rules_python",  # 2021-05-08T20:49:34Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/ef4d735216a3782b7c33543d82b891fe3a86e3f3.zip",
           "https://github.com/bazelbuild/rules_python/archive/ef4d735216a3782b7c33543d82b891fe3a86e3f3.zip"
      ],
      strip_prefix = "rules_python-ef4d735216a3782b7c33543d82b891fe3a86e3f3",
      sha256 = "031619e49763c8c393ea57f1964a41abcbe76ac4ea92e4c646ddcc45df8bed97",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2021-05-07T17:51:04Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/079cf662544a14bd1cfaae6d6512645541ba10fb.zip",
           "https://github.com/abseil/abseil-cpp/archive/079cf662544a14bd1cfaae6d6512645541ba10fb.zip"
      ],
      strip_prefix = "abseil-cpp-079cf662544a14bd1cfaae6d6512645541ba10fb",
      sha256 = "97df35e290183ba168ffd44db4567a1a1db4d63b45000bf99df4bb7a6b9822c2",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2021-04-29T14:40:44Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/f5e592d8ee5ffb1d9af5be7f715ce3576b8bf9c4.zip",
           "https://github.com/google/googletest/archive/f5e592d8ee5ffb1d9af5be7f715ce3576b8bf9c4.zip"
      ],
      strip_prefix = "googletest-f5e592d8ee5ffb1d9af5be7f715ce3576b8bf9c4",
      sha256 = "e61e3889bd5cc3e6bc1084d2108ecda2f110c0387ba88b394ffd16043a1d5709",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2021-05-10T16:12:09Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/3b508fad1f9fbc970dad0a190119ae6284cad855.zip",
           "https://github.com/google/benchmark/archive/3b508fad1f9fbc970dad0a190119ae6284cad855.zip"
      ],
      strip_prefix = "benchmark-3b508fad1f9fbc970dad0a190119ae6284cad855",
      sha256 = "eb8a68b7d105edb68b2c806d94a96c290b7b04314d620eee4b6e10d4aae003c0",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2021-05-04T19:06:09Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/c083a79108a4c7235221440b0f401b7d798c3e66.zip",
           "https://github.com/google/tcmalloc/archive/c083a79108a4c7235221440b0f401b7d798c3e66.zip"
      ],
      strip_prefix = "tcmalloc-c083a79108a4c7235221440b0f401b7d798c3e66",
      sha256 = "f3d0fa0bf8bcca7cf69e5b68db9156b48bc2affc8308254fb91d01114941211c",
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
