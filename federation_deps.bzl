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
      name = "com_google_absl",  # 2020-12-12T00:57:32Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/1918ad2ae38aa32c74b558b322479a8efdd76363.zip",
           "https://github.com/abseil/abseil-cpp/archive/1918ad2ae38aa32c74b558b322479a8efdd76363.zip"
      ],
      strip_prefix = "abseil-cpp-1918ad2ae38aa32c74b558b322479a8efdd76363",
      sha256 = "b822a9bcd7cf4f69e6aed0926a6f607bdca4a7298dbc47d49b7ed476ee69c0a6",
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
      name = "com_github_google_benchmark",  # 2020-11-26T11:14:03Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/bf585a2789e30585b4e3ce6baf11ef2750b54677.zip",
           "https://github.com/google/benchmark/archive/bf585a2789e30585b4e3ce6baf11ef2750b54677.zip"
      ],
      strip_prefix = "benchmark-bf585a2789e30585b4e3ce6baf11ef2750b54677",
      sha256 = "2a778d821997df7d8646c9c59b8edb9a573a6e04c534c01892a40aa524a7b68c",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2020-12-10T22:35:56Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/b7d6ee7a8ebdfbf68e8f8ccafadaf91bf8d4e3b4.zip",
           "https://github.com/google/tcmalloc/archive/b7d6ee7a8ebdfbf68e8f8ccafadaf91bf8d4e3b4.zip"
      ],
      strip_prefix = "tcmalloc-b7d6ee7a8ebdfbf68e8f8ccafadaf91bf8d4e3b4",
      sha256 = "48706048d68e3b2d8508d3a109356bc7dc0bc80f8f281992458e87db96e54818",
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
