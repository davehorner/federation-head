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
      name = "com_google_absl",  # 2021-11-04T01:41:31Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/d6c75d9dd895922bf5dc6c38245ac8887d3e68fc.zip",
           "https://github.com/abseil/abseil-cpp/archive/d6c75d9dd895922bf5dc6c38245ac8887d3e68fc.zip"
      ],
      strip_prefix = "abseil-cpp-d6c75d9dd895922bf5dc6c38245ac8887d3e68fc",
      sha256 = "aa96e14329098c566af7c9f312a1e59dacdf92c00f3bb7cc13980d601cb3b291",
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
      name = "com_github_google_benchmark",  # 2021-11-03T14:54:07Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/8aae0a4f67af00de0719f1e17c3943a1f50969b7.zip",
           "https://github.com/google/benchmark/archive/8aae0a4f67af00de0719f1e17c3943a1f50969b7.zip"
      ],
      strip_prefix = "benchmark-8aae0a4f67af00de0719f1e17c3943a1f50969b7",
      sha256 = "bce0451152dc61c57b888821a3f937207a2d787e6b15e6fd3d128855846e038d",
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
