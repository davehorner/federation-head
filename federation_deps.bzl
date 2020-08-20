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
      name = "rules_python",  # 2020-08-14T00:34:47Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/e1277ff863dfad599775de76f9c1d0faa7282f8f.zip",
           "https://github.com/bazelbuild/rules_python/archive/e1277ff863dfad599775de76f9c1d0faa7282f8f.zip"
      ],
      strip_prefix = "rules_python-e1277ff863dfad599775de76f9c1d0faa7282f8f",
      sha256 = "4b25aa432978afbf606344e245064a94a792dba4660b1036505484a6620b3382",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2020-08-18T17:12:43Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/dc969f34a79d019497abb61c2a3f79b5b4be2ea9.zip",
           "https://github.com/abseil/abseil-cpp/archive/dc969f34a79d019497abb61c2a3f79b5b4be2ea9.zip"
      ],
      strip_prefix = "abseil-cpp-dc969f34a79d019497abb61c2a3f79b5b4be2ea9",
      sha256 = "dde4f4466554729676d366c0cdbcc4baf6d9e53e32812cc9d9a4cff34489a4be",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2020-08-14T07:16:24Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/adeef192947fbc0f68fa14a6c494c8df32177508.zip",
           "https://github.com/google/googletest/archive/adeef192947fbc0f68fa14a6c494c8df32177508.zip"
      ],
      strip_prefix = "googletest-adeef192947fbc0f68fa14a6c494c8df32177508",
      sha256 = "b30fc125c7ec68405d1409b374610509321f901bae2be5f7701d60968af16ca4",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2020-08-19T10:57:19Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/bb978c06d0fc326c8e87cf6ef4fbbb44ab1704db.zip",
           "https://github.com/google/benchmark/archive/bb978c06d0fc326c8e87cf6ef4fbbb44ab1704db.zip"
      ],
      strip_prefix = "benchmark-bb978c06d0fc326c8e87cf6ef4fbbb44ab1704db",
      sha256 = "5a456442961576ac74dcdc866d5eb7c413ea19317a77555ded043038defc75fe",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2020-08-13T21:06:22Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/e519fb74134b73557a1a0c8a0590abdce9fe883b.zip",
           "https://github.com/google/tcmalloc/archive/e519fb74134b73557a1a0c8a0590abdce9fe883b.zip"
      ],
      strip_prefix = "tcmalloc-e519fb74134b73557a1a0c8a0590abdce9fe883b",
      sha256 = "ef8d6ac6e046d1b13520edca8b74debbe84118338500f9b22049ad3f384b5812",
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
