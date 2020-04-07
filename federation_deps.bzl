"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2020-03-12T18:08:12Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/34ca16f4aa4bf2a5d3e4747229202d6cb630ebab.zip",
           "https://github.com/bazelbuild/rules_cc/archive/34ca16f4aa4bf2a5d3e4747229202d6cb630ebab.zip"
      ],
      strip_prefix = "rules_cc-34ca16f4aa4bf2a5d3e4747229202d6cb630ebab",
      sha256 = "523c59bb3f16518679668594c8874da46872fde05c32ba246bc0a35ec292f8a6",
    )

    # ********** rules_python *****************
    http_archive(
      name = "rules_python",  # 2020-03-05T19:57:20Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/748aa53d7701e71101dfd15d800e100f6ff8e5d1.zip",
           "https://github.com/bazelbuild/rules_python/archive/748aa53d7701e71101dfd15d800e100f6ff8e5d1.zip"
      ],
      strip_prefix = "rules_python-748aa53d7701e71101dfd15d800e100f6ff8e5d1",
      sha256 = "d3e40ca3b7e00b72d2b1585e0b3396bcce50f0fc692e2b7c91d8b0dc471e3eaf",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2020-04-07T00:50:57Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/c01b9916e705dc067d4e3d219ef60b49277353bd.zip",
           "https://github.com/abseil/abseil-cpp/archive/c01b9916e705dc067d4e3d219ef60b49277353bd.zip"
      ],
      strip_prefix = "abseil-cpp-c01b9916e705dc067d4e3d219ef60b49277353bd",
      sha256 = "7a3b295ab462f3dffc25691ff0f6ff14adafa1180fad96a0506bc50a757eecc7",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2020-04-04T22:05:39Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/e3f0319d89f4cbf32993de595d984183b1a9fc57.zip",
           "https://github.com/google/googletest/archive/e3f0319d89f4cbf32993de595d984183b1a9fc57.zip"
      ],
      strip_prefix = "googletest-e3f0319d89f4cbf32993de595d984183b1a9fc57",
      sha256 = "363089f62b375e6a73b7149015e7fe92e50d124ab4e95ba062774c496d96f2fc",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2020-04-06T12:52:09Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/0ab2c2906b95f41dfa7b692ca4ab856e20ebd3d4.zip",
           "https://github.com/google/benchmark/archive/0ab2c2906b95f41dfa7b692ca4ab856e20ebd3d4.zip"
      ],
      strip_prefix = "benchmark-0ab2c2906b95f41dfa7b692ca4ab856e20ebd3d4",
      sha256 = "f957d87a99b9ef4695699e6c934d02ce16a36830712805325bbe76a6cf9927e6",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2020-04-04T00:17:19Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/3a78fb6b7378d2d7f8d1f057ea4025159303b855.zip",
           "https://github.com/google/tcmalloc/archive/3a78fb6b7378d2d7f8d1f057ea4025159303b855.zip"
      ],
      strip_prefix = "tcmalloc-3a78fb6b7378d2d7f8d1f057ea4025159303b855",
      sha256 = "d148192106d7a8293f85d99b516689b7c5ea3ce0afe8f127f3c64e1837efb70c",
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
