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
      name = "rules_python",  # 2021-07-05T05:22:54Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/92567575fb2d4efa6f316e9cfe86c9be326955b8.zip",
           "https://github.com/bazelbuild/rules_python/archive/92567575fb2d4efa6f316e9cfe86c9be326955b8.zip"
      ],
      strip_prefix = "rules_python-92567575fb2d4efa6f316e9cfe86c9be326955b8",
      sha256 = "d6cf005a5c8a863bb9f986375698cd7dbce8701ffd4527b45670bfbb0416f017",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2021-07-05T22:10:27Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/58e042da9210710dc4ac3b320e48b54e2449521e.zip",
           "https://github.com/abseil/abseil-cpp/archive/58e042da9210710dc4ac3b320e48b54e2449521e.zip"
      ],
      strip_prefix = "abseil-cpp-58e042da9210710dc4ac3b320e48b54e2449521e",
      sha256 = "50635ba8027245126152f2a98c24db6d79f2f4434e6f271db5b5a64813184f8a",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2021-07-07T18:34:28Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/8306020a3e9eceafec65508868d7ab5c63bb41f7.zip",
           "https://github.com/google/googletest/archive/8306020a3e9eceafec65508868d7ab5c63bb41f7.zip"
      ],
      strip_prefix = "googletest-8306020a3e9eceafec65508868d7ab5c63bb41f7",
      sha256 = "cf8e496a802e6cb2fd02b09b84984f133eb2e79046265c2c6382c3c6df603d97",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2021-07-01T09:02:54Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/e451e50e9b8af453f076dec10bd6890847f1624e.zip",
           "https://github.com/google/benchmark/archive/e451e50e9b8af453f076dec10bd6890847f1624e.zip"
      ],
      strip_prefix = "benchmark-e451e50e9b8af453f076dec10bd6890847f1624e",
      sha256 = "1cb4b97a90aa1fd9c8e412a6bc29fc13fc140162a4a0db3811af40befd8c9ea5",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2021-07-08T02:43:08Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/5ebb24500a760649a2f16b6e6430232e9ae0689b.zip",
           "https://github.com/google/tcmalloc/archive/5ebb24500a760649a2f16b6e6430232e9ae0689b.zip"
      ],
      strip_prefix = "tcmalloc-5ebb24500a760649a2f16b6e6430232e9ae0689b",
      sha256 = "5d0f1b1fada4cd8e1cf0112bf5d7f34eb1d4d29918cf27a138d51d8b9b34b730",
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
