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
      name = "com_google_absl",  # 2020-11-03T02:03:38Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/b8e890f951178876c4f6a370ee7025f838430f07.zip",
           "https://github.com/abseil/abseil-cpp/archive/b8e890f951178876c4f6a370ee7025f838430f07.zip"
      ],
      strip_prefix = "abseil-cpp-b8e890f951178876c4f6a370ee7025f838430f07",
      sha256 = "4ba82fb94da8850024210ece760ef756ad6715e4af38b990843b119d363caedc",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2020-11-03T03:26:39Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/fb98f7447e5d2e498d6458dcd5c888fdeaae82bc.zip",
           "https://github.com/google/googletest/archive/fb98f7447e5d2e498d6458dcd5c888fdeaae82bc.zip"
      ],
      strip_prefix = "googletest-fb98f7447e5d2e498d6458dcd5c888fdeaae82bc",
      sha256 = "a38e9ab8d2c8b7d31e0bd8281505fa46349b73ddb6fc2ff8ebe0647d93d2abf3",
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
      name = "com_github_google_tcmalloc",  # 2020-11-03T00:01:58Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/c111c6c8dc8d807b0521b50bdfc0bdf7f76c0cd5.zip",
           "https://github.com/google/tcmalloc/archive/c111c6c8dc8d807b0521b50bdfc0bdf7f76c0cd5.zip"
      ],
      strip_prefix = "tcmalloc-c111c6c8dc8d807b0521b50bdfc0bdf7f76c0cd5",
      sha256 = "8f4a721ddc7434ec03efc4a06f83e1dc14280748af14c04bc37197d4c1f62e46",
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
