"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2021-10-07T16:39:32Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/8f861e884c0003554b39fd0358293bbde3923ecd.zip",
           "https://github.com/bazelbuild/rules_cc/archive/8f861e884c0003554b39fd0358293bbde3923ecd.zip"
      ],
      strip_prefix = "rules_cc-8f861e884c0003554b39fd0358293bbde3923ecd",
      sha256 = "8a726c5682bbab9ff4c1afaced45a446129d5a816555e234ff987dcc297a0f66",
    )

    # ********** rules_python *****************
    http_archive(
      name = "rules_python",  # 2021-10-18T22:17:17Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/9b765cb92fad671669136e33795848a88e60dae2.zip",
           "https://github.com/bazelbuild/rules_python/archive/9b765cb92fad671669136e33795848a88e60dae2.zip"
      ],
      strip_prefix = "rules_python-9b765cb92fad671669136e33795848a88e60dae2",
      sha256 = "ab85df252a874749602633ebf79ebde2a6db4c0ded5dcb5075694fdea560c053",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2021-10-18T19:06:33Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/a2f52e1177b87bdc747f8d0b7745c8f967bceb9d.zip",
           "https://github.com/abseil/abseil-cpp/archive/a2f52e1177b87bdc747f8d0b7745c8f967bceb9d.zip"
      ],
      strip_prefix = "abseil-cpp-a2f52e1177b87bdc747f8d0b7745c8f967bceb9d",
      sha256 = "0340e6eb4954fa7218f6be7546ff2b9d4eac1eeb76890bd292a3b2b25731332c",
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
      name = "com_github_google_benchmark",  # 2021-10-18T15:29:35Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/7fad964a94da9364af1b31acae6d092d40591cff.zip",
           "https://github.com/google/benchmark/archive/7fad964a94da9364af1b31acae6d092d40591cff.zip"
      ],
      strip_prefix = "benchmark-7fad964a94da9364af1b31acae6d092d40591cff",
      sha256 = "72ff82dba7242eb13e8291b80ef0ef40fec89c05ba59a254c43c2eb026b3431f",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2021-10-18T18:51:08Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/898853d807e8e531e32cd2cd45182a3a0985429a.zip",
           "https://github.com/google/tcmalloc/archive/898853d807e8e531e32cd2cd45182a3a0985429a.zip"
      ],
      strip_prefix = "tcmalloc-898853d807e8e531e32cd2cd45182a3a0985429a",
      sha256 = "72b10579ba7867c7bf8ba94b228989e704f585a42346846715e2033bdca89cfc",
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
