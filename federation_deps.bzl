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
      name = "com_google_googletest",  # 2021-06-30T17:33:57Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/4ec4cd23f486bf70efcc5d2caa40f24368f752e3.zip",
           "https://github.com/google/googletest/archive/4ec4cd23f486bf70efcc5d2caa40f24368f752e3.zip"
      ],
      strip_prefix = "googletest-4ec4cd23f486bf70efcc5d2caa40f24368f752e3",
      sha256 = "de682ea824bfffba05b4e33b67431c247397d6175962534305136aa06f92e049",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2021-07-01T09:02:54Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/e451e50e9b8af453f076dec10bd6890847f1624e.zip",
           "https://github.com/google/benchmark/archive/e451e50e9b8af453f076dec10bd6890847f1624e.zip"
      ],
      strip_prefix = "benchmark-e451e50e9b8af453f076dec10bd6890847f1624e",
      sha256 = "1cb4b97a90aa1fd9c8e412a6bc29fc13fc140162a4a0db3811af40befd8c9ea5",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2021-07-01T23:51:03Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/48f9c6021beb44e7986a96843160a107c2a38feb.zip",
           "https://github.com/google/tcmalloc/archive/48f9c6021beb44e7986a96843160a107c2a38feb.zip"
      ],
      strip_prefix = "tcmalloc-48f9c6021beb44e7986a96843160a107c2a38feb",
      sha256 = "cbc11d7a3710ae28ad415d835d8411dff9fe8ea7e0822b8ee842ce8ac745ffef",
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
