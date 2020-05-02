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
      name = "com_google_absl",  # 2020-05-01T21:22:14Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/a1d6689907864974118e592ef2ac7d716c576aad.zip",
           "https://github.com/abseil/abseil-cpp/archive/a1d6689907864974118e592ef2ac7d716c576aad.zip"
      ],
      strip_prefix = "abseil-cpp-a1d6689907864974118e592ef2ac7d716c576aad",
      sha256 = "53b78ffe87db3c737feddda52fa10dcdb75e2d85eed1cb1c5bfd77ca22e53e53",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2020-05-01T21:12:28Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/0eea2e9fc63461761dea5f2f517bd6af2ca024fa.zip",
           "https://github.com/google/googletest/archive/0eea2e9fc63461761dea5f2f517bd6af2ca024fa.zip"
      ],
      strip_prefix = "googletest-0eea2e9fc63461761dea5f2f517bd6af2ca024fa",
      sha256 = "9463ff914d7c3db02de6bd40a3c412a74e979e3c76eaa89920a49ff8488d6d69",
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
      name = "com_github_google_tcmalloc",  # 2020-05-01T20:41:03Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/9c5390e25c8612332251983d30ca6501bce9d41f.zip",
           "https://github.com/google/tcmalloc/archive/9c5390e25c8612332251983d30ca6501bce9d41f.zip"
      ],
      strip_prefix = "tcmalloc-9c5390e25c8612332251983d30ca6501bce9d41f",
      sha256 = "dd1e3f8b8c83c61cd13deea53832f985adb29e0093159539995d72cf989bf258",
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
