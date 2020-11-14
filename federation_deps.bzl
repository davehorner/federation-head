"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2020-11-11T13:29:11Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/b1c40e1de81913a3c40e5948f78719c28152486d.zip",
           "https://github.com/bazelbuild/rules_cc/archive/b1c40e1de81913a3c40e5948f78719c28152486d.zip"
      ],
      strip_prefix = "rules_cc-b1c40e1de81913a3c40e5948f78719c28152486d",
      sha256 = "d0c573b94a6ef20ef6ff20154a23d0efcb409fb0e1ff0979cec318dfe42f0cdd",
    )

    # ********** rules_python *****************
    http_archive(
      name = "rules_python",  # 2020-11-13T03:12:22Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/aa27a3fe7e1a6c73028effe1c78e87d2e7fab641.zip",
           "https://github.com/bazelbuild/rules_python/archive/aa27a3fe7e1a6c73028effe1c78e87d2e7fab641.zip"
      ],
      strip_prefix = "rules_python-aa27a3fe7e1a6c73028effe1c78e87d2e7fab641",
      sha256 = "e7dcbceb163a5b45489f49629242a78deaff8fcbebfe5970fb7acf5a16dbe2b8",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2020-11-13T17:49:04Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/0bbebc85cd8dbd382b10698b3cefe9a01e88e76f.zip",
           "https://github.com/abseil/abseil-cpp/archive/0bbebc85cd8dbd382b10698b3cefe9a01e88e76f.zip"
      ],
      strip_prefix = "abseil-cpp-0bbebc85cd8dbd382b10698b3cefe9a01e88e76f",
      sha256 = "541f07bca4fc7ec094cf5372f7902aacf307c0b7e7e202613e7c33d6fe757be4",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2020-11-13T15:57:24Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/9dce5e5d878176dc0054ef381f5c6e705f43ef99.zip",
           "https://github.com/google/googletest/archive/9dce5e5d878176dc0054ef381f5c6e705f43ef99.zip"
      ],
      strip_prefix = "googletest-9dce5e5d878176dc0054ef381f5c6e705f43ef99",
      sha256 = "b63b397efd4b7a89266482a8ba5e2f2622a9e5aaedf4605696f210536601e7e6",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2020-11-06T09:10:04Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/348aa2c964494b5947c0e7f96b82c1fe844d684f.zip",
           "https://github.com/google/benchmark/archive/348aa2c964494b5947c0e7f96b82c1fe844d684f.zip"
      ],
      strip_prefix = "benchmark-348aa2c964494b5947c0e7f96b82c1fe844d684f",
      sha256 = "6e0657e854b2634b33ef662526c5a0d5a1925149a714eda278e5bb629a85947c",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2020-11-13T16:18:50Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/71eac4f3640e0b3ea31921cd2587543b6cbdfd2a.zip",
           "https://github.com/google/tcmalloc/archive/71eac4f3640e0b3ea31921cd2587543b6cbdfd2a.zip"
      ],
      strip_prefix = "tcmalloc-71eac4f3640e0b3ea31921cd2587543b6cbdfd2a",
      sha256 = "d73508400684711f6bd0bfe38a1507b53e9e577697a5bccbc4ee510faf918d8d",
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
