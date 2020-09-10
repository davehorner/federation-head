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
      name = "com_github_google_benchmark",  # 2020-09-09T08:43:26Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/beb360d03e2a1a2673d9c2cf408c13b69fdb5627.zip",
           "https://github.com/google/benchmark/archive/beb360d03e2a1a2673d9c2cf408c13b69fdb5627.zip"
      ],
      strip_prefix = "benchmark-beb360d03e2a1a2673d9c2cf408c13b69fdb5627",
      sha256 = "dc1695c12afe7b2a8f7cdf881e9eac536c9870667d039196d4bfe09cedccbe7a",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2020-09-10T01:35:56Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/1ef6944a3a1fdb8df4d2b9ef7dcc15678ae7ef96.zip",
           "https://github.com/google/tcmalloc/archive/1ef6944a3a1fdb8df4d2b9ef7dcc15678ae7ef96.zip"
      ],
      strip_prefix = "tcmalloc-1ef6944a3a1fdb8df4d2b9ef7dcc15678ae7ef96",
      sha256 = "7e03d8c0755d3c450133e6ebdf4db7ed6dd180134e348cb8791ee6296bb0aefe",
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
