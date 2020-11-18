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
      name = "com_google_absl",  # 2020-11-17T19:40:39Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/4ae6730677ea3c2984f8bb0e4919bd0d9dd04f73.zip",
           "https://github.com/abseil/abseil-cpp/archive/4ae6730677ea3c2984f8bb0e4919bd0d9dd04f73.zip"
      ],
      strip_prefix = "abseil-cpp-4ae6730677ea3c2984f8bb0e4919bd0d9dd04f73",
      sha256 = "5005d7a88c4e0227725aef8a26c4e9358cc143094ede40e3d2cffd258a6c4e03",
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
      name = "com_github_google_benchmark",  # 2020-11-06T09:10:04Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/348aa2c964494b5947c0e7f96b82c1fe844d684f.zip",
           "https://github.com/google/benchmark/archive/348aa2c964494b5947c0e7f96b82c1fe844d684f.zip"
      ],
      strip_prefix = "benchmark-348aa2c964494b5947c0e7f96b82c1fe844d684f",
      sha256 = "6e0657e854b2634b33ef662526c5a0d5a1925149a714eda278e5bb629a85947c",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2020-11-17T20:49:15Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/1fb5e42a9f18ff9f4aa362971197185b92b47ed0.zip",
           "https://github.com/google/tcmalloc/archive/1fb5e42a9f18ff9f4aa362971197185b92b47ed0.zip"
      ],
      strip_prefix = "tcmalloc-1fb5e42a9f18ff9f4aa362971197185b92b47ed0",
      sha256 = "bae344bc589eb374f5489be37d014d5401744f660b1b94a534daf52b7ec81ee4",
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
