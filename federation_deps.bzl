"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2020-05-13T14:24:06Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/818289e5613731ae410efb54218a4077fb9dbb03.zip",
           "https://github.com/bazelbuild/rules_cc/archive/818289e5613731ae410efb54218a4077fb9dbb03.zip"
      ],
      strip_prefix = "rules_cc-818289e5613731ae410efb54218a4077fb9dbb03",
      sha256 = "0adbd6f567291ad526e82c765e15aed33cea5e256eeba129f1501142c2c56610",
    )

    # ********** rules_python *****************
    http_archive(
      name = "rules_python",  # 2020-05-23T05:50:58Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/708ed8679d7510a331ce9a7b910a2a056d24f7b1.zip",
           "https://github.com/bazelbuild/rules_python/archive/708ed8679d7510a331ce9a7b910a2a056d24f7b1.zip"
      ],
      strip_prefix = "rules_python-708ed8679d7510a331ce9a7b910a2a056d24f7b1",
      sha256 = "4ff0262d17870460ff505b59fcce75539414aeee6bf7526320db0a64914f03be",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2020-05-28T19:58:09Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/2069dc796aa255f7c82861c6e83b82d001ceef4a.zip",
           "https://github.com/abseil/abseil-cpp/archive/2069dc796aa255f7c82861c6e83b82d001ceef4a.zip"
      ],
      strip_prefix = "abseil-cpp-2069dc796aa255f7c82861c6e83b82d001ceef4a",
      sha256 = "b06a3df7a797807e57fc852aba250a1ee51ba8a59a874a23f8226a0d687faa3c",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2020-05-28T23:55:32Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/859bfe8981d6724c4ea06e73d29accd8588f3230.zip",
           "https://github.com/google/googletest/archive/859bfe8981d6724c4ea06e73d29accd8588f3230.zip"
      ],
      strip_prefix = "googletest-859bfe8981d6724c4ea06e73d29accd8588f3230",
      sha256 = "2133dabe18b9134851862f6102e67447e1b3f1bc7825e1cd888b17b6df513680",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2020-05-28T08:33:06Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/6746c65bcfa49110bfe6642b8a47735637817be4.zip",
           "https://github.com/google/benchmark/archive/6746c65bcfa49110bfe6642b8a47735637817be4.zip"
      ],
      strip_prefix = "benchmark-6746c65bcfa49110bfe6642b8a47735637817be4",
      sha256 = "18a05de25f732d8ed81d9271a05ef38e752f2bd2db0578453528b8cd2f819acb",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2020-06-02T00:31:37Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/ecbc1eec00197e58757f4a5fb1065512edb974c0.zip",
           "https://github.com/google/tcmalloc/archive/ecbc1eec00197e58757f4a5fb1065512edb974c0.zip"
      ],
      strip_prefix = "tcmalloc-ecbc1eec00197e58757f4a5fb1065512edb974c0",
      sha256 = "4c883e035e5f25cf2ba99187e730a435efbf5cd39a768038fa75141c2f379841",
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
