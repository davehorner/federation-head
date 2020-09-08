"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2020-08-18T17:57:24Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/02becfef8bc97bda4f9bb64e153f1b0671aec4ba.zip",
           "https://github.com/bazelbuild/rules_cc/archive/02becfef8bc97bda4f9bb64e153f1b0671aec4ba.zip"
      ],
      strip_prefix = "rules_cc-02becfef8bc97bda4f9bb64e153f1b0671aec4ba",
      sha256 = "fa42eade3cad9190c2a6286a6213f07f1a83d26d9f082d56f526d014c6ea7444",
    )

    # ********** rules_python *****************
    http_archive(
      name = "rules_python",  # 2020-08-31T15:09:18Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/6ed1fe53f8b36ecd404d98634d8e7411531cd6f8.zip",
           "https://github.com/bazelbuild/rules_python/archive/6ed1fe53f8b36ecd404d98634d8e7411531cd6f8.zip"
      ],
      strip_prefix = "rules_python-6ed1fe53f8b36ecd404d98634d8e7411531cd6f8",
      sha256 = "947d42422133f30c13760b36f8e7379ecf8aaf69c7546a67ebd6e985f13be561",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2020-09-04T16:59:29Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/7ba8cdb56df3bf4fe4ab4606f3fe4b2ab825afac.zip",
           "https://github.com/abseil/abseil-cpp/archive/7ba8cdb56df3bf4fe4ab4606f3fe4b2ab825afac.zip"
      ],
      strip_prefix = "abseil-cpp-7ba8cdb56df3bf4fe4ab4606f3fe4b2ab825afac",
      sha256 = "10a83730ea1a0fdd3d9f17c06d6e3ca0b3d90d20874d81fdf1adec97c154d590",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2020-09-01T20:53:45Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/7b1cf6dd5fbe0c22c5e638fce8caf7f0f5c1abbf.zip",
           "https://github.com/google/googletest/archive/7b1cf6dd5fbe0c22c5e638fce8caf7f0f5c1abbf.zip"
      ],
      strip_prefix = "googletest-7b1cf6dd5fbe0c22c5e638fce8caf7f0f5c1abbf",
      sha256 = "e89104fc9b7c6e93004909d619b8e9f5f7543f9e34a9cc967a745eefae941018",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2020-09-03T09:59:15Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/4751550871a4765c027d39680b842f590e1192b2.zip",
           "https://github.com/google/benchmark/archive/4751550871a4765c027d39680b842f590e1192b2.zip"
      ],
      strip_prefix = "benchmark-4751550871a4765c027d39680b842f590e1192b2",
      sha256 = "a7c76f0ba74a963cb2c764dd513e53b8d09334c9816be916395e359acdfdf08a",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2020-09-06T18:23:14Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/b94c19f3dafcd417a2ddd25d1d5db72d01c285cd.zip",
           "https://github.com/google/tcmalloc/archive/b94c19f3dafcd417a2ddd25d1d5db72d01c285cd.zip"
      ],
      strip_prefix = "tcmalloc-b94c19f3dafcd417a2ddd25d1d5db72d01c285cd",
      sha256 = "76f66df5779b063bfa24d8a4de71cc8dfcec7d13a9cb8d83e29557334ffa7433",
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
