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
      name = "com_github_google_benchmark",  # 2021-11-04T12:09:10Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/329fb06d9968034a5b0d851e0a136a25e8399c41.zip",
           "https://github.com/google/benchmark/archive/329fb06d9968034a5b0d851e0a136a25e8399c41.zip"
      ],
      strip_prefix = "benchmark-329fb06d9968034a5b0d851e0a136a25e8399c41",
      sha256 = "6f096f07771a423ca855d42589a2a9dad559831fc797ec98cc67c8b638dace42",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2021-11-04T22:00:23Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/96041d4853cd5c963fb9c7735d798d303ff08090.zip",
           "https://github.com/google/tcmalloc/archive/96041d4853cd5c963fb9c7735d798d303ff08090.zip"
      ],
      strip_prefix = "tcmalloc-96041d4853cd5c963fb9c7735d798d303ff08090",
      sha256 = "5b6dd17ed7c767617fe8eeb46a1d407df758af399d2252a73664e3ecfc6e6aa6",
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
