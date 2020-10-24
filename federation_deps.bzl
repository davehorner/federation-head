"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2020-10-05T06:01:24Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/f055da4ff0cb2b3c73de1fe2f094ebdfb8b3acb9.zip",
           "https://github.com/bazelbuild/rules_cc/archive/f055da4ff0cb2b3c73de1fe2f094ebdfb8b3acb9.zip"
      ],
      strip_prefix = "rules_cc-f055da4ff0cb2b3c73de1fe2f094ebdfb8b3acb9",
      sha256 = "35ea62c63cd71d4000efe85f9f4f17e8afb23896c37ee9510952db2e9d8fbb70",
    )

    # ********** rules_python *****************
    http_archive(
      name = "rules_python",  # 2020-10-16T14:03:16Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/5c948dcfd4ca79c2ed3a87636c46abba9f5836e9.zip",
           "https://github.com/bazelbuild/rules_python/archive/5c948dcfd4ca79c2ed3a87636c46abba9f5836e9.zip"
      ],
      strip_prefix = "rules_python-5c948dcfd4ca79c2ed3a87636c46abba9f5836e9",
      sha256 = "4d8ed66d5f57a0b6b90e495ca8e29e5c5fa353b93f093e7c31c595a4631ff293",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2020-10-23T19:52:35Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/1e3d25b2657228bd691ee938cfd37d487f48054b.zip",
           "https://github.com/abseil/abseil-cpp/archive/1e3d25b2657228bd691ee938cfd37d487f48054b.zip"
      ],
      strip_prefix = "abseil-cpp-1e3d25b2657228bd691ee938cfd37d487f48054b",
      sha256 = "f524d790ee68de433a21bfeac4c6c374da485c3ad2258cdc2bb7d57e9537dfc0",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2020-10-22T07:43:30Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/a6dfd3aca7f2f91f95fc7ab650c95a48420d513d.zip",
           "https://github.com/google/googletest/archive/a6dfd3aca7f2f91f95fc7ab650c95a48420d513d.zip"
      ],
      strip_prefix = "googletest-a6dfd3aca7f2f91f95fc7ab650c95a48420d513d",
      sha256 = "8d780a221be685c947a18772a80b9594dd6cc9a238e0e33ae8e0753b023514de",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2020-10-21T15:39:54Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/dce3322a549650d18f50b5f1428a5942327ab6a5.zip",
           "https://github.com/google/benchmark/archive/dce3322a549650d18f50b5f1428a5942327ab6a5.zip"
      ],
      strip_prefix = "benchmark-dce3322a549650d18f50b5f1428a5942327ab6a5",
      sha256 = "bc70f6344b917d32382b2d5d60cd3cd0bc2bcf5f5dfc1497da53fd0ca6f2c2e9",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2020-10-22T19:20:43Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/08e0e15b21f0cc34eaaa01a36521fd2f80b42549.zip",
           "https://github.com/google/tcmalloc/archive/08e0e15b21f0cc34eaaa01a36521fd2f80b42549.zip"
      ],
      strip_prefix = "tcmalloc-08e0e15b21f0cc34eaaa01a36521fd2f80b42549",
      sha256 = "50aa62611354fde97f28b30036f85077735131dba56c942d73cefdde50ce3fc7",
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
