"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2020-04-17T12:03:37Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/77099ee80d15004ddbac96234761c0a564479131.zip",
           "https://github.com/bazelbuild/rules_cc/archive/77099ee80d15004ddbac96234761c0a564479131.zip"
      ],
      strip_prefix = "rules_cc-77099ee80d15004ddbac96234761c0a564479131",
      sha256 = "f1a11c4b697d988d8ea3de71d7f79cab9c8f599b32017f203a5e037709a6a3b9",
    )

    # ********** rules_python *****************
    http_archive(
      name = "rules_python",  # 2020-04-09T15:00:47Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/a0fbf98d4e3a232144df4d0d80b577c7a693b570.zip",
           "https://github.com/bazelbuild/rules_python/archive/a0fbf98d4e3a232144df4d0d80b577c7a693b570.zip"
      ],
      strip_prefix = "rules_python-a0fbf98d4e3a232144df4d0d80b577c7a693b570",
      sha256 = "98c9b903f6e8fe20b7e56d19c4822c8c49a11b475bd4ec0ca6a564e8bc5d5fa2",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2020-04-20T20:35:10Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/1a02b7a2054c24f900dab796edb812f9260b51a6.zip",
           "https://github.com/abseil/abseil-cpp/archive/1a02b7a2054c24f900dab796edb812f9260b51a6.zip"
      ],
      strip_prefix = "abseil-cpp-1a02b7a2054c24f900dab796edb812f9260b51a6",
      sha256 = "b62f077afb82579f9a77303aa05407dd8b76ad1d841d8c8957ab4049d2a2682f",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2020-04-16T17:33:10Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/dcc92d0ab6c4ce022162a23566d44f673251eee4.zip",
           "https://github.com/google/googletest/archive/dcc92d0ab6c4ce022162a23566d44f673251eee4.zip"
      ],
      strip_prefix = "googletest-dcc92d0ab6c4ce022162a23566d44f673251eee4",
      sha256 = "a6ab7c7d6fd4dd727f6012b5d85d71a73d3aa1274f529ecd4ad84eb9ec4ff767",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2020-04-17T16:31:49Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/ecc1685340f58f7fe6b707036bc0bb1fccabb0c1.zip",
           "https://github.com/google/benchmark/archive/ecc1685340f58f7fe6b707036bc0bb1fccabb0c1.zip"
      ],
      strip_prefix = "benchmark-ecc1685340f58f7fe6b707036bc0bb1fccabb0c1",
      sha256 = "4a6dc2a0a20e26765f4f4b9bf9678fa7dc33d858ff14efb428a021750d1cfe24",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2020-04-20T18:45:10Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/fdc1ea1d97c303b7e0498e27a1366c258d50388d.zip",
           "https://github.com/google/tcmalloc/archive/fdc1ea1d97c303b7e0498e27a1366c258d50388d.zip"
      ],
      strip_prefix = "tcmalloc-fdc1ea1d97c303b7e0498e27a1366c258d50388d",
      sha256 = "b401cbc8fab6847595a2809b3c6702f1038b50a9744f28e4bb35d067c8e2f4d2",
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
