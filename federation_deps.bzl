"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2021-08-13T08:53:39Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/d66a13e2a01630afcafc4ba411d83e291ecf02bd.zip",
           "https://github.com/bazelbuild/rules_cc/archive/d66a13e2a01630afcafc4ba411d83e291ecf02bd.zip"
      ],
      strip_prefix = "rules_cc-d66a13e2a01630afcafc4ba411d83e291ecf02bd",
      sha256 = "47a670ff6f1d4bb85eb2e15b52c818595cd392d06412da3159c3eeef8b3673da",
    )

    # ********** rules_python *****************
    http_archive(
      name = "rules_python",  # 2021-08-18T04:10:34Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/0824042ce695be37c17a602824f175ffa491e20d.zip",
           "https://github.com/bazelbuild/rules_python/archive/0824042ce695be37c17a602824f175ffa491e20d.zip"
      ],
      strip_prefix = "rules_python-0824042ce695be37c17a602824f175ffa491e20d",
      sha256 = "5ad69a49732d107b80bbe4ae046545f0f116e0a7558cf65c9682c6a0ad3ff401",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2021-08-20T18:38:00Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/f39e6ad4753e06d4a0d6a9bf6310478757479984.zip",
           "https://github.com/abseil/abseil-cpp/archive/f39e6ad4753e06d4a0d6a9bf6310478757479984.zip"
      ],
      strip_prefix = "abseil-cpp-f39e6ad4753e06d4a0d6a9bf6310478757479984",
      sha256 = "16725d55f87ac686230eef5ae57f5534d770b7f9ab97c6b562fbe98c6306499c",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2021-08-20T19:08:40Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/2f80c2ba71c0e8922a03b9b855e5b019ad1f7064.zip",
           "https://github.com/google/googletest/archive/2f80c2ba71c0e8922a03b9b855e5b019ad1f7064.zip"
      ],
      strip_prefix = "googletest-2f80c2ba71c0e8922a03b9b855e5b019ad1f7064",
      sha256 = "70e4f07b2df8d471f4738dc9f5a4a149d996b2657796586bd69d9da5588fe1c1",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2021-08-19T13:09:49Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/8fd49d66719b37156d8e4f7bc2817665ce43664a.zip",
           "https://github.com/google/benchmark/archive/8fd49d66719b37156d8e4f7bc2817665ce43664a.zip"
      ],
      strip_prefix = "benchmark-8fd49d66719b37156d8e4f7bc2817665ce43664a",
      sha256 = "1b82981969fcad2c5fc7929a953c165846ae4f595715910a2578c8f3996ba4b9",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2021-08-19T01:58:04Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/2ce18e6322d3ea56e50a88ead09ab17e89bf29ce.zip",
           "https://github.com/google/tcmalloc/archive/2ce18e6322d3ea56e50a88ead09ab17e89bf29ce.zip"
      ],
      strip_prefix = "tcmalloc-2ce18e6322d3ea56e50a88ead09ab17e89bf29ce",
      sha256 = "e94d93dc29ec273526ffa2abd9aa175e579699795df419db6d26e649d9eb0ca5",
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
