"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2020-05-06T13:52:27Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/dbe8807224771b837bcc6e80a416e89388206ea7.zip",
           "https://github.com/bazelbuild/rules_cc/archive/dbe8807224771b837bcc6e80a416e89388206ea7.zip"
      ],
      strip_prefix = "rules_cc-dbe8807224771b837bcc6e80a416e89388206ea7",
      sha256 = "34dd6eb59d64aed72703a7a2771429e229b1e37e7597d5c358e871b1fa4f1ab2",
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
      name = "com_google_absl",  # 2020-05-07T19:26:50Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/a35ef8a62ce7cded2f131ccbd2b5c4a81d622507.zip",
           "https://github.com/abseil/abseil-cpp/archive/a35ef8a62ce7cded2f131ccbd2b5c4a81d622507.zip"
      ],
      strip_prefix = "abseil-cpp-a35ef8a62ce7cded2f131ccbd2b5c4a81d622507",
      sha256 = "dcee274d7670bbe1271e1bb8416a42cadf42c31c5183c773be62c932ba25a631",
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
      name = "com_github_google_tcmalloc",  # 2020-05-07T19:22:31Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/fa604306d5d50c29ea8ce01a462054b291ab40af.zip",
           "https://github.com/google/tcmalloc/archive/fa604306d5d50c29ea8ce01a462054b291ab40af.zip"
      ],
      strip_prefix = "tcmalloc-fa604306d5d50c29ea8ce01a462054b291ab40af",
      sha256 = "0a176c72c4242941ae09be58e9aec8aca3927ad63c31596378728deb5e9a6f37",
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
