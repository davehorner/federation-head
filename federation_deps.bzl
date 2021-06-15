"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2021-06-07T16:41:49Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/daf6ace7cfeacd6a83e9ff2ed659f416537b6c74.zip",
           "https://github.com/bazelbuild/rules_cc/archive/daf6ace7cfeacd6a83e9ff2ed659f416537b6c74.zip"
      ],
      strip_prefix = "rules_cc-daf6ace7cfeacd6a83e9ff2ed659f416537b6c74",
      sha256 = "b295cad8c5899e371dde175079c0a2cdc0151f5127acc92366a8c986beb95c76",
    )

    # ********** rules_python *****************
    http_archive(
      name = "rules_python",  # 2021-06-09T02:08:31Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/f1b6b742254ec11f9e7bd6bff19ad2b327107a45.zip",
           "https://github.com/bazelbuild/rules_python/archive/f1b6b742254ec11f9e7bd6bff19ad2b327107a45.zip"
      ],
      strip_prefix = "rules_python-f1b6b742254ec11f9e7bd6bff19ad2b327107a45",
      sha256 = "e7e59592d5303870bd517a962882e5b3cfbaea10c03f1ef14f7e3715c217e94c",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2021-06-10T21:13:58Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/311bbd2e50ea35e921a08186840d3b6ca279e880.zip",
           "https://github.com/abseil/abseil-cpp/archive/311bbd2e50ea35e921a08186840d3b6ca279e880.zip"
      ],
      strip_prefix = "abseil-cpp-311bbd2e50ea35e921a08186840d3b6ca279e880",
      sha256 = "8a072b6b759b35f13dcb0cc76d07fce616b64ed59a0a124f485529246249f65b",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2021-06-11T17:42:26Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/e2239ee6043f73722e7aa812a459f54a28552929.zip",
           "https://github.com/google/googletest/archive/e2239ee6043f73722e7aa812a459f54a28552929.zip"
      ],
      strip_prefix = "googletest-e2239ee6043f73722e7aa812a459f54a28552929",
      sha256 = "8daa1a71395892f7c1ec5f7cb5b099a02e606be720d62f1a6a98f8f8898ec826",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2021-06-09T08:52:12Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/e991355c02b93fe17713efe04cbc2e278e00fdbd.zip",
           "https://github.com/google/benchmark/archive/e991355c02b93fe17713efe04cbc2e278e00fdbd.zip"
      ],
      strip_prefix = "benchmark-e991355c02b93fe17713efe04cbc2e278e00fdbd",
      sha256 = "c4927c4c126fe030ee98938650e60a7ba7e689c726785f9743944ab56fd79595",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2021-06-11T22:52:02Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/f76cb6c1570abb744234fa3dafec2d4062e2c64c.zip",
           "https://github.com/google/tcmalloc/archive/f76cb6c1570abb744234fa3dafec2d4062e2c64c.zip"
      ],
      strip_prefix = "tcmalloc-f76cb6c1570abb744234fa3dafec2d4062e2c64c",
      sha256 = "2eb85af9107457db5a2524e8a2494d93f8203f8c7abbcbed105960108baed493",
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
    # ********** rules_fuzzing (pinned to 0.1.3) *****************
    http_archive(
      name = "rules_fuzzing",
      sha256 = "94f25c7a18db0502ace26a3ef7d0a25fd7c195c4e9770ddd1b1ec718e8936091",
      strip_prefix = "rules_fuzzing-0.1.3",
      # Use the same URL twice to trick bazel into re-trying if connection fails
      urls = [
          "https://github.com/bazelbuild/rules_fuzzing/archive/v0.1.3.zip",
          "https://github.com/bazelbuild/rules_fuzzing/archive/v0.1.3.zip"
      ],
    )
