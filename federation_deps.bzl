"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2021-11-05T15:10:49Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/22532c537959149599e79df29808176345784cc1.zip",
           "https://github.com/bazelbuild/rules_cc/archive/22532c537959149599e79df29808176345784cc1.zip"
      ],
      strip_prefix = "rules_cc-22532c537959149599e79df29808176345784cc1",
      sha256 = "c4c764f6202ee3d81bfcad774a8765dbbb43dce325cbde067335bf88d9baa12e",
    )

    # ********** rules_python *****************
    http_archive(
      name = "rules_python",  # 2021-11-01T01:38:47Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/98ffe0655967481026bf112ee172630548b703c2.zip",
           "https://github.com/bazelbuild/rules_python/archive/98ffe0655967481026bf112ee172630548b703c2.zip"
      ],
      strip_prefix = "rules_python-98ffe0655967481026bf112ee172630548b703c2",
      sha256 = "a003393908c7d01d74c4bf8725975ff9e6fae31b8827c621dee91577e0987615",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2021-11-05T00:05:58Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/c86347d4cec43074e64e225a8753728f4bfc5ed6.zip",
           "https://github.com/abseil/abseil-cpp/archive/c86347d4cec43074e64e225a8753728f4bfc5ed6.zip"
      ],
      strip_prefix = "abseil-cpp-c86347d4cec43074e64e225a8753728f4bfc5ed6",
      sha256 = "d468586a90059921b9e1eeee81fd88283a47dc3c699b01b9763e58c87d5a2401",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2021-11-03T19:12:53Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/bf0701daa9f5b30e5882e2f8f9a5280bcba87e77.zip",
           "https://github.com/google/googletest/archive/bf0701daa9f5b30e5882e2f8f9a5280bcba87e77.zip"
      ],
      strip_prefix = "googletest-bf0701daa9f5b30e5882e2f8f9a5280bcba87e77",
      sha256 = "b6b6e11c985a6ac0fc696f1f096d981544ab095458d24deda3ba43b230fa81fd",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2021-11-08T12:39:36Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/431abd149fd76a072f821913c0340137cc755f36.zip",
           "https://github.com/google/benchmark/archive/431abd149fd76a072f821913c0340137cc755f36.zip"
      ],
      strip_prefix = "benchmark-431abd149fd76a072f821913c0340137cc755f36",
      sha256 = "892745e68f271dbcadf024508d13a19310eff85a9aa9152f1ecbd4d2ba976995",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2021-11-09T01:02:09Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/fb7bd7698f45ec83065fd71384fd817ef9b48c46.zip",
           "https://github.com/google/tcmalloc/archive/fb7bd7698f45ec83065fd71384fd817ef9b48c46.zip"
      ],
      strip_prefix = "tcmalloc-fb7bd7698f45ec83065fd71384fd817ef9b48c46",
      sha256 = "28afbe2e0fd2d4aae6f1725bbc99d9e8b0e1f196f9ab5e76f7b4a3a3008e8a40",
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
