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
      name = "rules_python",  # 2020-09-30T13:50:21Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/c064f7008a30f307ea7516cf52358a653011f82b.zip",
           "https://github.com/bazelbuild/rules_python/archive/c064f7008a30f307ea7516cf52358a653011f82b.zip"
      ],
      strip_prefix = "rules_python-c064f7008a30f307ea7516cf52358a653011f82b",
      sha256 = "6e49996ad3cf45b2232b8f94ca1e3ead369c28394c51632be8d85fe826383012",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2020-10-13T16:49:13Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/f3f785ab59478dd0312bf1b5df65d380650bf0dc.zip",
           "https://github.com/abseil/abseil-cpp/archive/f3f785ab59478dd0312bf1b5df65d380650bf0dc.zip"
      ],
      strip_prefix = "abseil-cpp-f3f785ab59478dd0312bf1b5df65d380650bf0dc",
      sha256 = "00c3707bf9cd5eabd1ec6932cc65b97378c043f22573be3adf7d11bb7af17d06",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2020-10-07T14:44:51Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/07f4869221012b16b7f9ee685d94856e1fc9f361.zip",
           "https://github.com/google/googletest/archive/07f4869221012b16b7f9ee685d94856e1fc9f361.zip"
      ],
      strip_prefix = "googletest-07f4869221012b16b7f9ee685d94856e1fc9f361",
      sha256 = "22938614850e85838ce093a89d3bb5b5bde3104df05dc954176cd2326c51c3f0",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2020-10-12T20:41:49Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/af72911f2fe6b8114564614d2db17a449f8c4af0.zip",
           "https://github.com/google/benchmark/archive/af72911f2fe6b8114564614d2db17a449f8c4af0.zip"
      ],
      strip_prefix = "benchmark-af72911f2fe6b8114564614d2db17a449f8c4af0",
      sha256 = "0d504e12d9078c5f03350de1fa19530dd11a50bdcf6079679ba7250e9dc8ec73",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2020-10-13T17:55:58Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/162d7e763e38da09c773072d8044983d1a4f05ec.zip",
           "https://github.com/google/tcmalloc/archive/162d7e763e38da09c773072d8044983d1a4f05ec.zip"
      ],
      strip_prefix = "tcmalloc-162d7e763e38da09c773072d8044983d1a4f05ec",
      sha256 = "cd3a15dc9a381f12ac9f3790b90e5847d09ea8cab576afe5d36e886277f5856f",
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
