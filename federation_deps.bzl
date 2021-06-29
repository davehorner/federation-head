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
      name = "rules_python",  # 2021-06-25T03:11:56Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/929d5a13d4eb1b930086d9353fc6f2d6ad306e43.zip",
           "https://github.com/bazelbuild/rules_python/archive/929d5a13d4eb1b930086d9353fc6f2d6ad306e43.zip"
      ],
      strip_prefix = "rules_python-929d5a13d4eb1b930086d9353fc6f2d6ad306e43",
      sha256 = "b590e4fc07ec842b8cc8a39a4ca0336f44d7d5f96753229d240884cd016dc1e3",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2021-06-27T16:10:27Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/9a7e447c511dae7276ab65fde4d04f6ed52b39c9.zip",
           "https://github.com/abseil/abseil-cpp/archive/9a7e447c511dae7276ab65fde4d04f6ed52b39c9.zip"
      ],
      strip_prefix = "abseil-cpp-9a7e447c511dae7276ab65fde4d04f6ed52b39c9",
      sha256 = "45d19dc6c95ac6d7d1678a286742758eb2d9bb3048ae273cd3e213d111df0d09",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2021-06-22T13:30:42Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/355d57d90d9744c41ac7c99f1e960778f1c63040.zip",
           "https://github.com/google/googletest/archive/355d57d90d9744c41ac7c99f1e960778f1c63040.zip"
      ],
      strip_prefix = "googletest-355d57d90d9744c41ac7c99f1e960778f1c63040",
      sha256 = "bc063f89d5ca3a7d279f49de77c3903dce9cdf16f8b37ee106ddeda3049b56bd",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2021-06-28T16:07:54Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/94f845ec4f602356e0744f8d602f279c622ea919.zip",
           "https://github.com/google/benchmark/archive/94f845ec4f602356e0744f8d602f279c622ea919.zip"
      ],
      strip_prefix = "benchmark-94f845ec4f602356e0744f8d602f279c622ea919",
      sha256 = "c242daa74d673796af99f6b57ca3eea4c971c1e546e485defd2e16b9307ad567",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2021-06-21T15:20:05Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/a8a232f3dc9c41196e06251e7164d0404f19cf49.zip",
           "https://github.com/google/tcmalloc/archive/a8a232f3dc9c41196e06251e7164d0404f19cf49.zip"
      ],
      strip_prefix = "tcmalloc-a8a232f3dc9c41196e06251e7164d0404f19cf49",
      sha256 = "caf0cd0e8db1c173b9de5e9c6877763b6110fee4f22688cf808736895d7f0477",
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
