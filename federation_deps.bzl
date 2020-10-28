"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2020-10-26T16:06:42Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/b2f6e22c344b095af2d4390e97c4e93537f4cd5e.zip",
           "https://github.com/bazelbuild/rules_cc/archive/b2f6e22c344b095af2d4390e97c4e93537f4cd5e.zip"
      ],
      strip_prefix = "rules_cc-b2f6e22c344b095af2d4390e97c4e93537f4cd5e",
      sha256 = "6c94e2a0dac7c9af5178bb57331b7a1fc3135f5c720e8229037cd6c006609b62",
    )

    # ********** rules_python *****************
    http_archive(
      name = "rules_python",  # 2020-10-26T14:11:16Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/5be1f76e3ecd1f743f4213f3087c2a0961411782.zip",
           "https://github.com/bazelbuild/rules_python/archive/5be1f76e3ecd1f743f4213f3087c2a0961411782.zip"
      ],
      strip_prefix = "rules_python-5be1f76e3ecd1f743f4213f3087c2a0961411782",
      sha256 = "d10f790e7251a42c6d2b673c0449223b45e2a468d6a06c5bb4fa986cfc2c76d2",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2020-10-27T21:14:47Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/962b067540f511070b7afa4cda465233b42b560a.zip",
           "https://github.com/abseil/abseil-cpp/archive/962b067540f511070b7afa4cda465233b42b560a.zip"
      ],
      strip_prefix = "abseil-cpp-962b067540f511070b7afa4cda465233b42b560a",
      sha256 = "bfadb40011195166ac1cbf7177f8269cbd8f1fdb60fea7440e86c0318f70a9c3",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2020-10-27T14:17:25Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/3005672db1d05f2378f642b61faa96f85498befe.zip",
           "https://github.com/google/googletest/archive/3005672db1d05f2378f642b61faa96f85498befe.zip"
      ],
      strip_prefix = "googletest-3005672db1d05f2378f642b61faa96f85498befe",
      sha256 = "d87849e281d376a1c955f867cf10be0d672ff41dbe7fd600bcc2faa9bcb6e23f",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2020-10-21T15:39:54Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/dce3322a549650d18f50b5f1428a5942327ab6a5.zip",
           "https://github.com/google/benchmark/archive/dce3322a549650d18f50b5f1428a5942327ab6a5.zip"
      ],
      strip_prefix = "benchmark-dce3322a549650d18f50b5f1428a5942327ab6a5",
      sha256 = "bc70f6344b917d32382b2d5d60cd3cd0bc2bcf5f5dfc1497da53fd0ca6f2c2e9",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2020-10-28T01:02:07Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/d4a8a7fb6b2874949fbff3d5a4c8b2fdb2c26c01.zip",
           "https://github.com/google/tcmalloc/archive/d4a8a7fb6b2874949fbff3d5a4c8b2fdb2c26c01.zip"
      ],
      strip_prefix = "tcmalloc-d4a8a7fb6b2874949fbff3d5a4c8b2fdb2c26c01",
      sha256 = "d435b1f12eba5b2a2bd195ebc5519f957326d17bf7251e0c38a2bb28b237a678",
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
