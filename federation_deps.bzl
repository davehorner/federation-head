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
      name = "rules_python",  # 2020-05-23T05:50:58Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/708ed8679d7510a331ce9a7b910a2a056d24f7b1.zip",
           "https://github.com/bazelbuild/rules_python/archive/708ed8679d7510a331ce9a7b910a2a056d24f7b1.zip"
      ],
      strip_prefix = "rules_python-708ed8679d7510a331ce9a7b910a2a056d24f7b1",
      sha256 = "4ff0262d17870460ff505b59fcce75539414aeee6bf7526320db0a64914f03be",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2020-06-02T18:26:36Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/da3a87690c56f965705b6a233d25ba5a3294067c.zip",
           "https://github.com/abseil/abseil-cpp/archive/da3a87690c56f965705b6a233d25ba5a3294067c.zip"
      ],
      strip_prefix = "abseil-cpp-da3a87690c56f965705b6a233d25ba5a3294067c",
      sha256 = "096c32789ae1bf048fe95faa04e2f0736ce0427d5ae3dbe0d87c5d7441083597",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2020-06-03T00:45:20Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/cb44c86c1aaf31b26797728e93acc950c01dbd5b.zip",
           "https://github.com/google/googletest/archive/cb44c86c1aaf31b26797728e93acc950c01dbd5b.zip"
      ],
      strip_prefix = "googletest-cb44c86c1aaf31b26797728e93acc950c01dbd5b",
      sha256 = "7702a1578a818595b176b124ff82f2b27c7795079fc77cfa2c68e175d244d15e",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2020-05-28T08:33:06Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/6746c65bcfa49110bfe6642b8a47735637817be4.zip",
           "https://github.com/google/benchmark/archive/6746c65bcfa49110bfe6642b8a47735637817be4.zip"
      ],
      strip_prefix = "benchmark-6746c65bcfa49110bfe6642b8a47735637817be4",
      sha256 = "18a05de25f732d8ed81d9271a05ef38e752f2bd2db0578453528b8cd2f819acb",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2020-06-03T21:06:39Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/80c5e1cc093a74a59776e0d7404907bbb6083c2b.zip",
           "https://github.com/google/tcmalloc/archive/80c5e1cc093a74a59776e0d7404907bbb6083c2b.zip"
      ],
      strip_prefix = "tcmalloc-80c5e1cc093a74a59776e0d7404907bbb6083c2b",
      sha256 = "4371aa7dbe828bfefe9b69e8afe90539d2aa241c1830b898a8e92be657406ff8",
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
