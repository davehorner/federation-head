"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2020-11-11T13:29:11Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/b1c40e1de81913a3c40e5948f78719c28152486d.zip",
           "https://github.com/bazelbuild/rules_cc/archive/b1c40e1de81913a3c40e5948f78719c28152486d.zip"
      ],
      strip_prefix = "rules_cc-b1c40e1de81913a3c40e5948f78719c28152486d",
      sha256 = "d0c573b94a6ef20ef6ff20154a23d0efcb409fb0e1ff0979cec318dfe42f0cdd",
    )

    # ********** rules_python *****************
    http_archive(
      name = "rules_python",  # 2021-01-24T08:07:04Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/5eb0de810f76f16ab8a909953c1b235051536686.zip",
           "https://github.com/bazelbuild/rules_python/archive/5eb0de810f76f16ab8a909953c1b235051536686.zip"
      ],
      strip_prefix = "rules_python-5eb0de810f76f16ab8a909953c1b235051536686",
      sha256 = "879acfb87b8cd005646f46e4a3d20a9558c9dd31fca137be24d6b5d5d1269ae0",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2021-01-25T17:52:34Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/e4e2e57e1a4308cf4ba008d9c1f2d478b3349201.zip",
           "https://github.com/abseil/abseil-cpp/archive/e4e2e57e1a4308cf4ba008d9c1f2d478b3349201.zip"
      ],
      strip_prefix = "abseil-cpp-e4e2e57e1a4308cf4ba008d9c1f2d478b3349201",
      sha256 = "22f571ae4e4d61a5f19f0c8e87dec40cc666c2be0e6bd62944d572cbe8fb41aa",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2021-01-15T20:54:03Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/d128fc8252d53baad6ea456fa08cbf9028d255f4.zip",
           "https://github.com/google/googletest/archive/d128fc8252d53baad6ea456fa08cbf9028d255f4.zip"
      ],
      strip_prefix = "googletest-d128fc8252d53baad6ea456fa08cbf9028d255f4",
      sha256 = "759cd1e778dea67ee2dcb0910d308d34dd8cc211043e301937419912e0f46e56",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2021-01-05T09:54:04Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/8df87f6c879cbcabd17c5cfcec7b89687df36953.zip",
           "https://github.com/google/benchmark/archive/8df87f6c879cbcabd17c5cfcec7b89687df36953.zip"
      ],
      strip_prefix = "benchmark-8df87f6c879cbcabd17c5cfcec7b89687df36953",
      sha256 = "da89d07439a4ba0e649a3d957af639db15b3d2ee65731a4b58e674a59f82b893",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2021-01-25T21:08:34Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/b05cd9c37abc59c5db4040f02fb687fec6d87885.zip",
           "https://github.com/google/tcmalloc/archive/b05cd9c37abc59c5db4040f02fb687fec6d87885.zip"
      ],
      strip_prefix = "tcmalloc-b05cd9c37abc59c5db4040f02fb687fec6d87885",
      sha256 = "c3608b170fe6e250755ae9280ef49455e46e980e14e5e9366c213dbf9f4c56f8",
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
