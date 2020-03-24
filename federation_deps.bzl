"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2020-03-12T18:08:12Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/34ca16f4aa4bf2a5d3e4747229202d6cb630ebab.zip",
           "https://github.com/bazelbuild/rules_cc/archive/34ca16f4aa4bf2a5d3e4747229202d6cb630ebab.zip"
      ],
      strip_prefix = "rules_cc-34ca16f4aa4bf2a5d3e4747229202d6cb630ebab",
      sha256 = "523c59bb3f16518679668594c8874da46872fde05c32ba246bc0a35ec292f8a6",
    )

    # ********** rules_python *****************
    http_archive(
      name = "rules_python",  # 2020-03-05T19:57:20Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/748aa53d7701e71101dfd15d800e100f6ff8e5d1.zip",
           "https://github.com/bazelbuild/rules_python/archive/748aa53d7701e71101dfd15d800e100f6ff8e5d1.zip"
      ],
      strip_prefix = "rules_python-748aa53d7701e71101dfd15d800e100f6ff8e5d1",
      sha256 = "d3e40ca3b7e00b72d2b1585e0b3396bcce50f0fc692e2b7c91d8b0dc471e3eaf",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2020-03-23T20:24:45Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/518f17501e6156f7921fbb9b68a1e420bcb10bc5.zip",
           "https://github.com/abseil/abseil-cpp/archive/518f17501e6156f7921fbb9b68a1e420bcb10bc5.zip"
      ],
      strip_prefix = "abseil-cpp-518f17501e6156f7921fbb9b68a1e420bcb10bc5",
      sha256 = "0baec77dcf13da93038ad6045c87e048a6cc1f5a8ad126091c804acab4a2671a",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2020-03-21T00:15:32Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/749148f1accc346d94825358a9a745b852961a11.zip",
           "https://github.com/google/googletest/archive/749148f1accc346d94825358a9a745b852961a11.zip"
      ],
      strip_prefix = "googletest-749148f1accc346d94825358a9a745b852961a11",
      sha256 = "311c0edded60bf8f41918a18ea747a6e2293cc3b487c5b6224a36da361406c78",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2020-03-16T11:32:08Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/e30cac6b06cf05416a9358df8be868ab01602a68.zip",
           "https://github.com/google/benchmark/archive/e30cac6b06cf05416a9358df8be868ab01602a68.zip"
      ],
      strip_prefix = "benchmark-e30cac6b06cf05416a9358df8be868ab01602a68",
      sha256 = "9557a555f33e52e41737474ff24e3da899ee766271b28366424861f436283800",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2020-03-23T17:28:27Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/93e60c951394a89a04d1059f1046e1a982b406b3.zip",
           "https://github.com/google/tcmalloc/archive/93e60c951394a89a04d1059f1046e1a982b406b3.zip"
      ],
      strip_prefix = "tcmalloc-93e60c951394a89a04d1059f1046e1a982b406b3",
      sha256 = "299ebb17038290a1e3c7c94aef16e87bcae13898c913dd561d1079c3d9a1aeec",
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
