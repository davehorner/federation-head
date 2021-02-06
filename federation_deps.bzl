"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2021-02-05T12:30:09Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/40548a2974f1aea06215272d9c2b47a14a24e556.zip",
           "https://github.com/bazelbuild/rules_cc/archive/40548a2974f1aea06215272d9c2b47a14a24e556.zip"
      ],
      strip_prefix = "rules_cc-40548a2974f1aea06215272d9c2b47a14a24e556",
      sha256 = "56ac9633c13d74cb71e0546f103ce1c58810e4a76aa8325da593ca4277908d72",
    )

    # ********** rules_python *****************
    http_archive(
      name = "rules_python",  # 2021-02-02T22:16:45Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/c7e068d38e2fec1d899e1c150e372f205c220e27.zip",
           "https://github.com/bazelbuild/rules_python/archive/c7e068d38e2fec1d899e1c150e372f205c220e27.zip"
      ],
      strip_prefix = "rules_python-c7e068d38e2fec1d899e1c150e372f205c220e27",
      sha256 = "4b6055b232bfdef4cbde1ea620a478c57b032e96527da3472c2b49dbc1e42048",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2021-02-03T21:30:41Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/9c6a50fdd80bb39fabd95faeda84f04062685ff3.zip",
           "https://github.com/abseil/abseil-cpp/archive/9c6a50fdd80bb39fabd95faeda84f04062685ff3.zip"
      ],
      strip_prefix = "abseil-cpp-9c6a50fdd80bb39fabd95faeda84f04062685ff3",
      sha256 = "e839ea17b0a9c3dcdb74d091de3c3e7fb0118b837384ed472a7eb4b380fa2d1e",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2021-02-05T18:41:32Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/f3ef7e173fd0853069f16c4b5afc7e80a350604b.zip",
           "https://github.com/google/googletest/archive/f3ef7e173fd0853069f16c4b5afc7e80a350604b.zip"
      ],
      strip_prefix = "googletest-f3ef7e173fd0853069f16c4b5afc7e80a350604b",
      sha256 = "f0a69b28b9861fc1c15c7e9f5cafb811334a0c1f41b572e4013e9460c6331d4e",
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
      name = "com_github_google_tcmalloc",  # 2021-02-02T15:38:22Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/e89f1bfb7db90eb5d8395f5f02932db49c8f2642.zip",
           "https://github.com/google/tcmalloc/archive/e89f1bfb7db90eb5d8395f5f02932db49c8f2642.zip"
      ],
      strip_prefix = "tcmalloc-e89f1bfb7db90eb5d8395f5f02932db49c8f2642",
      sha256 = "5127a80b579e7a918f8f982839205de08c0c0aa04d42aea709a9cca46fea3898",
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
