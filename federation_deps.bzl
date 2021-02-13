"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2021-02-05T12:30:09Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/40548a2974f1aea06215272d9c2b47a14a24e556.zip",
           "https://github.com/bazelbuild/rules_cc/archive/40548a2974f1aea06215272d9c2b47a14a24e556.zip"
      ],
      strip_prefix = "rules_cc-40548a2974f1aea06215272d9c2b47a14a24e556",
      sha256 = "56ac9633c13d74cb71e0546f103ce1c58810e4a76aa8325da593ca4277908d72",
    )

    # ********** rules_python *****************
    http_archive(
      name = "rules_python",  # 2021-02-02T22:16:45Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/c7e068d38e2fec1d899e1c150e372f205c220e27.zip",
           "https://github.com/bazelbuild/rules_python/archive/c7e068d38e2fec1d899e1c150e372f205c220e27.zip"
      ],
      strip_prefix = "rules_python-c7e068d38e2fec1d899e1c150e372f205c220e27",
      sha256 = "4b6055b232bfdef4cbde1ea620a478c57b032e96527da3472c2b49dbc1e42048",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2021-02-13T03:19:06Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/143a27800eb35f4568b9be51647726281916aac9.zip",
           "https://github.com/abseil/abseil-cpp/archive/143a27800eb35f4568b9be51647726281916aac9.zip"
      ],
      strip_prefix = "abseil-cpp-143a27800eb35f4568b9be51647726281916aac9",
      sha256 = "5ec35586b685eea11f198bb6e75f870e37fde62d15b95a3897c37b2d0bbd9017",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2021-02-11T17:49:54Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/609281088cfefc76f9d0ce82e1ff6c30cc3591e5.zip",
           "https://github.com/google/googletest/archive/609281088cfefc76f9d0ce82e1ff6c30cc3591e5.zip"
      ],
      strip_prefix = "googletest-609281088cfefc76f9d0ce82e1ff6c30cc3591e5",
      sha256 = "5cf189eb6847b4f8fc603a3ffff3b0771c08eec7dd4bd961bfd45477dd13eb73",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2021-02-12T10:30:26Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/ea5a5bbff491fd625c6e3458f6edd680b8bd5452.zip",
           "https://github.com/google/benchmark/archive/ea5a5bbff491fd625c6e3458f6edd680b8bd5452.zip"
      ],
      strip_prefix = "benchmark-ea5a5bbff491fd625c6e3458f6edd680b8bd5452",
      sha256 = "60b6f2edfcf944abeffd97b2edd93bae138d5e1cb91279efc1d0fda525ccc021",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2021-02-11T15:17:58Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/3cc5f7a36137d8155b882b5171de803b61410c8c.zip",
           "https://github.com/google/tcmalloc/archive/3cc5f7a36137d8155b882b5171de803b61410c8c.zip"
      ],
      strip_prefix = "tcmalloc-3cc5f7a36137d8155b882b5171de803b61410c8c",
      sha256 = "181a5359f474b352d2ec2b6ef8877cc80355d4477be2ebd96f36eeaf7344ad58",
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
