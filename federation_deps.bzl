"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2020-07-28T15:17:49Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/1477dbab59b401daa94acedbeaefe79bf9112167.zip",
           "https://github.com/bazelbuild/rules_cc/archive/1477dbab59b401daa94acedbeaefe79bf9112167.zip"
      ],
      strip_prefix = "rules_cc-1477dbab59b401daa94acedbeaefe79bf9112167",
      sha256 = "98a6966d66b0533b19fc98e0f62862095facfc991521ffa5604f985b7d631b88",
    )

    # ********** rules_python *****************
    http_archive(
      name = "rules_python",  # 2020-07-20T01:25:59Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/0f8183b1cfa7e8afebfeeec5bcad75deb846613a.zip",
           "https://github.com/bazelbuild/rules_python/archive/0f8183b1cfa7e8afebfeeec5bcad75deb846613a.zip"
      ],
      strip_prefix = "rules_python-0f8183b1cfa7e8afebfeeec5bcad75deb846613a",
      sha256 = "70efb5f3f0671f76e41887e93793ab849430d8c267cb5ad7eb7b1f6b45e1cad8",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2020-07-27T19:43:11Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/d39fe6cd6f5eb72dc741f17d3a143a6a5a56538a.zip",
           "https://github.com/abseil/abseil-cpp/archive/d39fe6cd6f5eb72dc741f17d3a143a6a5a56538a.zip"
      ],
      strip_prefix = "abseil-cpp-d39fe6cd6f5eb72dc741f17d3a143a6a5a56538a",
      sha256 = "9bdfdcfb6ff4352f129fd26b39628a5107d436ec1b8bf8252658a47f4cb87872",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2020-07-28T18:22:08Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/18a9aeda7a8530d47c657a0b70ccef851f6e0195.zip",
           "https://github.com/google/googletest/archive/18a9aeda7a8530d47c657a0b70ccef851f6e0195.zip"
      ],
      strip_prefix = "googletest-18a9aeda7a8530d47c657a0b70ccef851f6e0195",
      sha256 = "bdd13ad8eaf2160432c1866f470e843959578231be824470260b305811238f9a",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2020-07-28T11:46:07Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/99010118805eb12ce56122f859c3604c2a427d05.zip",
           "https://github.com/google/benchmark/archive/99010118805eb12ce56122f859c3604c2a427d05.zip"
      ],
      strip_prefix = "benchmark-99010118805eb12ce56122f859c3604c2a427d05",
      sha256 = "d371e56ddaa6223184798774fe72d764b9a256ab08399f85d83de29d05276222",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2020-07-28T20:02:39Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/be792e246a8a592a5db11a2db2446d7d6b3f0cde.zip",
           "https://github.com/google/tcmalloc/archive/be792e246a8a592a5db11a2db2446d7d6b3f0cde.zip"
      ],
      strip_prefix = "tcmalloc-be792e246a8a592a5db11a2db2446d7d6b3f0cde",
      sha256 = "f10c3608463c4cbd48c39b5e2f86dba089b209979dbfa6e37c48686499abb6a0",
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
