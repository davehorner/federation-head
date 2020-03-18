"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2020-03-12T18:08:12Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/34ca16f4aa4bf2a5d3e4747229202d6cb630ebab.zip",
           "https://github.com/bazelbuild/rules_cc/archive/34ca16f4aa4bf2a5d3e4747229202d6cb630ebab.zip"
      ],
      strip_prefix = "rules_cc-34ca16f4aa4bf2a5d3e4747229202d6cb630ebab",
      sha256 = "523c59bb3f16518679668594c8874da46872fde05c32ba246bc0a35ec292f8a6",
    )

    # ********** rules_python *****************
    http_archive(
      name = "rules_python",  # 2020-03-05T19:57:20Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/748aa53d7701e71101dfd15d800e100f6ff8e5d1.zip",
           "https://github.com/bazelbuild/rules_python/archive/748aa53d7701e71101dfd15d800e100f6ff8e5d1.zip"
      ],
      strip_prefix = "rules_python-748aa53d7701e71101dfd15d800e100f6ff8e5d1",
      sha256 = "d3e40ca3b7e00b72d2b1585e0b3396bcce50f0fc692e2b7c91d8b0dc471e3eaf",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2020-03-16T19:11:38Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/7853a7586c492ce8905c9e49f8679dada6354f2c.zip",
           "https://github.com/abseil/abseil-cpp/archive/7853a7586c492ce8905c9e49f8679dada6354f2c.zip"
      ],
      strip_prefix = "abseil-cpp-7853a7586c492ce8905c9e49f8679dada6354f2c",
      sha256 = "eb44e45b9b53b506658861f734ca743346ec792732b063a5b43c96751ccd90c7",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2020-03-17T21:20:47Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/482ac6ee63429af2aa9c44f4e6427873fb68fb1f.zip",
           "https://github.com/google/googletest/archive/482ac6ee63429af2aa9c44f4e6427873fb68fb1f.zip"
      ],
      strip_prefix = "googletest-482ac6ee63429af2aa9c44f4e6427873fb68fb1f",
      sha256 = "46658b7e266f31d4a992822cdfdcc912ec04b373ed9252155649ac549ea38288",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2020-03-16T11:32:08Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/e30cac6b06cf05416a9358df8be868ab01602a68.zip",
           "https://github.com/google/benchmark/archive/e30cac6b06cf05416a9358df8be868ab01602a68.zip"
      ],
      strip_prefix = "benchmark-e30cac6b06cf05416a9358df8be868ab01602a68",
      sha256 = "9557a555f33e52e41737474ff24e3da899ee766271b28366424861f436283800",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2020-03-17T19:41:11Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/fb510faf48466f0159fad321891229217790947f.zip",
           "https://github.com/google/tcmalloc/archive/fb510faf48466f0159fad321891229217790947f.zip"
      ],
      strip_prefix = "tcmalloc-fb510faf48466f0159fad321891229217790947f",
      sha256 = "148bc5a71682f4dcf2b613efd2b76bd5118d0a7068c7dbf356f82bad34b75ac9",
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
