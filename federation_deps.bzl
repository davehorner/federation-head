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
      name = "com_google_absl",  # 2020-06-05T00:17:52Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/a8b03d90e0afe03fefa16d4a871ece344a5d52ad.zip",
           "https://github.com/abseil/abseil-cpp/archive/a8b03d90e0afe03fefa16d4a871ece344a5d52ad.zip"
      ],
      strip_prefix = "abseil-cpp-a8b03d90e0afe03fefa16d4a871ece344a5d52ad",
      sha256 = "e8e3fe5abe6d73749e2d194724ce507cc13912401a2e57d172aac9c5565432b0",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2020-06-05T07:57:06Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/4fe018038f87675c083d0cfb6a6b57c274fb1753.zip",
           "https://github.com/google/googletest/archive/4fe018038f87675c083d0cfb6a6b57c274fb1753.zip"
      ],
      strip_prefix = "googletest-4fe018038f87675c083d0cfb6a6b57c274fb1753",
      sha256 = "2fa8f7e2355a9ec6259c8a5f3a038ea7aa661f196d302d5ca5813c11bbea41c6",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2020-06-05T08:40:34Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/4e88f582a908c69a40cc56d33c4ed6484f01ba24.zip",
           "https://github.com/google/benchmark/archive/4e88f582a908c69a40cc56d33c4ed6484f01ba24.zip"
      ],
      strip_prefix = "benchmark-4e88f582a908c69a40cc56d33c4ed6484f01ba24",
      sha256 = "46c050a3599d97987051905a6009185a9b642bb9306c62baadabad764f9e9a47",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2020-06-05T17:14:30Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/23003491a280b155f2c986151f6730b0ac26115e.zip",
           "https://github.com/google/tcmalloc/archive/23003491a280b155f2c986151f6730b0ac26115e.zip"
      ],
      strip_prefix = "tcmalloc-23003491a280b155f2c986151f6730b0ac26115e",
      sha256 = "0a988fcdbfbb2aecb5c8247c69e39e558dbf03bf6cb267baf41780b589a7f9ae",
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
