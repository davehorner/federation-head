"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2020-05-08T13:35:54Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/8c31dd406cf17611d7962bee4680cbc4360219ed.zip",
           "https://github.com/bazelbuild/rules_cc/archive/8c31dd406cf17611d7962bee4680cbc4360219ed.zip"
      ],
      strip_prefix = "rules_cc-8c31dd406cf17611d7962bee4680cbc4360219ed",
      sha256 = "3f810030e87e034e09ec35e7e51c1e6ef5e55ef3fc587360ab3b4085a9cbc0bb",
    )

    # ********** rules_python *****************
    http_archive(
      name = "rules_python",  # 2020-05-12T14:01:26Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/4fcc24fd8a850bdab2ef2e078b1de337eea751a6.zip",
           "https://github.com/bazelbuild/rules_python/archive/4fcc24fd8a850bdab2ef2e078b1de337eea751a6.zip"
      ],
      strip_prefix = "rules_python-4fcc24fd8a850bdab2ef2e078b1de337eea751a6",
      sha256 = "ff480e501aaf6e3311d9c59369d5804bb2b034087c78a6bc0952b557f2314855",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2020-05-13T01:04:49Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/cbfd0f0fe53d9d3495a3d607311d984fec37e692.zip",
           "https://github.com/abseil/abseil-cpp/archive/cbfd0f0fe53d9d3495a3d607311d984fec37e692.zip"
      ],
      strip_prefix = "abseil-cpp-cbfd0f0fe53d9d3495a3d607311d984fec37e692",
      sha256 = "42d780d4132d79595d80e0386e2724dd6e5a609a14c86fff00c43a2f2a7db8d3",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2020-05-13T04:39:57Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/48bf552cbf014daf9149f8ee38b49e171ba4208f.zip",
           "https://github.com/google/googletest/archive/48bf552cbf014daf9149f8ee38b49e171ba4208f.zip"
      ],
      strip_prefix = "googletest-48bf552cbf014daf9149f8ee38b49e171ba4208f",
      sha256 = "5c8a1f293be00b44ab1ba33d520d39283c22e4437acc5682feeb567ec773b615",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2020-05-06T16:28:29Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/d3ad0b9d11c190cb58de5fb17c3555def61fdc96.zip",
           "https://github.com/google/benchmark/archive/d3ad0b9d11c190cb58de5fb17c3555def61fdc96.zip"
      ],
      strip_prefix = "benchmark-d3ad0b9d11c190cb58de5fb17c3555def61fdc96",
      sha256 = "ce4147ea69a18d4efec6f649ec0f7628b363929be6a45a721f17d81a38ee8583",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2020-05-13T01:34:04Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/f682d9f3f5724e6f2e6e760ce712de98c2dc8e5f.zip",
           "https://github.com/google/tcmalloc/archive/f682d9f3f5724e6f2e6e760ce712de98c2dc8e5f.zip"
      ],
      strip_prefix = "tcmalloc-f682d9f3f5724e6f2e6e760ce712de98c2dc8e5f",
      sha256 = "b6d4e5bf4bbc250b4a3f56250f4e9c9c97086ee6b912b022975b7ce4e888eb72",
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
