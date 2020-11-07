"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2020-11-02T21:19:59Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/991eb349bf648b89f7d039a2602d337c85479534.zip",
           "https://github.com/bazelbuild/rules_cc/archive/991eb349bf648b89f7d039a2602d337c85479534.zip"
      ],
      strip_prefix = "rules_cc-991eb349bf648b89f7d039a2602d337c85479534",
      sha256 = "befd0bbf3df9b8104503f4f236da0529a0c91b228f2d9f4816565faf71831e1f",
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
      name = "com_google_absl",  # 2020-11-05T19:17:56Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/e96d49687d9c078f2d47356b6723c3b5715493f7.zip",
           "https://github.com/abseil/abseil-cpp/archive/e96d49687d9c078f2d47356b6723c3b5715493f7.zip"
      ],
      strip_prefix = "abseil-cpp-e96d49687d9c078f2d47356b6723c3b5715493f7",
      sha256 = "962a6373372d08b7d8fb767ea0cde08d6412db97ec9fe7682190b6a8370f3d16",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2020-11-06T18:23:55Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/d89b36302116233b8c6377e6e891083f41ee51c5.zip",
           "https://github.com/google/googletest/archive/d89b36302116233b8c6377e6e891083f41ee51c5.zip"
      ],
      strip_prefix = "googletest-d89b36302116233b8c6377e6e891083f41ee51c5",
      sha256 = "4a6f634652148b3f9f1f35955af66c48f6ef085599e3ca3913049ff662d43a16",
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
      name = "com_github_google_tcmalloc",  # 2020-11-05T18:00:20Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/d8c12dd59d6728124280a0554e8822f7155f4128.zip",
           "https://github.com/google/tcmalloc/archive/d8c12dd59d6728124280a0554e8822f7155f4128.zip"
      ],
      strip_prefix = "tcmalloc-d8c12dd59d6728124280a0554e8822f7155f4128",
      sha256 = "da2842313bf75eb2b58af1ab7a13c3f7fe0c5ba3bc23cef75ee241779a23d1a3",
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
