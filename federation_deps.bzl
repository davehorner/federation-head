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
      name = "com_google_absl",  # 2020-09-16T10:16:20Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/c1ae0a497586edd38b0261846b8e4afdcfa30f0b.zip",
           "https://github.com/abseil/abseil-cpp/archive/c1ae0a497586edd38b0261846b8e4afdcfa30f0b.zip"
      ],
      strip_prefix = "abseil-cpp-c1ae0a497586edd38b0261846b8e4afdcfa30f0b",
      sha256 = "d009f025b042fd93920d30f7a32f376bd745c35a71b7376b936192d204892616",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2020-09-10T23:09:30Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/a4ab0abb93620ce26efad9de9296b73b16e88588.zip",
           "https://github.com/google/googletest/archive/a4ab0abb93620ce26efad9de9296b73b16e88588.zip"
      ],
      strip_prefix = "googletest-a4ab0abb93620ce26efad9de9296b73b16e88588",
      sha256 = "c5f7f9f62fa9b2893b2b59d33e943bd3487b71c6f7bd9cd143473b49a37b542d",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2020-09-12T15:56:43Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/7efada2dac40e9f6e5c5f76e0c4a78c85c0a3af5.zip",
           "https://github.com/google/benchmark/archive/7efada2dac40e9f6e5c5f76e0c4a78c85c0a3af5.zip"
      ],
      strip_prefix = "benchmark-7efada2dac40e9f6e5c5f76e0c4a78c85c0a3af5",
      sha256 = "736506de96a1475885ccc4ed104b071ee8bb9727c899da40bbebf82ae379900a",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2020-09-16T18:19:42Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/d1311bf409db47c3441d3de6ea07d768c6551dec.zip",
           "https://github.com/google/tcmalloc/archive/d1311bf409db47c3441d3de6ea07d768c6551dec.zip"
      ],
      strip_prefix = "tcmalloc-d1311bf409db47c3441d3de6ea07d768c6551dec",
      sha256 = "20d5867991e0c6e0579d6b8d37d50683946c34ea63b3508551d56ace88878c7f",
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
