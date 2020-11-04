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
      name = "com_google_absl",  # 2020-11-03T19:19:50Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/e9e9b9fc74388482ab748cad33cd9732a2b75d31.zip",
           "https://github.com/abseil/abseil-cpp/archive/e9e9b9fc74388482ab748cad33cd9732a2b75d31.zip"
      ],
      strip_prefix = "abseil-cpp-e9e9b9fc74388482ab748cad33cd9732a2b75d31",
      sha256 = "be5e2514d7319ec67fa4d8691579736e18c2267c501db2a13aeb0423c43c960a",
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
      name = "com_github_google_benchmark",  # 2020-11-03T09:08:46Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/d9abf017632be4a00b92cf4289539b353fcea5d2.zip",
           "https://github.com/google/benchmark/archive/d9abf017632be4a00b92cf4289539b353fcea5d2.zip"
      ],
      strip_prefix = "benchmark-d9abf017632be4a00b92cf4289539b353fcea5d2",
      sha256 = "6b9aef1b984ebd8ad6d0e2e20a71a744f6564d05fa4ccb33065841b0e9c85d48",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2020-11-04T06:57:03Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/9f385356c34d4fc11f76a000b609e2b446c20667.zip",
           "https://github.com/google/tcmalloc/archive/9f385356c34d4fc11f76a000b609e2b446c20667.zip"
      ],
      strip_prefix = "tcmalloc-9f385356c34d4fc11f76a000b609e2b446c20667",
      sha256 = "714a2e6867aaa9e5ec62e7a44957b4a899c99fe3acfb01faa063ac40ac17978a",
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
