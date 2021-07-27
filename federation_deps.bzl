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
      name = "rules_python",  # 2021-07-16T05:14:06Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/cd64466928a2cace1b8aa6d097c3ac31d35d4555.zip",
           "https://github.com/bazelbuild/rules_python/archive/cd64466928a2cace1b8aa6d097c3ac31d35d4555.zip"
      ],
      strip_prefix = "rules_python-cd64466928a2cace1b8aa6d097c3ac31d35d4555",
      sha256 = "ecf26c4116d033522212f91217e2c111d3bc814dc491f3fe112fdd7dc1559860",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2021-07-23T16:11:50Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/0ce3ca95fd56d1ff32ec6cec69a28f589064f8e6.zip",
           "https://github.com/abseil/abseil-cpp/archive/0ce3ca95fd56d1ff32ec6cec69a28f589064f8e6.zip"
      ],
      strip_prefix = "abseil-cpp-0ce3ca95fd56d1ff32ec6cec69a28f589064f8e6",
      sha256 = "5e2c2f954c9ab71074834af1f7168e66aac4cc3c53e2c1890f970843fb3b394e",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2021-07-22T18:54:03Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/96f4ce02a3a78d63981c67acbd368945d11d7d70.zip",
           "https://github.com/google/googletest/archive/96f4ce02a3a78d63981c67acbd368945d11d7d70.zip"
      ],
      strip_prefix = "googletest-96f4ce02a3a78d63981c67acbd368945d11d7d70",
      sha256 = "0645c4c4a59d6b55d0f512ac73fdcc30820fb9876712eb75bcf7d4572c23b152",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2021-07-19T11:11:13Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/ab74ae5e104f72fa957c1712707a06a781a974a6.zip",
           "https://github.com/google/benchmark/archive/ab74ae5e104f72fa957c1712707a06a781a974a6.zip"
      ],
      strip_prefix = "benchmark-ab74ae5e104f72fa957c1712707a06a781a974a6",
      sha256 = "517a90a70dd7ce870218709deb4db5aa4ca717de634a4e4d501264cb9f488ab9",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2021-07-26T14:13:31Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/fbdfd38b2d2a210db8b64a43a54358c1f5585d5a.zip",
           "https://github.com/google/tcmalloc/archive/fbdfd38b2d2a210db8b64a43a54358c1f5585d5a.zip"
      ],
      strip_prefix = "tcmalloc-fbdfd38b2d2a210db8b64a43a54358c1f5585d5a",
      sha256 = "bebbdee227237004903c8e5983520b12fb7995a759daca2f55a20a70da2d1757",
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
