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
      name = "com_google_absl",  # 2020-11-20T18:05:26Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/e19260fd7dbef881492fd73891e0be5bd4a09b95.zip",
           "https://github.com/abseil/abseil-cpp/archive/e19260fd7dbef881492fd73891e0be5bd4a09b95.zip"
      ],
      strip_prefix = "abseil-cpp-e19260fd7dbef881492fd73891e0be5bd4a09b95",
      sha256 = "3c66545a1c61480d95ca3a1ce0f490427d5d7d80eec532692bdbecd1663b34ce",
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
      name = "com_github_google_benchmark",  # 2020-11-23T10:02:33Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/7fa6f1f91a96d8763de754810710d457f7fea575.zip",
           "https://github.com/google/benchmark/archive/7fa6f1f91a96d8763de754810710d457f7fea575.zip"
      ],
      strip_prefix = "benchmark-7fa6f1f91a96d8763de754810710d457f7fea575",
      sha256 = "16d51999c61ed6db4f0457b7ab858ebf3b003e47d5bfa3eadcf00b882caebc96",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2020-11-24T02:52:32Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/a643d89610317be1eff9f7298104eef4c987d8d5.zip",
           "https://github.com/google/tcmalloc/archive/a643d89610317be1eff9f7298104eef4c987d8d5.zip"
      ],
      strip_prefix = "tcmalloc-a643d89610317be1eff9f7298104eef4c987d8d5",
      sha256 = "04e946ea69848594f5909eb4d6943e75a3bacd59c44bd381b374c33a58c4419f",
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
