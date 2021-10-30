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
      name = "com_google_absl",  # 2021-10-29T19:51:54Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/022527c50e0e2bc937f9fa3c516e3e36cbba0845.zip",
           "https://github.com/abseil/abseil-cpp/archive/022527c50e0e2bc937f9fa3c516e3e36cbba0845.zip"
      ],
      strip_prefix = "abseil-cpp-022527c50e0e2bc937f9fa3c516e3e36cbba0845",
      sha256 = "10c04d2abd1602487735b322b048fb600027ee636cf4734a7ff17d876d6b0cb4",
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
      name = "com_github_google_benchmark",  # 2021-10-29T10:48:56Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/4f31803ebbf283e24602260e39e63a296d44b0f8.zip",
           "https://github.com/google/benchmark/archive/4f31803ebbf283e24602260e39e63a296d44b0f8.zip"
      ],
      strip_prefix = "benchmark-4f31803ebbf283e24602260e39e63a296d44b0f8",
      sha256 = "19729051d06953a1b9dd582682bdc45b490f5b741d6431b0b604d6e5e671ba1c",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2021-10-29T19:58:08Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/1e9265bbfda7240d121337444790dd507743cbf9.zip",
           "https://github.com/google/tcmalloc/archive/1e9265bbfda7240d121337444790dd507743cbf9.zip"
      ],
      strip_prefix = "tcmalloc-1e9265bbfda7240d121337444790dd507743cbf9",
      sha256 = "f8ba4d3cd689b03ccfa7c20f9cf8ca4abeecfa1849687f0ccb2c3bde0aaa5c52",
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
