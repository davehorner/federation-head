"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2020-06-03T07:53:38Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/5cbd3dfbd1613f71ef29bbb7b10310b81e272975.zip",
           "https://github.com/bazelbuild/rules_cc/archive/5cbd3dfbd1613f71ef29bbb7b10310b81e272975.zip"
      ],
      strip_prefix = "rules_cc-5cbd3dfbd1613f71ef29bbb7b10310b81e272975",
      sha256 = "d6775fe03da086dfe47c668f54e77e220aa6e601a66a4517eaf19fa1d9fda309",
    )

    # ********** rules_python *****************
    http_archive(
      name = "rules_python",  # 2020-07-17T14:25:06Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/bc092e57ecab6d5dd3492668b6916e6c0da84955.zip",
           "https://github.com/bazelbuild/rules_python/archive/bc092e57ecab6d5dd3492668b6916e6c0da84955.zip"
      ],
      strip_prefix = "rules_python-bc092e57ecab6d5dd3492668b6916e6c0da84955",
      sha256 = "813e465815f837961c6d41040d76a6deeafdc012b7ee4584f959df13b6ae88c1",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2020-07-17T21:33:20Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/ea8a689cf5e71f31f96af78859eccc11161fa36a.zip",
           "https://github.com/abseil/abseil-cpp/archive/ea8a689cf5e71f31f96af78859eccc11161fa36a.zip"
      ],
      strip_prefix = "abseil-cpp-ea8a689cf5e71f31f96af78859eccc11161fa36a",
      sha256 = "d26b7f7a5775d542a9bc773f5ce509941d5a2d0a10aefe7fdbae215c78e3a2c3",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2020-07-15T18:09:43Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/a781fe29bcf73003559a3583167fe3d647518464.zip",
           "https://github.com/google/googletest/archive/a781fe29bcf73003559a3583167fe3d647518464.zip"
      ],
      strip_prefix = "googletest-a781fe29bcf73003559a3583167fe3d647518464",
      sha256 = "573a79fdf6dd97e8b0dcb52164e3b996f8e46a53fe53b640e81074ca5f5f411b",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2020-07-09T11:54:41Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/37177a84b7e8d33696ea1e1854513cb0de3b4dc3.zip",
           "https://github.com/google/benchmark/archive/37177a84b7e8d33696ea1e1854513cb0de3b4dc3.zip"
      ],
      strip_prefix = "benchmark-37177a84b7e8d33696ea1e1854513cb0de3b4dc3",
      sha256 = "cd5b852873c0d8fd60aba2bdb3ebc5187b484c18c72dc885d405e33198373bca",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2020-07-18T01:06:38Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/d9030f499340d679550575763e5ddb5af1783635.zip",
           "https://github.com/google/tcmalloc/archive/d9030f499340d679550575763e5ddb5af1783635.zip"
      ],
      strip_prefix = "tcmalloc-d9030f499340d679550575763e5ddb5af1783635",
      sha256 = "b25005b16ecb99a31c821c647875120930e33584a6d966a7b478bc5384e2a920",
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
