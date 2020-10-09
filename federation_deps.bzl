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
      name = "com_google_absl",  # 2020-10-08T15:34:42Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/e63a5a61045e516b7b3dbca090e2b9ff1d057e46.zip",
           "https://github.com/abseil/abseil-cpp/archive/e63a5a61045e516b7b3dbca090e2b9ff1d057e46.zip"
      ],
      strip_prefix = "abseil-cpp-e63a5a61045e516b7b3dbca090e2b9ff1d057e46",
      sha256 = "67aab06f297f2eb0c51deaead9c5eb8ccaf21034e6aec5ce5affee88378c0ca1",
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
      name = "com_github_google_benchmark",  # 2020-09-29T06:35:18Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/ffe1342eb2faa7d2e7c35b4db2ccf99fab81ec20.zip",
           "https://github.com/google/benchmark/archive/ffe1342eb2faa7d2e7c35b4db2ccf99fab81ec20.zip"
      ],
      strip_prefix = "benchmark-ffe1342eb2faa7d2e7c35b4db2ccf99fab81ec20",
      sha256 = "5dc57a5c8a0f4991bac338250a0298ac18cb8fe100ee91f936f7fedc7e9e5a83",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2020-10-08T16:50:34Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/806280ace576878756ab16ec7950aab89de9f4e4.zip",
           "https://github.com/google/tcmalloc/archive/806280ace576878756ab16ec7950aab89de9f4e4.zip"
      ],
      strip_prefix = "tcmalloc-806280ace576878756ab16ec7950aab89de9f4e4",
      sha256 = "ffd47861bbd3eb3d890846dadf6c712bb12368980bc4e8ff7ffe1a770696eaa4",
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
