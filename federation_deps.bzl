"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2020-03-12T18:08:12Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/34ca16f4aa4bf2a5d3e4747229202d6cb630ebab.zip",
           "https://github.com/bazelbuild/rules_cc/archive/34ca16f4aa4bf2a5d3e4747229202d6cb630ebab.zip"
      ],
      strip_prefix = "rules_cc-34ca16f4aa4bf2a5d3e4747229202d6cb630ebab",
      sha256 = "523c59bb3f16518679668594c8874da46872fde05c32ba246bc0a35ec292f8a6",
    )

    # ********** rules_python *****************
    http_archive(
      name = "rules_python",  # 2020-03-05T19:57:20Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/748aa53d7701e71101dfd15d800e100f6ff8e5d1.zip",
           "https://github.com/bazelbuild/rules_python/archive/748aa53d7701e71101dfd15d800e100f6ff8e5d1.zip"
      ],
      strip_prefix = "rules_python-748aa53d7701e71101dfd15d800e100f6ff8e5d1",
      sha256 = "d3e40ca3b7e00b72d2b1585e0b3396bcce50f0fc692e2b7c91d8b0dc471e3eaf",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2020-04-01T19:19:51Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/62f05b1f57ad660e9c09e02ce7d591dcc4d0ca08.zip",
           "https://github.com/abseil/abseil-cpp/archive/62f05b1f57ad660e9c09e02ce7d591dcc4d0ca08.zip"
      ],
      strip_prefix = "abseil-cpp-62f05b1f57ad660e9c09e02ce7d591dcc4d0ca08",
      sha256 = "afcab9f226ac4ca6b6b7c9ec704a995fe32a6b555d6935b0de247ae6ac6940e0",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2020-03-31T23:23:38Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/61f010d703b32de9bfb20ab90ece38ab2f25977f.zip",
           "https://github.com/google/googletest/archive/61f010d703b32de9bfb20ab90ece38ab2f25977f.zip"
      ],
      strip_prefix = "googletest-61f010d703b32de9bfb20ab90ece38ab2f25977f",
      sha256 = "4a4cbf4bb09606f42a0cdd6f0893fbf1e257243fda64bc5b585d027808a3a64b",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2020-03-30T06:22:37Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/b23d35573bb9f33f9b76cadc652bb7ef88c6c64d.zip",
           "https://github.com/google/benchmark/archive/b23d35573bb9f33f9b76cadc652bb7ef88c6c64d.zip"
      ],
      strip_prefix = "benchmark-b23d35573bb9f33f9b76cadc652bb7ef88c6c64d",
      sha256 = "4b557be92b5fd84a1dd6318377392ed6f74c401c0388da037de9aeb16b2fb03d",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2020-04-04T00:17:19Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/3a78fb6b7378d2d7f8d1f057ea4025159303b855.zip",
           "https://github.com/google/tcmalloc/archive/3a78fb6b7378d2d7f8d1f057ea4025159303b855.zip"
      ],
      strip_prefix = "tcmalloc-3a78fb6b7378d2d7f8d1f057ea4025159303b855",
      sha256 = "d148192106d7a8293f85d99b516689b7c5ea3ce0afe8f127f3c64e1837efb70c",
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
