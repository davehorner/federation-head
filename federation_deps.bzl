"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2021-11-02T15:13:14Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/426f72132372dfbd3a904d283662faba71bdf393.zip",
           "https://github.com/bazelbuild/rules_cc/archive/426f72132372dfbd3a904d283662faba71bdf393.zip"
      ],
      strip_prefix = "rules_cc-426f72132372dfbd3a904d283662faba71bdf393",
      sha256 = "c6a9a5db472b9c3f7aef544a7f3b688ba08f04f19b4026bc526675e28c3c7beb",
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
      name = "com_google_absl",  # 2021-11-02T14:05:29Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/3b22e57740b8aec4920c4cfd76b78b3a4fcb2bb5.zip",
           "https://github.com/abseil/abseil-cpp/archive/3b22e57740b8aec4920c4cfd76b78b3a4fcb2bb5.zip"
      ],
      strip_prefix = "abseil-cpp-3b22e57740b8aec4920c4cfd76b78b3a4fcb2bb5",
      sha256 = "5f11e78a3567b306fbf761d6717fe9404294c7937a662278e3b1f376872374b9",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2021-10-13T16:28:20Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/16f637fbf4ffc3f7a01fa4eceb7906634565242f.zip",
           "https://github.com/google/googletest/archive/16f637fbf4ffc3f7a01fa4eceb7906634565242f.zip"
      ],
      strip_prefix = "googletest-16f637fbf4ffc3f7a01fa4eceb7906634565242f",
      sha256 = "002d540f947e5981f54ddaab476d87b113d2a14822f21a34dca30f24c9492a24",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2021-10-29T10:48:56Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/4f31803ebbf283e24602260e39e63a296d44b0f8.zip",
           "https://github.com/google/benchmark/archive/4f31803ebbf283e24602260e39e63a296d44b0f8.zip"
      ],
      strip_prefix = "benchmark-4f31803ebbf283e24602260e39e63a296d44b0f8",
      sha256 = "19729051d06953a1b9dd582682bdc45b490f5b741d6431b0b604d6e5e671ba1c",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2021-11-02T22:23:26Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/5350152b837d048c85dfaf8a8c2f640e6abb933e.zip",
           "https://github.com/google/tcmalloc/archive/5350152b837d048c85dfaf8a8c2f640e6abb933e.zip"
      ],
      strip_prefix = "tcmalloc-5350152b837d048c85dfaf8a8c2f640e6abb933e",
      sha256 = "4f9e033c968546071c9502e25323b81de5175705b237afac7a13df889ce90df0",
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
