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
      name = "com_google_absl",  # 2021-06-18T13:50:02Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/60be12ed9822078970f05f3c560324184302df6b.zip",
           "https://github.com/abseil/abseil-cpp/archive/60be12ed9822078970f05f3c560324184302df6b.zip"
      ],
      strip_prefix = "abseil-cpp-60be12ed9822078970f05f3c560324184302df6b",
      sha256 = "a2837e9042e4adac18e9bbc25f18c2c5ada0c672bc1bbeb9c8769e98b05c6c4e",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2021-06-17T16:52:27Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/7153098229e88295f9655ff1d3b0e2fa9eada5f8.zip",
           "https://github.com/google/googletest/archive/7153098229e88295f9655ff1d3b0e2fa9eada5f8.zip"
      ],
      strip_prefix = "googletest-7153098229e88295f9655ff1d3b0e2fa9eada5f8",
      sha256 = "05e811175ab0652a4791f2db0fe4496a0dfccbc1cbc9222bc1de995680852aa4",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2021-06-18T16:31:47Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/62937f91b5c763a8e119d0c20c67b87bde8eff1c.zip",
           "https://github.com/google/benchmark/archive/62937f91b5c763a8e119d0c20c67b87bde8eff1c.zip"
      ],
      strip_prefix = "benchmark-62937f91b5c763a8e119d0c20c67b87bde8eff1c",
      sha256 = "39b17bae1023b4841fe0cf5282cbd95dada08becd98a8b6d61f90ad20e972efa",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2021-06-21T15:20:05Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/a8a232f3dc9c41196e06251e7164d0404f19cf49.zip",
           "https://github.com/google/tcmalloc/archive/a8a232f3dc9c41196e06251e7164d0404f19cf49.zip"
      ],
      strip_prefix = "tcmalloc-a8a232f3dc9c41196e06251e7164d0404f19cf49",
      sha256 = "caf0cd0e8db1c173b9de5e9c6877763b6110fee4f22688cf808736895d7f0477",
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
