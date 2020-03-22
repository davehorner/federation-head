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
      name = "com_google_absl",  # 2020-03-20T20:56:39Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/092ed9793a1ad0e7e418f32c057bf3159a71cd04.zip",
           "https://github.com/abseil/abseil-cpp/archive/092ed9793a1ad0e7e418f32c057bf3159a71cd04.zip"
      ],
      strip_prefix = "abseil-cpp-092ed9793a1ad0e7e418f32c057bf3159a71cd04",
      sha256 = "5ae98f8aa9d8e3958abe4338ef6df63d9e67df1217369371121f95b9bcf86c01",
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
      name = "com_github_google_tcmalloc",  # 2020-03-18T20:00:39Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/96fe22c936f19ecf3df352c1fa7274910dad96d7.zip",
           "https://github.com/google/tcmalloc/archive/96fe22c936f19ecf3df352c1fa7274910dad96d7.zip"
      ],
      strip_prefix = "tcmalloc-96fe22c936f19ecf3df352c1fa7274910dad96d7",
      sha256 = "fcc9baad3c9c167a2570ab6543c187c113d95e388fa5792807cfe7cd2e0debe2",
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
