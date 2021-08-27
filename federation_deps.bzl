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
      name = "com_google_absl",  # 2021-08-26T12:32:59Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/637722af3a60c17915d3325604a0435ee92a41b4.zip",
           "https://github.com/abseil/abseil-cpp/archive/637722af3a60c17915d3325604a0435ee92a41b4.zip"
      ],
      strip_prefix = "abseil-cpp-637722af3a60c17915d3325604a0435ee92a41b4",
      sha256 = "914e87664fa36c1afcfded44ee9f1de0ce26bb7be2f67d1066412b79fd8a7d63",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2021-08-26T18:30:09Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/955c7f837efad184ec63e771c42542d37545eaef.zip",
           "https://github.com/google/googletest/archive/955c7f837efad184ec63e771c42542d37545eaef.zip"
      ],
      strip_prefix = "googletest-955c7f837efad184ec63e771c42542d37545eaef",
      sha256 = "1129a3ff6d81d1b4cd080784e6cb539a9b34d8309831ae4560804337b8cfd27c",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2021-08-24T14:08:15Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/2b093325e17e409fa7a6d53197708a8bef0893e6.zip",
           "https://github.com/google/benchmark/archive/2b093325e17e409fa7a6d53197708a8bef0893e6.zip"
      ],
      strip_prefix = "benchmark-2b093325e17e409fa7a6d53197708a8bef0893e6",
      sha256 = "89c9163ff32c32e34abea0261fd09864b220fedf385678ba74c1996c2223227b",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2021-08-26T22:42:48Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/0ce7fb16ed91128793acc7e1ff23c16691fe5558.zip",
           "https://github.com/google/tcmalloc/archive/0ce7fb16ed91128793acc7e1ff23c16691fe5558.zip"
      ],
      strip_prefix = "tcmalloc-0ce7fb16ed91128793acc7e1ff23c16691fe5558",
      sha256 = "46701d88d24f774874d0206d4a18887a378777427235654e7963447c610b0c84",
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
