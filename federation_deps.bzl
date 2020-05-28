"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2020-05-13T14:24:06Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/818289e5613731ae410efb54218a4077fb9dbb03.zip",
           "https://github.com/bazelbuild/rules_cc/archive/818289e5613731ae410efb54218a4077fb9dbb03.zip"
      ],
      strip_prefix = "rules_cc-818289e5613731ae410efb54218a4077fb9dbb03",
      sha256 = "0adbd6f567291ad526e82c765e15aed33cea5e256eeba129f1501142c2c56610",
    )

    # ********** rules_python *****************
    http_archive(
      name = "rules_python",  # 2020-05-23T05:50:58Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/708ed8679d7510a331ce9a7b910a2a056d24f7b1.zip",
           "https://github.com/bazelbuild/rules_python/archive/708ed8679d7510a331ce9a7b910a2a056d24f7b1.zip"
      ],
      strip_prefix = "rules_python-708ed8679d7510a331ce9a7b910a2a056d24f7b1",
      sha256 = "4ff0262d17870460ff505b59fcce75539414aeee6bf7526320db0a64914f03be",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2020-05-27T19:18:40Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/af8f994af5d25d9bebf542d6e6bf60edc40fd25d.zip",
           "https://github.com/abseil/abseil-cpp/archive/af8f994af5d25d9bebf542d6e6bf60edc40fd25d.zip"
      ],
      strip_prefix = "abseil-cpp-af8f994af5d25d9bebf542d6e6bf60edc40fd25d",
      sha256 = "fbfdd54308759ec1465d387dda21a768285311845554da6ada5ffb5de7c4c08b",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2020-05-14T00:36:05Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/011959aafddcd30611003de96cfd8d7a7685c700.zip",
           "https://github.com/google/googletest/archive/011959aafddcd30611003de96cfd8d7a7685c700.zip"
      ],
      strip_prefix = "googletest-011959aafddcd30611003de96cfd8d7a7685c700",
      sha256 = "6a5d7d63cd6e0ad2a7130471105a3b83799a7a2b14ef7ec8d742b54f01a4833c",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2020-05-26T21:20:07Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/9284e90f28a9815f0b0954005bb6bab4283a9248.zip",
           "https://github.com/google/benchmark/archive/9284e90f28a9815f0b0954005bb6bab4283a9248.zip"
      ],
      strip_prefix = "benchmark-9284e90f28a9815f0b0954005bb6bab4283a9248",
      sha256 = "80cdfbecbcbbf642a271426bda2f4ceb632e821098d558f4b055da86f63dd1b7",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2020-05-26T20:22:51Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/48a69a56c6b55308974c5a7f60102d18bbb688fa.zip",
           "https://github.com/google/tcmalloc/archive/48a69a56c6b55308974c5a7f60102d18bbb688fa.zip"
      ],
      strip_prefix = "tcmalloc-48a69a56c6b55308974c5a7f60102d18bbb688fa",
      sha256 = "8aed86fd22f5448f8b0bc7e64d02bb2e30b5e611b835997e2c9431d17372ccfa",
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
