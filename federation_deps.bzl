"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2020-10-28T12:27:07Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/8cded3e3c34cec15b30758b76bc24243df97a8b8.zip",
           "https://github.com/bazelbuild/rules_cc/archive/8cded3e3c34cec15b30758b76bc24243df97a8b8.zip"
      ],
      strip_prefix = "rules_cc-8cded3e3c34cec15b30758b76bc24243df97a8b8",
      sha256 = "5e398077e7aa9fee3fd8d2699c90406b331ff2552d355a2aef2b692874e88704",
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
      name = "com_google_absl",  # 2020-10-29T16:51:15Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/e9b9e38f67a008d66133535a72ada843bd66013f.zip",
           "https://github.com/abseil/abseil-cpp/archive/e9b9e38f67a008d66133535a72ada843bd66013f.zip"
      ],
      strip_prefix = "abseil-cpp-e9b9e38f67a008d66133535a72ada843bd66013f",
      sha256 = "49c93740b3b09f73cd2f10da778ea4129d59733085393f458a4acd17774503fb",
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
      name = "com_github_google_benchmark",  # 2020-10-29T08:49:02Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/a9704c268dd2ed8bc65d8fc2880cb7a0ddd64d2c.zip",
           "https://github.com/google/benchmark/archive/a9704c268dd2ed8bc65d8fc2880cb7a0ddd64d2c.zip"
      ],
      strip_prefix = "benchmark-a9704c268dd2ed8bc65d8fc2880cb7a0ddd64d2c",
      sha256 = "2ad78d4d639f36b4bf36c5e4c64d36630ea2e1d2189fcacf89910539c9ac336f",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2020-10-29T16:55:52Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/e733e6aec0151625f7ad5aa5f585c688f6a51e78.zip",
           "https://github.com/google/tcmalloc/archive/e733e6aec0151625f7ad5aa5f585c688f6a51e78.zip"
      ],
      strip_prefix = "tcmalloc-e733e6aec0151625f7ad5aa5f585c688f6a51e78",
      sha256 = "891f06d85b4e6d89fbe97141c77e10a17f2a8689e5443b0eeed7217fc58b505b",
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
