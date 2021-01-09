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
      name = "rules_python",  # 2021-01-07T19:19:47Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/bbe0712276ee2c9cd216323783fbdbfa15da7c99.zip",
           "https://github.com/bazelbuild/rules_python/archive/bbe0712276ee2c9cd216323783fbdbfa15da7c99.zip"
      ],
      strip_prefix = "rules_python-bbe0712276ee2c9cd216323783fbdbfa15da7c99",
      sha256 = "be5e90d20d2ac88fe4b89d5f03d320211b44b62448c9ce997a14c395cb5bca5d",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2021-01-08T17:50:29Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/62ce712ecc887f669610a93efe18abecf70b47a0.zip",
           "https://github.com/abseil/abseil-cpp/archive/62ce712ecc887f669610a93efe18abecf70b47a0.zip"
      ],
      strip_prefix = "abseil-cpp-62ce712ecc887f669610a93efe18abecf70b47a0",
      sha256 = "add58c29ec01ac958e982b63a1cbe57ca3036f1fb29165d8f58da003e6b08381",
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
      name = "com_github_google_tcmalloc",  # 2021-01-08T23:14:11Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/9d274df38333479d5ae6acaddc29172fd134d885.zip",
           "https://github.com/google/tcmalloc/archive/9d274df38333479d5ae6acaddc29172fd134d885.zip"
      ],
      strip_prefix = "tcmalloc-9d274df38333479d5ae6acaddc29172fd134d885",
      sha256 = "15e3d1d07820e51ae2d60dcbc921e2ce0923750d7d5fc0e02b84dc65abdd0d15",
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
