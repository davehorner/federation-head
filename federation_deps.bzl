"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2020-08-18T17:57:24Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/02becfef8bc97bda4f9bb64e153f1b0671aec4ba.zip",
           "https://github.com/bazelbuild/rules_cc/archive/02becfef8bc97bda4f9bb64e153f1b0671aec4ba.zip"
      ],
      strip_prefix = "rules_cc-02becfef8bc97bda4f9bb64e153f1b0671aec4ba",
      sha256 = "fa42eade3cad9190c2a6286a6213f07f1a83d26d9f082d56f526d014c6ea7444",
    )

    # ********** rules_python *****************
    http_archive(
      name = "rules_python",  # 2020-09-08T11:29:42Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/3baa2660569a76898d0f520c73b299ea39b6374d.zip",
           "https://github.com/bazelbuild/rules_python/archive/3baa2660569a76898d0f520c73b299ea39b6374d.zip"
      ],
      strip_prefix = "rules_python-3baa2660569a76898d0f520c73b299ea39b6374d",
      sha256 = "7122bef3e3ac44d5dd697a1411e2861dd7437000bc435d4be35e42589ebb9f9f",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2020-09-08T18:23:20Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/3c8b5d7587dc8ecf730ce9996c89e156e408c3ed.zip",
           "https://github.com/abseil/abseil-cpp/archive/3c8b5d7587dc8ecf730ce9996c89e156e408c3ed.zip"
      ],
      strip_prefix = "abseil-cpp-3c8b5d7587dc8ecf730ce9996c89e156e408c3ed",
      sha256 = "2adc8d02700923164a1128afd36d245ac6fd9fe4a10ee936146b89cd9e4b82a5",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2020-09-08T16:41:46Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/5f8fcf4aa8ce30dfe76f9c9db97d2da4ce3737ef.zip",
           "https://github.com/google/googletest/archive/5f8fcf4aa8ce30dfe76f9c9db97d2da4ce3737ef.zip"
      ],
      strip_prefix = "googletest-5f8fcf4aa8ce30dfe76f9c9db97d2da4ce3737ef",
      sha256 = "de3e85d3f6c22777c8551ec1f79e04cbbca6dce8ab38871e18439c0477fe320a",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2020-09-03T09:59:15Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/4751550871a4765c027d39680b842f590e1192b2.zip",
           "https://github.com/google/benchmark/archive/4751550871a4765c027d39680b842f590e1192b2.zip"
      ],
      strip_prefix = "benchmark-4751550871a4765c027d39680b842f590e1192b2",
      sha256 = "a7c76f0ba74a963cb2c764dd513e53b8d09334c9816be916395e359acdfdf08a",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2020-09-08T16:49:04Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/9ad8adb52861fb34ec8c95e6d27e38ece8c7760c.zip",
           "https://github.com/google/tcmalloc/archive/9ad8adb52861fb34ec8c95e6d27e38ece8c7760c.zip"
      ],
      strip_prefix = "tcmalloc-9ad8adb52861fb34ec8c95e6d27e38ece8c7760c",
      sha256 = "1403be59acd34dd0a5a14d6fbb3553a28b391e75e68525f1fd3bfa880f27874d",
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
