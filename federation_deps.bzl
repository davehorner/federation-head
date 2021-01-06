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
      name = "rules_python",  # 2021-01-05T22:55:35Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/c97265590fd1680e6813c07baf5474bb80b2eb3a.zip",
           "https://github.com/bazelbuild/rules_python/archive/c97265590fd1680e6813c07baf5474bb80b2eb3a.zip"
      ],
      strip_prefix = "rules_python-c97265590fd1680e6813c07baf5474bb80b2eb3a",
      sha256 = "280e913ea10401132a3ed32140b4e634c9a03cf8f2f39836cf2789142b06f1d7",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2021-01-05T18:49:24Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/bb7fb2c7bf6ac33b243a880edfbdb21ad2b81281.zip",
           "https://github.com/abseil/abseil-cpp/archive/bb7fb2c7bf6ac33b243a880edfbdb21ad2b81281.zip"
      ],
      strip_prefix = "abseil-cpp-bb7fb2c7bf6ac33b243a880edfbdb21ad2b81281",
      sha256 = "517c898e31962a3a12761bd9bae95784fc8d0b4ea83650b6dd26d14d6dc3e44d",
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
      name = "com_github_google_benchmark",  # 2021-01-05T09:54:04Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/8df87f6c879cbcabd17c5cfcec7b89687df36953.zip",
           "https://github.com/google/benchmark/archive/8df87f6c879cbcabd17c5cfcec7b89687df36953.zip"
      ],
      strip_prefix = "benchmark-8df87f6c879cbcabd17c5cfcec7b89687df36953",
      sha256 = "da89d07439a4ba0e649a3d957af639db15b3d2ee65731a4b58e674a59f82b893",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2021-01-06T00:57:18Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/5c107c91abe7f14d4ece1f482f528a67da45098f.zip",
           "https://github.com/google/tcmalloc/archive/5c107c91abe7f14d4ece1f482f528a67da45098f.zip"
      ],
      strip_prefix = "tcmalloc-5c107c91abe7f14d4ece1f482f528a67da45098f",
      sha256 = "d91ccf397b8d89f2d498ca456c3a2dacbaf2b0e39fc04948b01c19f7bf1064cf",
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
