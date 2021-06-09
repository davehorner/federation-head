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
      name = "rules_python",  # 2021-06-09T02:08:31Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/f1b6b742254ec11f9e7bd6bff19ad2b327107a45.zip",
           "https://github.com/bazelbuild/rules_python/archive/f1b6b742254ec11f9e7bd6bff19ad2b327107a45.zip"
      ],
      strip_prefix = "rules_python-f1b6b742254ec11f9e7bd6bff19ad2b327107a45",
      sha256 = "e7e59592d5303870bd517a962882e5b3cfbaea10c03f1ef14f7e3715c217e94c",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2021-06-09T01:47:46Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/f72972654b69085b1d58fde04c618b77d3ac6935.zip",
           "https://github.com/abseil/abseil-cpp/archive/f72972654b69085b1d58fde04c618b77d3ac6935.zip"
      ],
      strip_prefix = "abseil-cpp-f72972654b69085b1d58fde04c618b77d3ac6935",
      sha256 = "4b4fbe770a49d6d0f2152ebe88b1b886e2316514319bf92897dd1d9540da15e3",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2021-06-08T22:36:38Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/5bcd8e3bb929714e031a542d303f818e5a5af45d.zip",
           "https://github.com/google/googletest/archive/5bcd8e3bb929714e031a542d303f818e5a5af45d.zip"
      ],
      strip_prefix = "googletest-5bcd8e3bb929714e031a542d303f818e5a5af45d",
      sha256 = "3adecb6686ac7367452561dca518fad5a990fb09c5a961bfa1836f15eb774348",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2021-06-08T09:26:24Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/f90215f1cc2c22d32d96e903ea031278681e4adb.zip",
           "https://github.com/google/benchmark/archive/f90215f1cc2c22d32d96e903ea031278681e4adb.zip"
      ],
      strip_prefix = "benchmark-f90215f1cc2c22d32d96e903ea031278681e4adb",
      sha256 = "f916dff083f0a94481fbc444dcaf7111072dce742b5e5fd7409f530c2a717310",
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
