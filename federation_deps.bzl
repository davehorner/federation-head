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
      name = "rules_python",  # 2021-09-12T22:23:07Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/e1646c433d85643f4ee7035055d3784f3199411c.zip",
           "https://github.com/bazelbuild/rules_python/archive/e1646c433d85643f4ee7035055d3784f3199411c.zip"
      ],
      strip_prefix = "rules_python-e1646c433d85643f4ee7035055d3784f3199411c",
      sha256 = "13c68c3470372ba69ad1578c22dc3a6182a378a3c71939585020172c32b6efff",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2021-09-10T19:51:12Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/cfbf5bf948a2656bda7ddab59d3bcb29595c144c.zip",
           "https://github.com/abseil/abseil-cpp/archive/cfbf5bf948a2656bda7ddab59d3bcb29595c144c.zip"
      ],
      strip_prefix = "abseil-cpp-cfbf5bf948a2656bda7ddab59d3bcb29595c144c",
      sha256 = "22c021e300a9a34c8dea6e3cfa3567aeccc7ad4d647d3356ec83e0e902f264da",
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
      name = "com_github_google_benchmark",  # 2021-09-12T15:57:57Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/400ed3f57a5f7397c9d5e5d9de5783f38938a8e7.zip",
           "https://github.com/google/benchmark/archive/400ed3f57a5f7397c9d5e5d9de5783f38938a8e7.zip"
      ],
      strip_prefix = "benchmark-400ed3f57a5f7397c9d5e5d9de5783f38938a8e7",
      sha256 = "4f26c57f2fa226dce9eb4a563465e2b39f89def6d11dbfd2e667b9ead1f71cb7",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2021-09-10T16:03:41Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/ae1b63023d69c188b6de4e9f14fb09e30f241d55.zip",
           "https://github.com/google/tcmalloc/archive/ae1b63023d69c188b6de4e9f14fb09e30f241d55.zip"
      ],
      strip_prefix = "tcmalloc-ae1b63023d69c188b6de4e9f14fb09e30f241d55",
      sha256 = "4ca6fa5ecf5fc7018ee76af3f3ac02e5858c75aa5b6ad7b3902f07ae9a4906e3",
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
