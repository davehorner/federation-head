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
      name = "com_google_absl",  # 2020-11-19T19:57:28Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/4fd9a1ec5077daac14eeee05df931d658ec0b7b8.zip",
           "https://github.com/abseil/abseil-cpp/archive/4fd9a1ec5077daac14eeee05df931d658ec0b7b8.zip"
      ],
      strip_prefix = "abseil-cpp-4fd9a1ec5077daac14eeee05df931d658ec0b7b8",
      sha256 = "59d1ada90ee43dd514c659246d24f7edc003eede0f3243f030f0daa03371e458",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2020-11-17T19:41:11Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/36d8eb532022d3b543bf55aa8ffa01b6e9f03490.zip",
           "https://github.com/google/googletest/archive/36d8eb532022d3b543bf55aa8ffa01b6e9f03490.zip"
      ],
      strip_prefix = "googletest-36d8eb532022d3b543bf55aa8ffa01b6e9f03490",
      sha256 = "b98eea13f42b4c376d26fe3366ee0fb984af572d67270364ee2306dc6901646e",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2020-11-19T13:50:30Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/37ced31bfc9fe09d1418fb197e420408eb8c86bf.zip",
           "https://github.com/google/benchmark/archive/37ced31bfc9fe09d1418fb197e420408eb8c86bf.zip"
      ],
      strip_prefix = "benchmark-37ced31bfc9fe09d1418fb197e420408eb8c86bf",
      sha256 = "fdde1e90592b91b81123d249e6b8be73f13a70b27f3fef1880dcfb7acbff03b8",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2020-11-19T21:13:28Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/c347146a55c84d54a1cbc7ed25c4f931e7e98522.zip",
           "https://github.com/google/tcmalloc/archive/c347146a55c84d54a1cbc7ed25c4f931e7e98522.zip"
      ],
      strip_prefix = "tcmalloc-c347146a55c84d54a1cbc7ed25c4f931e7e98522",
      sha256 = "f21ebe9f450e1cd2e115e1c0b64e0bd67cce8ba4a1a72d5c49b23f0e040f97da",
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
