"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2020-11-11T07:24:58Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/7bcfb53fe8efd29db32dd1293391da4a767df10c.zip",
           "https://github.com/bazelbuild/rules_cc/archive/7bcfb53fe8efd29db32dd1293391da4a767df10c.zip"
      ],
      strip_prefix = "rules_cc-7bcfb53fe8efd29db32dd1293391da4a767df10c",
      sha256 = "daabb7b4a5723ef0dbd7658451be799824a32953dfc3d22e205af6fc3b41674a",
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
      name = "com_google_absl",  # 2020-11-09T19:47:43Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/a4798817e824a5c45689933bc62338f3c7d6961b.zip",
           "https://github.com/abseil/abseil-cpp/archive/a4798817e824a5c45689933bc62338f3c7d6961b.zip"
      ],
      strip_prefix = "abseil-cpp-a4798817e824a5c45689933bc62338f3c7d6961b",
      sha256 = "3647ad4fe29dfc84d0dfc09070c0fcbb1196a00f0dd8fdf1d66fc4408755223f",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2020-11-10T20:22:27Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/035de8c7fde74a07190f20439169fdeb867c13ac.zip",
           "https://github.com/google/googletest/archive/035de8c7fde74a07190f20439169fdeb867c13ac.zip"
      ],
      strip_prefix = "googletest-035de8c7fde74a07190f20439169fdeb867c13ac",
      sha256 = "3eaf42596b963a37edfc1398e9f4e6abad206bfa7f55734e5ff05294d0cc15d5",
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
      name = "com_github_google_tcmalloc",  # 2020-11-10T18:08:47Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/d8dbc2d9ca3b13b3d1fd19ead1ec1fd6de3a3457.zip",
           "https://github.com/google/tcmalloc/archive/d8dbc2d9ca3b13b3d1fd19ead1ec1fd6de3a3457.zip"
      ],
      strip_prefix = "tcmalloc-d8dbc2d9ca3b13b3d1fd19ead1ec1fd6de3a3457",
      sha256 = "3677ef148dcc99a406d1cf6b346fe8ee6be88d3f56bc8212223715629c8d2a0a",
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
