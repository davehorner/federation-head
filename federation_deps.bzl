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
      name = "com_google_absl",  # 2020-05-06T21:08:21Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/b115744656b16bd35014f22293b87f2edcffde74.zip",
           "https://github.com/abseil/abseil-cpp/archive/b115744656b16bd35014f22293b87f2edcffde74.zip"
      ],
      strip_prefix = "abseil-cpp-b115744656b16bd35014f22293b87f2edcffde74",
      sha256 = "81ebd39a1583c0498eb314e37ce21911a6c1e6b107b69f471c0f94b5cb4fd7ba",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2020-05-05T21:07:14Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/e589a337170554c48bc658cc857cf15080c9eacc.zip",
           "https://github.com/google/googletest/archive/e589a337170554c48bc658cc857cf15080c9eacc.zip"
      ],
      strip_prefix = "googletest-e589a337170554c48bc658cc857cf15080c9eacc",
      sha256 = "dc59ebe633f0ffc5c4826197762488b7026c9abf86c178d60bb28d91ed5e8d71",
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
      name = "com_github_google_tcmalloc",  # 2020-05-06T17:40:44Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/629bd65b10e4f2d235ed95b60b601881081d6356.zip",
           "https://github.com/google/tcmalloc/archive/629bd65b10e4f2d235ed95b60b601881081d6356.zip"
      ],
      strip_prefix = "tcmalloc-629bd65b10e4f2d235ed95b60b601881081d6356",
      sha256 = "8347c736e4d5cc5bc6984d346fd558448a90f9f0f626dae457b7d9a173de28e9",
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
