"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2021-05-14T14:51:14Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/68cb652a71e7e7e2858c50593e5a9e3b94e5b9a9.zip",
           "https://github.com/bazelbuild/rules_cc/archive/68cb652a71e7e7e2858c50593e5a9e3b94e5b9a9.zip"
      ],
      strip_prefix = "rules_cc-68cb652a71e7e7e2858c50593e5a9e3b94e5b9a9",
      sha256 = "1e19e9a3bc3d4ee91d7fcad00653485ee6c798efbbf9588d40b34cbfbded143d",
    )

    # ********** rules_python *****************
    http_archive(
      name = "rules_python",  # 2021-05-17T00:24:16Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/ed6cc8f2c3692a6a7f013ff8bc185ba77eb9b4d2.zip",
           "https://github.com/bazelbuild/rules_python/archive/ed6cc8f2c3692a6a7f013ff8bc185ba77eb9b4d2.zip"
      ],
      strip_prefix = "rules_python-ed6cc8f2c3692a6a7f013ff8bc185ba77eb9b4d2",
      sha256 = "98b3c592faea9636ac8444bfd9de7f3fb4c60590932d6e6ac5946e3f8dbd5ff6",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2021-05-18T21:44:37Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/5de90e2673bd0c19de67c68e2fe543444dc1114a.zip",
           "https://github.com/abseil/abseil-cpp/archive/5de90e2673bd0c19de67c68e2fe543444dc1114a.zip"
      ],
      strip_prefix = "abseil-cpp-5de90e2673bd0c19de67c68e2fe543444dc1114a",
      sha256 = "51ff1bbb2a30c092afc2f1e85278d46b2a8d643a3f46ca8fde0fa06d2b423c9b",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2021-05-19T20:10:13Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/aa9b44a18678dfdf57089a5ac22c1edb69f35da5.zip",
           "https://github.com/google/googletest/archive/aa9b44a18678dfdf57089a5ac22c1edb69f35da5.zip"
      ],
      strip_prefix = "googletest-aa9b44a18678dfdf57089a5ac22c1edb69f35da5",
      sha256 = "8cf4eaab3a13b27a95b7e74c58fb4c0788ad94d1f7ec65b20665c4caf1d245e8",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2021-05-19T08:49:05Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/e539e807daa0bc779bb6768b33ee4747624b4ec9.zip",
           "https://github.com/google/benchmark/archive/e539e807daa0bc779bb6768b33ee4747624b4ec9.zip"
      ],
      strip_prefix = "benchmark-e539e807daa0bc779bb6768b33ee4747624b4ec9",
      sha256 = "d19e6f4e7eca9290bffe3c5b6ae1b4a9f73f6e86ed090aa554a2085d17268e2c",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2021-05-18T21:23:57Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/50b90fa45e8fe893f5044e0462831c2a8f2aceeb.zip",
           "https://github.com/google/tcmalloc/archive/50b90fa45e8fe893f5044e0462831c2a8f2aceeb.zip"
      ],
      strip_prefix = "tcmalloc-50b90fa45e8fe893f5044e0462831c2a8f2aceeb",
      sha256 = "036e6edda59b7ddfa49571efd097cf323cd2e056ef56ea85628a9f99a2462a96",
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
