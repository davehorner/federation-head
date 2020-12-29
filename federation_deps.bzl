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
      name = "rules_python",  # 2020-12-24T01:44:20Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/a16432752ef33b98530f05ca86375b42059b23c0.zip",
           "https://github.com/bazelbuild/rules_python/archive/a16432752ef33b98530f05ca86375b42059b23c0.zip"
      ],
      strip_prefix = "rules_python-a16432752ef33b98530f05ca86375b42059b23c0",
      sha256 = "140630a11671b4a5b5e3f1031ff6a8e63c0740dded9c38af9fad49cf6fad00c1",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2020-12-24T15:06:40Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/e7ca23acac146b10edc4f752edd0bd28b0f14ea3.zip",
           "https://github.com/abseil/abseil-cpp/archive/e7ca23acac146b10edc4f752edd0bd28b0f14ea3.zip"
      ],
      strip_prefix = "abseil-cpp-e7ca23acac146b10edc4f752edd0bd28b0f14ea3",
      sha256 = "a06028785f6535637e7eeaed48a8e01de6feac90edadb4dd83fea9a974c6913d",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2020-12-28T18:32:06Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/389cb68b87193358358ae87cc56d257fd0d80189.zip",
           "https://github.com/google/googletest/archive/389cb68b87193358358ae87cc56d257fd0d80189.zip"
      ],
      strip_prefix = "googletest-389cb68b87193358358ae87cc56d257fd0d80189",
      sha256 = "763e20249e76417bed7ebc44aa85fedf5fbac6f9fb6d30bddb628ab07ebf04f5",
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
