"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2021-08-13T08:53:39Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/d66a13e2a01630afcafc4ba411d83e291ecf02bd.zip",
           "https://github.com/bazelbuild/rules_cc/archive/d66a13e2a01630afcafc4ba411d83e291ecf02bd.zip"
      ],
      strip_prefix = "rules_cc-d66a13e2a01630afcafc4ba411d83e291ecf02bd",
      sha256 = "47a670ff6f1d4bb85eb2e15b52c818595cd392d06412da3159c3eeef8b3673da",
    )

    # ********** rules_python *****************
    http_archive(
      name = "rules_python",  # 2021-09-07T17:13:38Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/9f597623ccfbe430b0d81c82498e33b80b7aec88.zip",
           "https://github.com/bazelbuild/rules_python/archive/9f597623ccfbe430b0d81c82498e33b80b7aec88.zip"
      ],
      strip_prefix = "rules_python-9f597623ccfbe430b0d81c82498e33b80b7aec88",
      sha256 = "afc50dd205198c0997dd9b3f1f5b38c3d8323d71f257cc0b62f2ba262e107a75",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2021-09-07T16:36:10Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/8c800bb08d353c73d7dd68538388cf3bd2bcc6d0.zip",
           "https://github.com/abseil/abseil-cpp/archive/8c800bb08d353c73d7dd68538388cf3bd2bcc6d0.zip"
      ],
      strip_prefix = "abseil-cpp-8c800bb08d353c73d7dd68538388cf3bd2bcc6d0",
      sha256 = "1fe7dcfc9184d97195242bb43f04717699c3c91ca9f2adbcdb38301e2f58b8bc",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2021-08-26T18:30:09Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/955c7f837efad184ec63e771c42542d37545eaef.zip",
           "https://github.com/google/googletest/archive/955c7f837efad184ec63e771c42542d37545eaef.zip"
      ],
      strip_prefix = "googletest-955c7f837efad184ec63e771c42542d37545eaef",
      sha256 = "1129a3ff6d81d1b4cd080784e6cb539a9b34d8309831ae4560804337b8cfd27c",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2021-09-07T16:54:23Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/c23a0012523bc3e12c9323f398dcc433c4f19f05.zip",
           "https://github.com/google/benchmark/archive/c23a0012523bc3e12c9323f398dcc433c4f19f05.zip"
      ],
      strip_prefix = "benchmark-c23a0012523bc3e12c9323f398dcc433c4f19f05",
      sha256 = "2013293fcc0b31f0d47c059ced4b1e5b5fc3885c0e431ca93c25e71d65282cfc",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2021-09-03T16:40:30Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/590414d414e132474a8f2ed321f988aa319de620.zip",
           "https://github.com/google/tcmalloc/archive/590414d414e132474a8f2ed321f988aa319de620.zip"
      ],
      strip_prefix = "tcmalloc-590414d414e132474a8f2ed321f988aa319de620",
      sha256 = "3e6b953442064e41f44455aa903718a06d9f38e78602e96f38056098bf21bd08",
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
    # ********** rules_fuzzing (pinned to 0.1.3) *****************
    http_archive(
      name = "rules_fuzzing",
      sha256 = "94f25c7a18db0502ace26a3ef7d0a25fd7c195c4e9770ddd1b1ec718e8936091",
      strip_prefix = "rules_fuzzing-0.1.3",
      # Use the same URL twice to trick bazel into re-trying if connection fails
      urls = [
          "https://github.com/bazelbuild/rules_fuzzing/archive/v0.1.3.zip",
          "https://github.com/bazelbuild/rules_fuzzing/archive/v0.1.3.zip"
      ],
    )
