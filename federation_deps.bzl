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
      name = "rules_python",  # 2020-12-23T00:21:12Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/f6d9b9a67878204deecda45924fbbe229a110c60.zip",
           "https://github.com/bazelbuild/rules_python/archive/f6d9b9a67878204deecda45924fbbe229a110c60.zip"
      ],
      strip_prefix = "rules_python-f6d9b9a67878204deecda45924fbbe229a110c60",
      sha256 = "e20832256feb002ff80b06e65ab8a1f6f0ef6593224117406af8b9dcf5130cf2",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2020-12-22T15:42:56Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/4611a601a7ce8d5aad169417092e3d5027aa8403.zip",
           "https://github.com/abseil/abseil-cpp/archive/4611a601a7ce8d5aad169417092e3d5027aa8403.zip"
      ],
      strip_prefix = "abseil-cpp-4611a601a7ce8d5aad169417092e3d5027aa8403",
      sha256 = "f4f2d3d01c3cc99eebc9f370ea626c43a54b386913aef393bf8201b2c42a9e2f",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2020-12-22T17:15:41Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/ca4b7c9ff4d8a5c37ac51795b03ffe934958aeff.zip",
           "https://github.com/google/googletest/archive/ca4b7c9ff4d8a5c37ac51795b03ffe934958aeff.zip"
      ],
      strip_prefix = "googletest-ca4b7c9ff4d8a5c37ac51795b03ffe934958aeff",
      sha256 = "4902bffbb006d9b84cb657afcfc80f2c5cef4a2ac4cf474eaee028c4b38fc371",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2020-12-22T11:47:52Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/a6d08aea4b70c5532736924377df8be62ef2067a.zip",
           "https://github.com/google/benchmark/archive/a6d08aea4b70c5532736924377df8be62ef2067a.zip"
      ],
      strip_prefix = "benchmark-a6d08aea4b70c5532736924377df8be62ef2067a",
      sha256 = "81d4e41a203a44986eae6829ccb096bf7b9083b2b64d7325a52a3bdfc6aff95d",
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
