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
      name = "com_google_absl",  # 2021-09-14T00:07:10Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/b2dc72c17ac663885b62334d334da9f8970543b5.zip",
           "https://github.com/abseil/abseil-cpp/archive/b2dc72c17ac663885b62334d334da9f8970543b5.zip"
      ],
      strip_prefix = "abseil-cpp-b2dc72c17ac663885b62334d334da9f8970543b5",
      sha256 = "5247e92a222cf39ce1dfa12bf5aad452d27bab3f051f4e81f5d78d1d7ede9306",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2021-09-14T14:15:17Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/159c9ad23e8b276e8c975bb8621c81d4df5fd863.zip",
           "https://github.com/google/googletest/archive/159c9ad23e8b276e8c975bb8621c81d4df5fd863.zip"
      ],
      strip_prefix = "googletest-159c9ad23e8b276e8c975bb8621c81d4df5fd863",
      sha256 = "1fce6f1296c196cf440badf8e21ed322116b9651620e07cba25ccbe181278bef",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2021-09-13T20:00:14Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/713b9177183375c8b1b25595e33daf2a1625df5b.zip",
           "https://github.com/google/benchmark/archive/713b9177183375c8b1b25595e33daf2a1625df5b.zip"
      ],
      strip_prefix = "benchmark-713b9177183375c8b1b25595e33daf2a1625df5b",
      sha256 = "5cffc1043e6ba948e7fd16b0f97472ab17af07615726aa0cbf5361e4dca27597",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2021-09-14T21:36:47Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/e88a87b89b2de28ab2eb3d0bbf2b0fbf963b1b16.zip",
           "https://github.com/google/tcmalloc/archive/e88a87b89b2de28ab2eb3d0bbf2b0fbf963b1b16.zip"
      ],
      strip_prefix = "tcmalloc-e88a87b89b2de28ab2eb3d0bbf2b0fbf963b1b16",
      sha256 = "5551f512e2cb402adb088ce8746dbda840f902dd8445a9bf0c1bc11b4d1f2f3c",
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
