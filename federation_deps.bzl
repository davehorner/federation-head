"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2020-11-09T10:52:23Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/7bd0e49cfb2237086df89dca9e6ba7a5a5dfb36d.zip",
           "https://github.com/bazelbuild/rules_cc/archive/7bd0e49cfb2237086df89dca9e6ba7a5a5dfb36d.zip"
      ],
      strip_prefix = "rules_cc-7bd0e49cfb2237086df89dca9e6ba7a5a5dfb36d",
      sha256 = "c855aad5f1d125104cfa8e8e7590205bc35c5e8418771ffd2cfde0922ef31775",
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
      name = "com_google_googletest",  # 2020-11-09T20:43:33Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/fbef0711cfce7b8f149aac773d30ae48ce3e166c.zip",
           "https://github.com/google/googletest/archive/fbef0711cfce7b8f149aac773d30ae48ce3e166c.zip"
      ],
      strip_prefix = "googletest-fbef0711cfce7b8f149aac773d30ae48ce3e166c",
      sha256 = "876ce116c6be982f61fe79aed7dcb44e709517ffb1644d155630ebc0c5a6acfa",
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
      name = "com_github_google_tcmalloc",  # 2020-11-09T21:41:20Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/a0e02e29c61eae1aff2b8c44e72f1c93add7d54f.zip",
           "https://github.com/google/tcmalloc/archive/a0e02e29c61eae1aff2b8c44e72f1c93add7d54f.zip"
      ],
      strip_prefix = "tcmalloc-a0e02e29c61eae1aff2b8c44e72f1c93add7d54f",
      sha256 = "7f479a369b75a39fb965ea766253af9ab93c4fb2509ccacbd559167ae3a9e6a8",
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
