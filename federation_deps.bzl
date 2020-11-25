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
      name = "com_google_absl",  # 2020-11-24T07:43:25Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/5d8fc9192245f0ea67094af57399d7931d6bd53f.zip",
           "https://github.com/abseil/abseil-cpp/archive/5d8fc9192245f0ea67094af57399d7931d6bd53f.zip"
      ],
      strip_prefix = "abseil-cpp-5d8fc9192245f0ea67094af57399d7931d6bd53f",
      sha256 = "dba26d9e967ce270af46ebe4b1c6920ff05d767ee358f972b19c877a61e317fb",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2020-11-24T08:46:27Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/b1fbd33c06cdb0024c67733c6fdec2009d17b384.zip",
           "https://github.com/google/googletest/archive/b1fbd33c06cdb0024c67733c6fdec2009d17b384.zip"
      ],
      strip_prefix = "googletest-b1fbd33c06cdb0024c67733c6fdec2009d17b384",
      sha256 = "441ca27ee15f671697189f93769eab79cfcebc4bb01d6e9852dd23730fa56721",
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
      name = "com_github_google_tcmalloc",  # 2020-11-24T20:03:50Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/ed2afb19b17acb3ff868f2da375beecbd33f1cf2.zip",
           "https://github.com/google/tcmalloc/archive/ed2afb19b17acb3ff868f2da375beecbd33f1cf2.zip"
      ],
      strip_prefix = "tcmalloc-ed2afb19b17acb3ff868f2da375beecbd33f1cf2",
      sha256 = "588ecb94d9a6dc0802a2bf0bfa2e23dd77f72cf6a9af57843194101a4e7d59c2",
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
