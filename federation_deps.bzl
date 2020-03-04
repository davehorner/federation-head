"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2020-03-03T15:11:41Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/20bff9088b306e35ce8593351b3cb27696148161.zip",
           "https://github.com/bazelbuild/rules_cc/archive/20bff9088b306e35ce8593351b3cb27696148161.zip"
      ],
      strip_prefix = "rules_cc-20bff9088b306e35ce8593351b3cb27696148161",
      sha256 = "e1d8430031bb0fe278e962f131724384285c965af5f283db2d4b19e8cf847752",
    )

    # ********** rules_python *****************
    http_archive(
      name = "rules_python",  # 2020-03-03T09:01:19Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/17dba4b7006199a289532afd99b7efa3d7b5fb29.zip",
           "https://github.com/bazelbuild/rules_python/archive/17dba4b7006199a289532afd99b7efa3d7b5fb29.zip"
      ],
      strip_prefix = "rules_python-17dba4b7006199a289532afd99b7efa3d7b5fb29",
      sha256 = "b9c921daf774af225f909ae82bc6776cfea2a2029bbdab2cdd7c03bfee11125d",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2020-03-03T15:26:59Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/06f0e767d13d4d68071c4fc51e25724e0fc8bc74.zip",
           "https://github.com/abseil/abseil-cpp/archive/06f0e767d13d4d68071c4fc51e25724e0fc8bc74.zip"
      ],
      strip_prefix = "abseil-cpp-06f0e767d13d4d68071c4fc51e25724e0fc8bc74",
      sha256 = "d2b25a85e330dbc1d4889f203a7e6f62628666f27c0e3e2908ecf3830df9684b",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2020-02-28T21:41:09Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/e588eb1ff9ff6598666279b737b27f983156ad85.zip",
           "https://github.com/google/googletest/archive/e588eb1ff9ff6598666279b737b27f983156ad85.zip"
      ],
      strip_prefix = "googletest-e588eb1ff9ff6598666279b737b27f983156ad85",
      sha256 = "b18016e313e0a635b643371f8a33f9813103b600e894f71e8625f0b8215ae698",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2020-02-25T11:21:58Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/8e0b1913d4ea803dfeb2e55567208fcab6b1b6c7.zip",
           "https://github.com/google/benchmark/archive/8e0b1913d4ea803dfeb2e55567208fcab6b1b6c7.zip"
      ],
      strip_prefix = "benchmark-8e0b1913d4ea803dfeb2e55567208fcab6b1b6c7",
      sha256 = "7eca6b8b82849b3d22b14aae583d327bb13519ea440ddb995c89b8ea468e26b0",
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
