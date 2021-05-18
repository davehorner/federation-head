"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2021-05-14T14:51:14Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/68cb652a71e7e7e2858c50593e5a9e3b94e5b9a9.zip",
           "https://github.com/bazelbuild/rules_cc/archive/68cb652a71e7e7e2858c50593e5a9e3b94e5b9a9.zip"
      ],
      strip_prefix = "rules_cc-68cb652a71e7e7e2858c50593e5a9e3b94e5b9a9",
      sha256 = "1e19e9a3bc3d4ee91d7fcad00653485ee6c798efbbf9588d40b34cbfbded143d",
    )

    # ********** rules_python *****************
    http_archive(
      name = "rules_python",  # 2021-05-17T00:24:16Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/ed6cc8f2c3692a6a7f013ff8bc185ba77eb9b4d2.zip",
           "https://github.com/bazelbuild/rules_python/archive/ed6cc8f2c3692a6a7f013ff8bc185ba77eb9b4d2.zip"
      ],
      strip_prefix = "rules_python-ed6cc8f2c3692a6a7f013ff8bc185ba77eb9b4d2",
      sha256 = "98b3c592faea9636ac8444bfd9de7f3fb4c60590932d6e6ac5946e3f8dbd5ff6",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2021-05-13T19:59:01Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/aad2c8a3966424bbaa2f26027d104d17f9c1c1ae.zip",
           "https://github.com/abseil/abseil-cpp/archive/aad2c8a3966424bbaa2f26027d104d17f9c1c1ae.zip"
      ],
      strip_prefix = "abseil-cpp-aad2c8a3966424bbaa2f26027d104d17f9c1c1ae",
      sha256 = "63d606fc19c56aa7b20c7c398781a40ae1f8321fab43be230b1eb46dbbee77f7",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2021-05-13T19:08:57Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/662fe38e44900c007eccb65a5d2ea19df7bd520e.zip",
           "https://github.com/google/googletest/archive/662fe38e44900c007eccb65a5d2ea19df7bd520e.zip"
      ],
      strip_prefix = "googletest-662fe38e44900c007eccb65a5d2ea19df7bd520e",
      sha256 = "a5c96eaf7a6f11ca84721bbbcac9a036dbb397a278f346d1b4d69b834d4f066f",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2021-05-11T11:56:00Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/7d0d9061d83b663ce05d9de5da3d5865a3845b79.zip",
           "https://github.com/google/benchmark/archive/7d0d9061d83b663ce05d9de5da3d5865a3845b79.zip"
      ],
      strip_prefix = "benchmark-7d0d9061d83b663ce05d9de5da3d5865a3845b79",
      sha256 = "a07789754963e3ea3a1e13fed3a4d48fac0c5f7f749c5065f6c30cd2c1529661",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2021-05-13T15:36:31Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/21eabdde8d9c4ce21e4785d7a7af71a6eaec2d1c.zip",
           "https://github.com/google/tcmalloc/archive/21eabdde8d9c4ce21e4785d7a7af71a6eaec2d1c.zip"
      ],
      strip_prefix = "tcmalloc-21eabdde8d9c4ce21e4785d7a7af71a6eaec2d1c",
      sha256 = "07c9fe1488afaa6cf91dd25f49cbaa8f6c35ada04530d5caa60d9abdfc0ba8cc",
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
