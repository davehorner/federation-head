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
      name = "com_google_absl",  # 2020-09-17T07:58:02Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/20feb1cdbd60a80fa1776d23adef1ad69d879110.zip",
           "https://github.com/abseil/abseil-cpp/archive/20feb1cdbd60a80fa1776d23adef1ad69d879110.zip"
      ],
      strip_prefix = "abseil-cpp-20feb1cdbd60a80fa1776d23adef1ad69d879110",
      sha256 = "1b8c656680d9488d54122bec0f141211dd6fe985a8e7a73084c96e60d78f8de0",
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
      name = "com_github_google_tcmalloc",  # 2020-09-18T17:51:26Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/a5f259c9419815f110cb487df2fce19d0fc70e29.zip",
           "https://github.com/google/tcmalloc/archive/a5f259c9419815f110cb487df2fce19d0fc70e29.zip"
      ],
      strip_prefix = "tcmalloc-a5f259c9419815f110cb487df2fce19d0fc70e29",
      sha256 = "c10346db12edd1edf4b99b083b33979ae02b3392eadfe879d50265cb4c36f7b4",
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
