"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2020-11-11T13:29:11Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/b1c40e1de81913a3c40e5948f78719c28152486d.zip",
           "https://github.com/bazelbuild/rules_cc/archive/b1c40e1de81913a3c40e5948f78719c28152486d.zip"
      ],
      strip_prefix = "rules_cc-b1c40e1de81913a3c40e5948f78719c28152486d",
      sha256 = "d0c573b94a6ef20ef6ff20154a23d0efcb409fb0e1ff0979cec318dfe42f0cdd",
    )

    # ********** rules_python *****************
    http_archive(
      name = "rules_python",  # 2020-11-13T03:12:22Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/aa27a3fe7e1a6c73028effe1c78e87d2e7fab641.zip",
           "https://github.com/bazelbuild/rules_python/archive/aa27a3fe7e1a6c73028effe1c78e87d2e7fab641.zip"
      ],
      strip_prefix = "rules_python-aa27a3fe7e1a6c73028effe1c78e87d2e7fab641",
      sha256 = "e7dcbceb163a5b45489f49629242a78deaff8fcbebfe5970fb7acf5a16dbe2b8",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2020-12-21T17:28:32Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/8a9ef3c5da2a9064dda0ac3c61b43b87c12c50b8.zip",
           "https://github.com/abseil/abseil-cpp/archive/8a9ef3c5da2a9064dda0ac3c61b43b87c12c50b8.zip"
      ],
      strip_prefix = "abseil-cpp-8a9ef3c5da2a9064dda0ac3c61b43b87c12c50b8",
      sha256 = "0d74cc3f83fedb61719a5e0bed59046a00ef0f0b33956e7a35c27d8d76de9b4f",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2020-12-12T03:11:39Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/18f8200e3079b0e54fa00cb7ac55d4c39dcf6da6.zip",
           "https://github.com/google/googletest/archive/18f8200e3079b0e54fa00cb7ac55d4c39dcf6da6.zip"
      ],
      strip_prefix = "googletest-18f8200e3079b0e54fa00cb7ac55d4c39dcf6da6",
      sha256 = "355097d91fc3b412f122958f57cdc6ec42eb60d445b6c48be580ee639aed5b26",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2020-12-21T17:15:58Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/378ed8ff25c01fe55c35cad6ed1eeab02c15d49a.zip",
           "https://github.com/google/benchmark/archive/378ed8ff25c01fe55c35cad6ed1eeab02c15d49a.zip"
      ],
      strip_prefix = "benchmark-378ed8ff25c01fe55c35cad6ed1eeab02c15d49a",
      sha256 = "b0bf2813835300169257f6f93094ba7dc2fc2f58a54993d0f19ae536219ac323",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2020-12-17T22:16:52Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/d19764f517b23c388112da9a28a773e52b662404.zip",
           "https://github.com/google/tcmalloc/archive/d19764f517b23c388112da9a28a773e52b662404.zip"
      ],
      strip_prefix = "tcmalloc-d19764f517b23c388112da9a28a773e52b662404",
      sha256 = "990050f46ffded6862db7eda1940531c30a3c6896c2a8098c0b232be16ce84a1",
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
