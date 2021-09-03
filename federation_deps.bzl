"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2021-08-13T08:53:39Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/d66a13e2a01630afcafc4ba411d83e291ecf02bd.zip",
           "https://github.com/bazelbuild/rules_cc/archive/d66a13e2a01630afcafc4ba411d83e291ecf02bd.zip"
      ],
      strip_prefix = "rules_cc-d66a13e2a01630afcafc4ba411d83e291ecf02bd",
      sha256 = "47a670ff6f1d4bb85eb2e15b52c818595cd392d06412da3159c3eeef8b3673da",
    )

    # ********** rules_python *****************
    http_archive(
      name = "rules_python",  # 2021-08-31T03:37:13Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/9a10fdb84911aad767acb60b603c62108f3228f4.zip",
           "https://github.com/bazelbuild/rules_python/archive/9a10fdb84911aad767acb60b603c62108f3228f4.zip"
      ],
      strip_prefix = "rules_python-9a10fdb84911aad767acb60b603c62108f3228f4",
      sha256 = "2e61169101133631ad4573d65266c1e1f9c1127c9a0a07802f8ef4ff3d13891b",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2021-09-01T21:37:10Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/4bb9e39c88854dbf466688177257d11810719853.zip",
           "https://github.com/abseil/abseil-cpp/archive/4bb9e39c88854dbf466688177257d11810719853.zip"
      ],
      strip_prefix = "abseil-cpp-4bb9e39c88854dbf466688177257d11810719853",
      sha256 = "4cad653c8d6a2c0a551bae3114e2208bf80b0e7d54a4f094f3f5e967c1dab45b",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2021-08-26T18:30:09Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/955c7f837efad184ec63e771c42542d37545eaef.zip",
           "https://github.com/google/googletest/archive/955c7f837efad184ec63e771c42542d37545eaef.zip"
      ],
      strip_prefix = "googletest-955c7f837efad184ec63e771c42542d37545eaef",
      sha256 = "1129a3ff6d81d1b4cd080784e6cb539a9b34d8309831ae4560804337b8cfd27c",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2021-09-02T22:15:09Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/e7a8415876e96acfcc05cedc0cead1363bd1ae68.zip",
           "https://github.com/google/benchmark/archive/e7a8415876e96acfcc05cedc0cead1363bd1ae68.zip"
      ],
      strip_prefix = "benchmark-e7a8415876e96acfcc05cedc0cead1363bd1ae68",
      sha256 = "da26f6a6ea4ea8ca98c19b3cddfbb590541296649f713362ccbd0b6f2e5b6fd9",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2021-09-02T19:02:00Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/fdc9fe9839ac17691b1d38f798ad12103866654b.zip",
           "https://github.com/google/tcmalloc/archive/fdc9fe9839ac17691b1d38f798ad12103866654b.zip"
      ],
      strip_prefix = "tcmalloc-fdc9fe9839ac17691b1d38f798ad12103866654b",
      sha256 = "4f3b2305c931d127167e7fdb209aed9d38d8aa502f271086c5539c07f26d8b24",
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
    # ********** rules_fuzzing (pinned to 0.1.3) *****************
    http_archive(
      name = "rules_fuzzing",
      sha256 = "94f25c7a18db0502ace26a3ef7d0a25fd7c195c4e9770ddd1b1ec718e8936091",
      strip_prefix = "rules_fuzzing-0.1.3",
      # Use the same URL twice to trick bazel into re-trying if connection fails
      urls = [
          "https://github.com/bazelbuild/rules_fuzzing/archive/v0.1.3.zip",
          "https://github.com/bazelbuild/rules_fuzzing/archive/v0.1.3.zip"
      ],
    )
