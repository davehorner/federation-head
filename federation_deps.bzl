"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2021-06-01T09:54:05Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/8d3ab5f22b8f4a29f3f32c8fbdcc777589d91042.zip",
           "https://github.com/bazelbuild/rules_cc/archive/8d3ab5f22b8f4a29f3f32c8fbdcc777589d91042.zip"
      ],
      strip_prefix = "rules_cc-8d3ab5f22b8f4a29f3f32c8fbdcc777589d91042",
      sha256 = "cd8ca809efaa9c48ad9fd7fed287abc53d33e9bc2b77f22eb35cce3e9d737a58",
    )

    # ********** rules_python *****************
    http_archive(
      name = "rules_python",  # 2021-05-25T23:42:32Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/c6970fc44877dbbbce84d17845d9bc797aefe299.zip",
           "https://github.com/bazelbuild/rules_python/archive/c6970fc44877dbbbce84d17845d9bc797aefe299.zip"
      ],
      strip_prefix = "rules_python-c6970fc44877dbbbce84d17845d9bc797aefe299",
      sha256 = "01ce6e66ce46ee2fda606c554f4b69af7a9b2e60410d7561286169e39950c88f",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2021-06-03T21:21:06Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/17c954d90d5661e27db8fc5f086085690a8372d9.zip",
           "https://github.com/abseil/abseil-cpp/archive/17c954d90d5661e27db8fc5f086085690a8372d9.zip"
      ],
      strip_prefix = "abseil-cpp-17c954d90d5661e27db8fc5f086085690a8372d9",
      sha256 = "aee7688bb669402c1322d9512d7992a6f361a70444e54d98a8709a8ad4dd60c3",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2021-06-02T21:55:09Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/53495a2a7d6ba7e0691a7f3602e9a5324bba6e45.zip",
           "https://github.com/google/googletest/archive/53495a2a7d6ba7e0691a7f3602e9a5324bba6e45.zip"
      ],
      strip_prefix = "googletest-53495a2a7d6ba7e0691a7f3602e9a5324bba6e45",
      sha256 = "c4873c05ff263f18124faef3366dda10ab8ef020faf648c3f960927c6db4be54",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2021-06-04T10:06:38Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/342409126b46dd7a33dc55f02d398bc43ba6b53b.zip",
           "https://github.com/google/benchmark/archive/342409126b46dd7a33dc55f02d398bc43ba6b53b.zip"
      ],
      strip_prefix = "benchmark-342409126b46dd7a33dc55f02d398bc43ba6b53b",
      sha256 = "e2391a2cf04ca8ac5b5a86a1141978b9db7d1e4e032d04a7c8cdaf57af375605",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2021-06-04T22:00:52Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/a845a5dcf732ea311fb0074728154c86cfbd66a5.zip",
           "https://github.com/google/tcmalloc/archive/a845a5dcf732ea311fb0074728154c86cfbd66a5.zip"
      ],
      strip_prefix = "tcmalloc-a845a5dcf732ea311fb0074728154c86cfbd66a5",
      sha256 = "72361d00cfaf0db946ca9383e366e72e423c8b9c6817dc5ac5230227a66b8817",
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
