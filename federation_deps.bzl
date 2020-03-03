"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2020-02-26T15:07:44Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/be6ea43fc8b22f1c44f0ed9e9ab723dea1955238.zip",
           "https://github.com/bazelbuild/rules_cc/archive/be6ea43fc8b22f1c44f0ed9e9ab723dea1955238.zip"
      ],
      strip_prefix = "rules_cc-be6ea43fc8b22f1c44f0ed9e9ab723dea1955238",
      sha256 = "06910242c6d47c5719efd5789cf34dac393034dc0fe4c73f1ed3aac739ffabdc",
    )

    # ********** rules_python *****************
    http_archive(
      name = "rules_python",  # 2020-03-03T07:55:26Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/6cbeb2c953f0fac0bc18eb07a8d7eca5d1809839.zip",
           "https://github.com/bazelbuild/rules_python/archive/6cbeb2c953f0fac0bc18eb07a8d7eca5d1809839.zip"
      ],
      strip_prefix = "rules_python-6cbeb2c953f0fac0bc18eb07a8d7eca5d1809839",
      sha256 = "946e1ccc7a5dc61a0e556ea9248e5958aef4d51003152be9c59efcc77edf1a22",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2020-02-28T21:01:26Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/bcefbdcdf6ad85046ccacee0aeffba5404d3e528.zip",
           "https://github.com/abseil/abseil-cpp/archive/bcefbdcdf6ad85046ccacee0aeffba5404d3e528.zip"
      ],
      strip_prefix = "abseil-cpp-bcefbdcdf6ad85046ccacee0aeffba5404d3e528",
      sha256 = "161dbafb5ce5eb386af170bfc3e0779411920afc62f42185e24c2952fb389de4",
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
