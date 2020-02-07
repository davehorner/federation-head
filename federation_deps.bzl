"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2020-02-05T14:24:04Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/cd0fa354f63f8c9f036d1101e8eb0da643ee7f55.zip",
           "https://github.com/bazelbuild/rules_cc/archive/cd0fa354f63f8c9f036d1101e8eb0da643ee7f55.zip"
      ],
      strip_prefix = "rules_cc-cd0fa354f63f8c9f036d1101e8eb0da643ee7f55",
      sha256 = "934bcf220b5c8a7a5c830d4c94998a951024606a1c4ad855ab18e3cbf7d47a37",
    )

    # ********** rules_python *****************
    http_archive(
      name = "rules_python",  # 2019-12-05T03:53:08Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/38f86fb55b698c51e8510c807489c9f4e047480e.zip",
           "https://github.com/bazelbuild/rules_python/archive/38f86fb55b698c51e8510c807489c9f4e047480e.zip"
      ],
      strip_prefix = "rules_python-38f86fb55b698c51e8510c807489c9f4e047480e",
      sha256 = "7d64815f4b22400bed0f1b9da663037e1578573446b7bc78f20f24b2b5459bb9",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2020-02-06T22:43:14Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/24713a7036a81498334807fa5c7ad3cb7c643711.zip",
           "https://github.com/abseil/abseil-cpp/archive/24713a7036a81498334807fa5c7ad3cb7c643711.zip"
      ],
      strip_prefix = "abseil-cpp-24713a7036a81498334807fa5c7ad3cb7c643711",
      sha256 = "d0d75c15d301df74d68a375fb50e526c048af3099c979a6ac147d02cf67bbee4",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2020-01-21T21:26:40Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/10b1902d893ea8cc43c69541d70868f91af3646b.zip",
           "https://github.com/google/googletest/archive/10b1902d893ea8cc43c69541d70868f91af3646b.zip"
      ],
      strip_prefix = "googletest-10b1902d893ea8cc43c69541d70868f91af3646b",
      sha256 = "7c7709af5d0c3c2514674261f9fc321b3f1099a2c57f13d0e56187d193c07e81",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2020-01-31T10:16:25Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/e5ea03ce07997620980636b3ee7e6117d68bc6ad.zip",
           "https://github.com/google/benchmark/archive/e5ea03ce07997620980636b3ee7e6117d68bc6ad.zip"
      ],
      strip_prefix = "benchmark-e5ea03ce07997620980636b3ee7e6117d68bc6ad",
      sha256 = "aad496b7234810f6a9c6a7cc9de22d32ee4351635430be8039e59800b0a50532",
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
