"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2020-02-25T16:58:44Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/52cd711ab7bb65240eae55f41cf5e4356ef49090.zip",
           "https://github.com/bazelbuild/rules_cc/archive/52cd711ab7bb65240eae55f41cf5e4356ef49090.zip"
      ],
      strip_prefix = "rules_cc-52cd711ab7bb65240eae55f41cf5e4356ef49090",
      sha256 = "4ffed096c4be510e310e5a5efb0216e57587cd567d13ebb3e8d4a6b54da8760d",
    )

    # ********** rules_python *****************
    http_archive(
      name = "rules_python",  # 2020-02-21T20:02:50Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/dd7f9c5f01bafbfea08c44092b6b0c8fc8fcb77f.zip",
           "https://github.com/bazelbuild/rules_python/archive/dd7f9c5f01bafbfea08c44092b6b0c8fc8fcb77f.zip"
      ],
      strip_prefix = "rules_python-dd7f9c5f01bafbfea08c44092b6b0c8fc8fcb77f",
      sha256 = "ddb2e1298684defde2f5e466d96e572119f30f9e2a901a7a81474fd4fa9f6d52",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2020-02-25T21:27:31Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/0033c9ea91a52ade7c6b725aa2ef3cbe15463421.zip",
           "https://github.com/abseil/abseil-cpp/archive/0033c9ea91a52ade7c6b725aa2ef3cbe15463421.zip"
      ],
      strip_prefix = "abseil-cpp-0033c9ea91a52ade7c6b725aa2ef3cbe15463421",
      sha256 = "a245e059514f2e3bd0bd6ca455b6a66e34656b1b447fec3dc98419153af23b14",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2020-02-13T18:52:14Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/23b2a3b1cf803999fb38175f6e9e038a4495c8a5.zip",
           "https://github.com/google/googletest/archive/23b2a3b1cf803999fb38175f6e9e038a4495c8a5.zip"
      ],
      strip_prefix = "googletest-23b2a3b1cf803999fb38175f6e9e038a4495c8a5",
      sha256 = "11d71c27a79346747c74f470c46e6c4d4ab764e3a2507b38ab1f7eba265fc986",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2020-02-25T11:21:58Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/8e0b1913d4ea803dfeb2e55567208fcab6b1b6c7.zip",
           "https://github.com/google/benchmark/archive/8e0b1913d4ea803dfeb2e55567208fcab6b1b6c7.zip"
      ],
      strip_prefix = "benchmark-8e0b1913d4ea803dfeb2e55567208fcab6b1b6c7",
      sha256 = "7eca6b8b82849b3d22b14aae583d327bb13519ea440ddb995c89b8ea468e26b0",
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
