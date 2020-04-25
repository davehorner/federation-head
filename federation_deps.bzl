"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2020-04-22T14:05:49Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/4c3e410486a078d6492baeaebb406ce4d20e3164.zip",
           "https://github.com/bazelbuild/rules_cc/archive/4c3e410486a078d6492baeaebb406ce4d20e3164.zip"
      ],
      strip_prefix = "rules_cc-4c3e410486a078d6492baeaebb406ce4d20e3164",
      sha256 = "eb828d67ad115cf589529335d02408cd956047e9e09d44bfab6dd1a09b3fd7ed",
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
      name = "com_google_absl",  # 2020-04-24T16:53:15Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/cde2e2410e58c884b3bf5f67c6511e6266036249.zip",
           "https://github.com/abseil/abseil-cpp/archive/cde2e2410e58c884b3bf5f67c6511e6266036249.zip"
      ],
      strip_prefix = "abseil-cpp-cde2e2410e58c884b3bf5f67c6511e6266036249",
      sha256 = "ae8b698dfb16696fad170790f6b8090afa8a2caaa420706a5102059154d8e0af",
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
      name = "com_github_google_benchmark",  # 2020-04-23T11:19:19Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/56898e9a92fba537671d5462df9c5ef2ea6a823a.zip",
           "https://github.com/google/benchmark/archive/56898e9a92fba537671d5462df9c5ef2ea6a823a.zip"
      ],
      strip_prefix = "benchmark-56898e9a92fba537671d5462df9c5ef2ea6a823a",
      sha256 = "7f45be0bff07d787d75c3864212e9ea5ebba57593b2e487c783d11da70ef6857",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2020-04-23T18:21:10Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/b28df226c5e6dfbc488f82514244d0b800a92685.zip",
           "https://github.com/google/tcmalloc/archive/b28df226c5e6dfbc488f82514244d0b800a92685.zip"
      ],
      strip_prefix = "tcmalloc-b28df226c5e6dfbc488f82514244d0b800a92685",
      sha256 = "8568fb0aaf3961bf26cd3ae570580e9ed1ce419c607b80b497f4a54f2c7441fa",
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
