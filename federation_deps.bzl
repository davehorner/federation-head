"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2020-10-26T16:06:42Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/b2f6e22c344b095af2d4390e97c4e93537f4cd5e.zip",
           "https://github.com/bazelbuild/rules_cc/archive/b2f6e22c344b095af2d4390e97c4e93537f4cd5e.zip"
      ],
      strip_prefix = "rules_cc-b2f6e22c344b095af2d4390e97c4e93537f4cd5e",
      sha256 = "6c94e2a0dac7c9af5178bb57331b7a1fc3135f5c720e8229037cd6c006609b62",
    )

    # ********** rules_python *****************
    http_archive(
      name = "rules_python",  # 2020-10-26T14:11:16Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/5be1f76e3ecd1f743f4213f3087c2a0961411782.zip",
           "https://github.com/bazelbuild/rules_python/archive/5be1f76e3ecd1f743f4213f3087c2a0961411782.zip"
      ],
      strip_prefix = "rules_python-5be1f76e3ecd1f743f4213f3087c2a0961411782",
      sha256 = "d10f790e7251a42c6d2b673c0449223b45e2a468d6a06c5bb4fa986cfc2c76d2",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2020-10-26T20:18:57Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/5bf048b8425cc0a342e4647932de19e25ffd6ad7.zip",
           "https://github.com/abseil/abseil-cpp/archive/5bf048b8425cc0a342e4647932de19e25ffd6ad7.zip"
      ],
      strip_prefix = "abseil-cpp-5bf048b8425cc0a342e4647932de19e25ffd6ad7",
      sha256 = "6bc23aa3b5adfc8ca8831d7fc95e4cedae4db2eadc93e396bc7e8a099158fffb",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2020-10-22T07:43:30Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/a6dfd3aca7f2f91f95fc7ab650c95a48420d513d.zip",
           "https://github.com/google/googletest/archive/a6dfd3aca7f2f91f95fc7ab650c95a48420d513d.zip"
      ],
      strip_prefix = "googletest-a6dfd3aca7f2f91f95fc7ab650c95a48420d513d",
      sha256 = "8d780a221be685c947a18772a80b9594dd6cc9a238e0e33ae8e0753b023514de",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2020-10-21T15:39:54Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/dce3322a549650d18f50b5f1428a5942327ab6a5.zip",
           "https://github.com/google/benchmark/archive/dce3322a549650d18f50b5f1428a5942327ab6a5.zip"
      ],
      strip_prefix = "benchmark-dce3322a549650d18f50b5f1428a5942327ab6a5",
      sha256 = "bc70f6344b917d32382b2d5d60cd3cd0bc2bcf5f5dfc1497da53fd0ca6f2c2e9",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2020-10-26T22:35:12Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/86962425a071898338e88b70df76fd36884d511b.zip",
           "https://github.com/google/tcmalloc/archive/86962425a071898338e88b70df76fd36884d511b.zip"
      ],
      strip_prefix = "tcmalloc-86962425a071898338e88b70df76fd36884d511b",
      sha256 = "120789108f23d99dd83a47bd0673327ca2e0ec985762ac4bc6c7e27fa9d8b79d",
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
