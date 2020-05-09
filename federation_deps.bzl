"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2020-05-08T13:35:54Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/8c31dd406cf17611d7962bee4680cbc4360219ed.zip",
           "https://github.com/bazelbuild/rules_cc/archive/8c31dd406cf17611d7962bee4680cbc4360219ed.zip"
      ],
      strip_prefix = "rules_cc-8c31dd406cf17611d7962bee4680cbc4360219ed",
      sha256 = "3f810030e87e034e09ec35e7e51c1e6ef5e55ef3fc587360ab3b4085a9cbc0bb",
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
      name = "com_google_absl",  # 2020-05-08T19:22:38Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/c45d1c09d517e145d722e00deea9be6c8be8dd57.zip",
           "https://github.com/abseil/abseil-cpp/archive/c45d1c09d517e145d722e00deea9be6c8be8dd57.zip"
      ],
      strip_prefix = "abseil-cpp-c45d1c09d517e145d722e00deea9be6c8be8dd57",
      sha256 = "7e02d36f05bb425154bea37e9da5b18a57af09924c1ef94c6a63c8d334778ee8",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2020-05-07T20:15:58Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/a09ea700d32bab83325aff9ff34d0582e50e3997.zip",
           "https://github.com/google/googletest/archive/a09ea700d32bab83325aff9ff34d0582e50e3997.zip"
      ],
      strip_prefix = "googletest-a09ea700d32bab83325aff9ff34d0582e50e3997",
      sha256 = "0d4b0947627085e1448447b38d94fd425484ab10e66d275ac5577873b111b253",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2020-05-06T16:28:29Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/d3ad0b9d11c190cb58de5fb17c3555def61fdc96.zip",
           "https://github.com/google/benchmark/archive/d3ad0b9d11c190cb58de5fb17c3555def61fdc96.zip"
      ],
      strip_prefix = "benchmark-d3ad0b9d11c190cb58de5fb17c3555def61fdc96",
      sha256 = "ce4147ea69a18d4efec6f649ec0f7628b363929be6a45a721f17d81a38ee8583",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2020-05-08T20:18:49Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/82969a21d3f99096e1c79b5e59853bdb4e358474.zip",
           "https://github.com/google/tcmalloc/archive/82969a21d3f99096e1c79b5e59853bdb4e358474.zip"
      ],
      strip_prefix = "tcmalloc-82969a21d3f99096e1c79b5e59853bdb4e358474",
      sha256 = "85a871dbaeb1af03505d648e6811b36e4aeb428335bf00c7e5c362540708f6f8",
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
