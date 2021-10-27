"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2021-10-26T21:16:20Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/f84656686987ce254481cc33efa3b6645d4254c3.zip",
           "https://github.com/bazelbuild/rules_cc/archive/f84656686987ce254481cc33efa3b6645d4254c3.zip"
      ],
      strip_prefix = "rules_cc-f84656686987ce254481cc33efa3b6645d4254c3",
      sha256 = "7e7b3ffb2cdda7488c53ac266b23fe7fbc3cc7d072f164cdf88ee2e20ebb076e",
    )

    # ********** rules_python *****************
    http_archive(
      name = "rules_python",  # 2021-10-26T17:03:08Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/7d092c09ba7ea2a1a477797e8e548184b0e4a0ed.zip",
           "https://github.com/bazelbuild/rules_python/archive/7d092c09ba7ea2a1a477797e8e548184b0e4a0ed.zip"
      ],
      strip_prefix = "rules_python-7d092c09ba7ea2a1a477797e8e548184b0e4a0ed",
      sha256 = "3f66a5057175ad5074820bd347b8fa206c2c55f667170a68c5255a972860f1c1",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2021-10-26T14:09:11Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/f70eadadd7767c3a97774b63c4c23981fa89af9f.zip",
           "https://github.com/abseil/abseil-cpp/archive/f70eadadd7767c3a97774b63c4c23981fa89af9f.zip"
      ],
      strip_prefix = "abseil-cpp-f70eadadd7767c3a97774b63c4c23981fa89af9f",
      sha256 = "e98873e70ed4c45d9c635e0160e88ad1b34dcfc7b604fc491b0d820c61ae2b16",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2021-10-13T16:28:20Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/16f637fbf4ffc3f7a01fa4eceb7906634565242f.zip",
           "https://github.com/google/googletest/archive/16f637fbf4ffc3f7a01fa4eceb7906634565242f.zip"
      ],
      strip_prefix = "googletest-16f637fbf4ffc3f7a01fa4eceb7906634565242f",
      sha256 = "002d540f947e5981f54ddaab476d87b113d2a14822f21a34dca30f24c9492a24",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2021-10-26T14:38:12Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/fca348296f3432f9a7d4d0b62bb62bc68859c1ca.zip",
           "https://github.com/google/benchmark/archive/fca348296f3432f9a7d4d0b62bb62bc68859c1ca.zip"
      ],
      strip_prefix = "benchmark-fca348296f3432f9a7d4d0b62bb62bc68859c1ca",
      sha256 = "fa52ea77e07c3661a21d27ade1ac135f99fc5755c95a5dbdf372e88230acb908",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2021-10-26T16:59:02Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/c4b538cbe2be0fde5ab47adeb91ed45d15129619.zip",
           "https://github.com/google/tcmalloc/archive/c4b538cbe2be0fde5ab47adeb91ed45d15129619.zip"
      ],
      strip_prefix = "tcmalloc-c4b538cbe2be0fde5ab47adeb91ed45d15129619",
      sha256 = "fb53d0d005921bee454f3332babea4c640f4fc9e22163dd7d58ac18f065f0303",
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
