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
      name = "rules_python",  # 2021-09-05T22:22:44Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/bef2244d295ea5bf979261513b31bf38b941ac28.zip",
           "https://github.com/bazelbuild/rules_python/archive/bef2244d295ea5bf979261513b31bf38b941ac28.zip"
      ],
      strip_prefix = "rules_python-bef2244d295ea5bf979261513b31bf38b941ac28",
      sha256 = "d588100b9f5b1f46f463e334122562feb7b6b90b30f97c19ef69e4105537bc35",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2021-09-03T18:22:32Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/6039dd95bb62e6072731929279e917c7be39369f.zip",
           "https://github.com/abseil/abseil-cpp/archive/6039dd95bb62e6072731929279e917c7be39369f.zip"
      ],
      strip_prefix = "abseil-cpp-6039dd95bb62e6072731929279e917c7be39369f",
      sha256 = "feb30b9a02fca741b555e017468bcd262184482338acf7bd0232a094bcacb741",
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
      name = "com_github_google_benchmark",  # 2021-09-06T08:33:27Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/4f8070590c18fc0daf48a01124ed4042897e6d67.zip",
           "https://github.com/google/benchmark/archive/4f8070590c18fc0daf48a01124ed4042897e6d67.zip"
      ],
      strip_prefix = "benchmark-4f8070590c18fc0daf48a01124ed4042897e6d67",
      sha256 = "3ae705e319257eef9a1850849a5a81d3bfebc1868ec42c80a94cd0ce6d7f70d9",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2021-09-03T16:40:30Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/590414d414e132474a8f2ed321f988aa319de620.zip",
           "https://github.com/google/tcmalloc/archive/590414d414e132474a8f2ed321f988aa319de620.zip"
      ],
      strip_prefix = "tcmalloc-590414d414e132474a8f2ed321f988aa319de620",
      sha256 = "3e6b953442064e41f44455aa903718a06d9f38e78602e96f38056098bf21bd08",
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
