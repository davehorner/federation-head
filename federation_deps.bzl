"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2020-04-21T15:38:17Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/a74452e9109e28e70c9c6632799c8c37905776fa.zip",
           "https://github.com/bazelbuild/rules_cc/archive/a74452e9109e28e70c9c6632799c8c37905776fa.zip"
      ],
      strip_prefix = "rules_cc-a74452e9109e28e70c9c6632799c8c37905776fa",
      sha256 = "5375461772e0875be69c72bd9b147210c80781aed9363f16783f227367349b8d",
    )

    # ********** rules_python *****************
    http_archive(
      name = "rules_python",  # 2020-04-09T15:00:47Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/a0fbf98d4e3a232144df4d0d80b577c7a693b570.zip",
           "https://github.com/bazelbuild/rules_python/archive/a0fbf98d4e3a232144df4d0d80b577c7a693b570.zip"
      ],
      strip_prefix = "rules_python-a0fbf98d4e3a232144df4d0d80b577c7a693b570",
      sha256 = "98c9b903f6e8fe20b7e56d19c4822c8c49a11b475bd4ec0ca6a564e8bc5d5fa2",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2020-04-21T18:10:36Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/cb52b05ea20e8d196f17b45a420c2d323e401324.zip",
           "https://github.com/abseil/abseil-cpp/archive/cb52b05ea20e8d196f17b45a420c2d323e401324.zip"
      ],
      strip_prefix = "abseil-cpp-cb52b05ea20e8d196f17b45a420c2d323e401324",
      sha256 = "aa34665708cd5bd492113dc28402e49e5b1e4175cf8499a27a6e1c14e77651e3",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2020-04-16T17:33:10Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/dcc92d0ab6c4ce022162a23566d44f673251eee4.zip",
           "https://github.com/google/googletest/archive/dcc92d0ab6c4ce022162a23566d44f673251eee4.zip"
      ],
      strip_prefix = "googletest-dcc92d0ab6c4ce022162a23566d44f673251eee4",
      sha256 = "a6ab7c7d6fd4dd727f6012b5d85d71a73d3aa1274f529ecd4ad84eb9ec4ff767",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2020-04-17T16:31:49Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/ecc1685340f58f7fe6b707036bc0bb1fccabb0c1.zip",
           "https://github.com/google/benchmark/archive/ecc1685340f58f7fe6b707036bc0bb1fccabb0c1.zip"
      ],
      strip_prefix = "benchmark-ecc1685340f58f7fe6b707036bc0bb1fccabb0c1",
      sha256 = "4a6dc2a0a20e26765f4f4b9bf9678fa7dc33d858ff14efb428a021750d1cfe24",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2020-04-22T01:09:29Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/4f530e420a286939f00ec568ea526f58b0f12500.zip",
           "https://github.com/google/tcmalloc/archive/4f530e420a286939f00ec568ea526f58b0f12500.zip"
      ],
      strip_prefix = "tcmalloc-4f530e420a286939f00ec568ea526f58b0f12500",
      sha256 = "bd5beb317ffb2d0232a24dcc3a9136aad32da6e68b4a81b78b9bd1f3e7b49419",
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
