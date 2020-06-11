"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2020-06-03T07:53:38Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/5cbd3dfbd1613f71ef29bbb7b10310b81e272975.zip",
           "https://github.com/bazelbuild/rules_cc/archive/5cbd3dfbd1613f71ef29bbb7b10310b81e272975.zip"
      ],
      strip_prefix = "rules_cc-5cbd3dfbd1613f71ef29bbb7b10310b81e272975",
      sha256 = "d6775fe03da086dfe47c668f54e77e220aa6e601a66a4517eaf19fa1d9fda309",
    )

    # ********** rules_python *****************
    http_archive(
      name = "rules_python",  # 2020-05-23T05:50:58Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/708ed8679d7510a331ce9a7b910a2a056d24f7b1.zip",
           "https://github.com/bazelbuild/rules_python/archive/708ed8679d7510a331ce9a7b910a2a056d24f7b1.zip"
      ],
      strip_prefix = "rules_python-708ed8679d7510a331ce9a7b910a2a056d24f7b1",
      sha256 = "4ff0262d17870460ff505b59fcce75539414aeee6bf7526320db0a64914f03be",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2020-06-10T22:59:53Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/e7ebf9803746b9a115d96164bdf5e915be8f223b.zip",
           "https://github.com/abseil/abseil-cpp/archive/e7ebf9803746b9a115d96164bdf5e915be8f223b.zip"
      ],
      strip_prefix = "abseil-cpp-e7ebf9803746b9a115d96164bdf5e915be8f223b",
      sha256 = "a7a62b8b2cd3800d1c38bc513f83f9900dd763c03c15a90d18c8fa6ffa756a6b",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2020-06-10T21:37:39Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/13a433a94dd9c7e55907d7a9b75f44ff82f309eb.zip",
           "https://github.com/google/googletest/archive/13a433a94dd9c7e55907d7a9b75f44ff82f309eb.zip"
      ],
      strip_prefix = "googletest-13a433a94dd9c7e55907d7a9b75f44ff82f309eb",
      sha256 = "205ddbea89a0dff059cd681f3ec9b0a6c12de7036a04cd57f0254105257593d9",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2020-06-09T08:50:20Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/8039b4030795b1c9b8cedb78e3a2a6fb89574b6e.zip",
           "https://github.com/google/benchmark/archive/8039b4030795b1c9b8cedb78e3a2a6fb89574b6e.zip"
      ],
      strip_prefix = "benchmark-8039b4030795b1c9b8cedb78e3a2a6fb89574b6e",
      sha256 = "ffac6f802df53f896e9bf03314146455d30d012fe350f5b22f9ad4fd0b0d8b98",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2020-06-10T22:07:41Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/e1df1daf372dffc07eb34b626e348997df64bc53.zip",
           "https://github.com/google/tcmalloc/archive/e1df1daf372dffc07eb34b626e348997df64bc53.zip"
      ],
      strip_prefix = "tcmalloc-e1df1daf372dffc07eb34b626e348997df64bc53",
      sha256 = "bf0e74150de2db72b97e676572114e21978e2dc5287b3927e7a1ee624e9e6b39",
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
