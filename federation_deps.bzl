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
      name = "rules_python",  # 2021-06-16T04:25:12Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/03c45235aeb0d734b7831cab0e3930de54baf489.zip",
           "https://github.com/bazelbuild/rules_python/archive/03c45235aeb0d734b7831cab0e3930de54baf489.zip"
      ],
      strip_prefix = "rules_python-03c45235aeb0d734b7831cab0e3930de54baf489",
      sha256 = "d8950167769e0ee0f842a0827f847b2c92052a376d178fbfaa4034114d27a158",
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
      name = "com_github_google_benchmark",  # 2021-06-15T12:28:55Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/5b7518482c92df72dfdaf257beaf6e7175fefd9a.zip",
           "https://github.com/google/benchmark/archive/5b7518482c92df72dfdaf257beaf6e7175fefd9a.zip"
      ],
      strip_prefix = "benchmark-5b7518482c92df72dfdaf257beaf6e7175fefd9a",
      sha256 = "c4650c49ebac202ccf47cc3b3f35d6b9a4c46ac68817104daa2ef757ff8a032c",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2021-06-15T22:10:00Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/6156d70e5b9f7fceb7dab1144630e0d62339722d.zip",
           "https://github.com/google/tcmalloc/archive/6156d70e5b9f7fceb7dab1144630e0d62339722d.zip"
      ],
      strip_prefix = "tcmalloc-6156d70e5b9f7fceb7dab1144630e0d62339722d",
      sha256 = "73ebd479b25a1968165bf444f52555e6149b0f97527d3e0ffee020351fbb6f9e",
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
