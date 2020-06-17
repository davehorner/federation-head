"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2020-06-03T07:53:38Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/5cbd3dfbd1613f71ef29bbb7b10310b81e272975.zip",
           "https://github.com/bazelbuild/rules_cc/archive/5cbd3dfbd1613f71ef29bbb7b10310b81e272975.zip"
      ],
      strip_prefix = "rules_cc-5cbd3dfbd1613f71ef29bbb7b10310b81e272975",
      sha256 = "d6775fe03da086dfe47c668f54e77e220aa6e601a66a4517eaf19fa1d9fda309",
    )

    # ********** rules_python *****************
    http_archive(
      name = "rules_python",  # 2020-06-12T14:45:24Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/c82a8cc1f44ba6e81c65e801b1ec3e4f3852359e.zip",
           "https://github.com/bazelbuild/rules_python/archive/c82a8cc1f44ba6e81c65e801b1ec3e4f3852359e.zip"
      ],
      strip_prefix = "rules_python-c82a8cc1f44ba6e81c65e801b1ec3e4f3852359e",
      sha256 = "877537a37b3c17cbd84cdc1d1892a22fa185b8298d3a1ab301c5dbff42480cf5",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2020-06-16T17:01:21Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/ccdbb5941f992fabda7eae3ce72f55efc17c826a.zip",
           "https://github.com/abseil/abseil-cpp/archive/ccdbb5941f992fabda7eae3ce72f55efc17c826a.zip"
      ],
      strip_prefix = "abseil-cpp-ccdbb5941f992fabda7eae3ce72f55efc17c826a",
      sha256 = "90a02ea66e3264b77db065c8241605d5ca900af018e771c7d72f9800fb4d2738",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2020-06-15T20:56:42Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/549c5d061e3c5ea4acffb43c92b048dd16812805.zip",
           "https://github.com/google/googletest/archive/549c5d061e3c5ea4acffb43c92b048dd16812805.zip"
      ],
      strip_prefix = "googletest-549c5d061e3c5ea4acffb43c92b048dd16812805",
      sha256 = "b29e3d79718467ae8988573cd57f5f63832b980e3a7ab44a0cde1a191fde833e",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2020-06-16T06:11:50Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/76efbcdd1b6ebbcee36d1482e0df2326b84669fb.zip",
           "https://github.com/google/benchmark/archive/76efbcdd1b6ebbcee36d1482e0df2326b84669fb.zip"
      ],
      strip_prefix = "benchmark-76efbcdd1b6ebbcee36d1482e0df2326b84669fb",
      sha256 = "8d5d04fc1252c7fa3a1f11f3297048a2f74d7cd29d9b5a2a98bdc89bfcec0442",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2020-06-17T02:25:53Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/32b547c5707bf5577f373ada381620d9eae25faa.zip",
           "https://github.com/google/tcmalloc/archive/32b547c5707bf5577f373ada381620d9eae25faa.zip"
      ],
      strip_prefix = "tcmalloc-32b547c5707bf5577f373ada381620d9eae25faa",
      sha256 = "299bb1c3e205e1be07cc0b44ccea9e22cee22d6740fc5fbdbc9694821efcc414",
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
