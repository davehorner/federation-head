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
      name = "com_google_absl",  # 2020-08-20T19:09:31Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/fbf0fdab62ac6fcc72b935d505f6837e0884fdc3.zip",
           "https://github.com/abseil/abseil-cpp/archive/fbf0fdab62ac6fcc72b935d505f6837e0884fdc3.zip"
      ],
      strip_prefix = "abseil-cpp-fbf0fdab62ac6fcc72b935d505f6837e0884fdc3",
      sha256 = "5cde4eeefab919065ae875ffab67ceca7975c7c52b1f0183cda564b70c40a44e",
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
      name = "com_github_google_tcmalloc",  # 2020-08-20T21:26:50Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/48c43f633208e3a04c9a838a3d0e4a6f2c1efd1e.zip",
           "https://github.com/google/tcmalloc/archive/48c43f633208e3a04c9a838a3d0e4a6f2c1efd1e.zip"
      ],
      strip_prefix = "tcmalloc-48c43f633208e3a04c9a838a3d0e4a6f2c1efd1e",
      sha256 = "06addf30ea6f416facb04bd422371557d100bc07d132b1015a081f5e559f9be8",
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
