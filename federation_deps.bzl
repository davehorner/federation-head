"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2021-05-12T20:24:12Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/8973704d88a56ef749a57adb204e40c1a58439db.zip",
           "https://github.com/bazelbuild/rules_cc/archive/8973704d88a56ef749a57adb204e40c1a58439db.zip"
      ],
      strip_prefix = "rules_cc-8973704d88a56ef749a57adb204e40c1a58439db",
      sha256 = "1987d05ecd178aa6efab1d72287e535e4873f62b446006841cb80654f87da5b2",
    )

    # ********** rules_python *****************
    http_archive(
      name = "rules_python",  # 2021-05-12T04:20:25Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/53ba6cbbb820d88ab6df966e4f558525fe82eb93.zip",
           "https://github.com/bazelbuild/rules_python/archive/53ba6cbbb820d88ab6df966e4f558525fe82eb93.zip"
      ],
      strip_prefix = "rules_python-53ba6cbbb820d88ab6df966e4f558525fe82eb93",
      sha256 = "53ca94c0a278668a4eb96bfee2f332916a4788313591751c2126aa88b9817997",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2021-05-13T00:28:41Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/ce42de10fbea616379826e91c7c23c16bffe6e61.zip",
           "https://github.com/abseil/abseil-cpp/archive/ce42de10fbea616379826e91c7c23c16bffe6e61.zip"
      ],
      strip_prefix = "abseil-cpp-ce42de10fbea616379826e91c7c23c16bffe6e61",
      sha256 = "8b2a1160fc6615f572e99fd2d1030b3843b55e4670a66166e44a17232f81dea3",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2021-05-13T19:08:57Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/662fe38e44900c007eccb65a5d2ea19df7bd520e.zip",
           "https://github.com/google/googletest/archive/662fe38e44900c007eccb65a5d2ea19df7bd520e.zip"
      ],
      strip_prefix = "googletest-662fe38e44900c007eccb65a5d2ea19df7bd520e",
      sha256 = "a5c96eaf7a6f11ca84721bbbcac9a036dbb397a278f346d1b4d69b834d4f066f",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2021-05-11T11:56:00Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/7d0d9061d83b663ce05d9de5da3d5865a3845b79.zip",
           "https://github.com/google/benchmark/archive/7d0d9061d83b663ce05d9de5da3d5865a3845b79.zip"
      ],
      strip_prefix = "benchmark-7d0d9061d83b663ce05d9de5da3d5865a3845b79",
      sha256 = "a07789754963e3ea3a1e13fed3a4d48fac0c5f7f749c5065f6c30cd2c1529661",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2021-05-13T15:36:31Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/21eabdde8d9c4ce21e4785d7a7af71a6eaec2d1c.zip",
           "https://github.com/google/tcmalloc/archive/21eabdde8d9c4ce21e4785d7a7af71a6eaec2d1c.zip"
      ],
      strip_prefix = "tcmalloc-21eabdde8d9c4ce21e4785d7a7af71a6eaec2d1c",
      sha256 = "07c9fe1488afaa6cf91dd25f49cbaa8f6c35ada04530d5caa60d9abdfc0ba8cc",
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
