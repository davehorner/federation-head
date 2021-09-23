"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2021-09-17T09:46:42Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/dd2758b96dc8f9f4add81eaa4154b7e3d8be6873.zip",
           "https://github.com/bazelbuild/rules_cc/archive/dd2758b96dc8f9f4add81eaa4154b7e3d8be6873.zip"
      ],
      strip_prefix = "rules_cc-dd2758b96dc8f9f4add81eaa4154b7e3d8be6873",
      sha256 = "4e14abe3f288b5ae31eee4dc68472bfcd8d59a0bb1be91dd2c6bfa8af56baf19",
    )

    # ********** rules_python *****************
    http_archive(
      name = "rules_python",  # 2021-09-21T15:01:20Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/c303849892a2c716a2582172be43ba525feac23d.zip",
           "https://github.com/bazelbuild/rules_python/archive/c303849892a2c716a2582172be43ba525feac23d.zip"
      ],
      strip_prefix = "rules_python-c303849892a2c716a2582172be43ba525feac23d",
      sha256 = "ac75c5a292f33c1091473f6d9b50db2a53d34bdb9773c04a65ab5a834161cc2b",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2021-09-22T19:58:42Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/d4af654d971cc46cde6213269a364cdf170fe0ce.zip",
           "https://github.com/abseil/abseil-cpp/archive/d4af654d971cc46cde6213269a364cdf170fe0ce.zip"
      ],
      strip_prefix = "abseil-cpp-d4af654d971cc46cde6213269a364cdf170fe0ce",
      sha256 = "0dc1e0f0c9ee6c0e63977b900b86937c40bbcaeca87fb58fa43d43ecc4d53e04",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2021-09-16T17:00:21Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/40dfd4b775a66979ad1bd19321cdfd0feadfea27.zip",
           "https://github.com/google/googletest/archive/40dfd4b775a66979ad1bd19321cdfd0feadfea27.zip"
      ],
      strip_prefix = "googletest-40dfd4b775a66979ad1bd19321cdfd0feadfea27",
      sha256 = "854748f8be6cfaf74ecf31c205d73bdf7ae2d5176efe4e7fd64738f33d745592",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2021-09-20T09:19:51Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/0baacde3618ca617da95375e0af13ce1baadea47.zip",
           "https://github.com/google/benchmark/archive/0baacde3618ca617da95375e0af13ce1baadea47.zip"
      ],
      strip_prefix = "benchmark-0baacde3618ca617da95375e0af13ce1baadea47",
      sha256 = "62e2f2e6d8a744d67e4bbc212fcfd06647080de4253c97ad5c6749e09faf2cb0",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2021-09-22T22:41:00Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/015b35cd132a227860cf9f7da096c95d693d3881.zip",
           "https://github.com/google/tcmalloc/archive/015b35cd132a227860cf9f7da096c95d693d3881.zip"
      ],
      strip_prefix = "tcmalloc-015b35cd132a227860cf9f7da096c95d693d3881",
      sha256 = "c28a428301b6fa52fb5a4cb990de1982ed3a64ed571d17c65a72a37fe25e1c65",
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
