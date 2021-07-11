"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2021-06-07T16:41:49Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/daf6ace7cfeacd6a83e9ff2ed659f416537b6c74.zip",
           "https://github.com/bazelbuild/rules_cc/archive/daf6ace7cfeacd6a83e9ff2ed659f416537b6c74.zip"
      ],
      strip_prefix = "rules_cc-daf6ace7cfeacd6a83e9ff2ed659f416537b6c74",
      sha256 = "b295cad8c5899e371dde175079c0a2cdc0151f5127acc92366a8c986beb95c76",
    )

    # ********** rules_python *****************
    http_archive(
      name = "rules_python",  # 2021-07-10T18:35:24Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/fbbecaebd3cef5319cc4b2095b8102167371c253.zip",
           "https://github.com/bazelbuild/rules_python/archive/fbbecaebd3cef5319cc4b2095b8102167371c253.zip"
      ],
      strip_prefix = "rules_python-fbbecaebd3cef5319cc4b2095b8102167371c253",
      sha256 = "bb0dd5b3744b42a1e0a9fe4a14309666bae67c23b652905713090a8f28a29751",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2021-07-09T13:27:22Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/b06e719ee985ecd63e0dffbc68499549216f817f.zip",
           "https://github.com/abseil/abseil-cpp/archive/b06e719ee985ecd63e0dffbc68499549216f817f.zip"
      ],
      strip_prefix = "abseil-cpp-b06e719ee985ecd63e0dffbc68499549216f817f",
      sha256 = "42feccd0a0b752b3aa577907b69f353972ae1eebfaee4b4aac69571c7f97cd5c",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2021-07-09T13:28:13Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/8d51ffdfab10b3fba636ae69bc03da4b54f8c235.zip",
           "https://github.com/google/googletest/archive/8d51ffdfab10b3fba636ae69bc03da4b54f8c235.zip"
      ],
      strip_prefix = "googletest-8d51ffdfab10b3fba636ae69bc03da4b54f8c235",
      sha256 = "12ef65654dc01ab40f6f33f9d02c04f2097d2cd9fbe48dc6001b29543583b0ad",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2021-07-01T09:02:54Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/e451e50e9b8af453f076dec10bd6890847f1624e.zip",
           "https://github.com/google/benchmark/archive/e451e50e9b8af453f076dec10bd6890847f1624e.zip"
      ],
      strip_prefix = "benchmark-e451e50e9b8af453f076dec10bd6890847f1624e",
      sha256 = "1cb4b97a90aa1fd9c8e412a6bc29fc13fc140162a4a0db3811af40befd8c9ea5",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2021-07-08T21:28:42Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/e1ce8d7f9193c9383dd2f7025e59c0b7c58c0c80.zip",
           "https://github.com/google/tcmalloc/archive/e1ce8d7f9193c9383dd2f7025e59c0b7c58c0c80.zip"
      ],
      strip_prefix = "tcmalloc-e1ce8d7f9193c9383dd2f7025e59c0b7c58c0c80",
      sha256 = "8f73c68023bec801cb5d689cde06f77d3b599305046ceb8b4c3ff9c25a868301",
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
