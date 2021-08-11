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
      name = "rules_python",  # 2021-07-30T05:39:50Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/304b85cdb7be888a8aa8dce80c1e49374abdac18.zip",
           "https://github.com/bazelbuild/rules_python/archive/304b85cdb7be888a8aa8dce80c1e49374abdac18.zip"
      ],
      strip_prefix = "rules_python-304b85cdb7be888a8aa8dce80c1e49374abdac18",
      sha256 = "a2798937a6f192ec5a46baeff743ea42f77a409c0220a3e4a5a009668d08cad9",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2021-08-10T16:30:11Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/8e088c5f3c290c5ac53dd5010fd501d80b483115.zip",
           "https://github.com/abseil/abseil-cpp/archive/8e088c5f3c290c5ac53dd5010fd501d80b483115.zip"
      ],
      strip_prefix = "abseil-cpp-8e088c5f3c290c5ac53dd5010fd501d80b483115",
      sha256 = "41d375b92e76928b6de5af8f87cc89a8921b725ca1abc7a05273a4115f835c2a",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2021-08-10T16:30:54Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/47f819c3ca54fb602f432904443e00a0a1fe2f42.zip",
           "https://github.com/google/googletest/archive/47f819c3ca54fb602f432904443e00a0a1fe2f42.zip"
      ],
      strip_prefix = "googletest-47f819c3ca54fb602f432904443e00a0a1fe2f42",
      sha256 = "db93dd8a793e54a3a429197ecdd94813d280019e2adfa9241c7bc9204842bedc",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2021-08-03T16:11:47Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/4124223bf5303d1d65fe2c40f33e28372bbb986c.zip",
           "https://github.com/google/benchmark/archive/4124223bf5303d1d65fe2c40f33e28372bbb986c.zip"
      ],
      strip_prefix = "benchmark-4124223bf5303d1d65fe2c40f33e28372bbb986c",
      sha256 = "a01dbd10c2ea80cd672143b5591fd896c5e8e06ae9037ff359d388c75d20dee7",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2021-08-05T14:10:28Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/18236bcfc8a23188a50203dd280455b1c5e2da38.zip",
           "https://github.com/google/tcmalloc/archive/18236bcfc8a23188a50203dd280455b1c5e2da38.zip"
      ],
      strip_prefix = "tcmalloc-18236bcfc8a23188a50203dd280455b1c5e2da38",
      sha256 = "d809d35c054d164debefaf77f92a24f7b4a0894e962b17e06cf85c2f870eae43",
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
