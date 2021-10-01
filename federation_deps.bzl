"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2021-09-17T09:46:42Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/dd2758b96dc8f9f4add81eaa4154b7e3d8be6873.zip",
           "https://github.com/bazelbuild/rules_cc/archive/dd2758b96dc8f9f4add81eaa4154b7e3d8be6873.zip"
      ],
      strip_prefix = "rules_cc-dd2758b96dc8f9f4add81eaa4154b7e3d8be6873",
      sha256 = "4e14abe3f288b5ae31eee4dc68472bfcd8d59a0bb1be91dd2c6bfa8af56baf19",
    )

    # ********** rules_python *****************
    http_archive(
      name = "rules_python",  # 2021-09-30T21:12:07Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/d09d60ca11aa90dc29e08711f983bd60fa3015f6.zip",
           "https://github.com/bazelbuild/rules_python/archive/d09d60ca11aa90dc29e08711f983bd60fa3015f6.zip"
      ],
      strip_prefix = "rules_python-d09d60ca11aa90dc29e08711f983bd60fa3015f6",
      sha256 = "337b8b5313bbf503bdb1ee903519db74491597d677bf81e3205afcde5029cf7b",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2021-09-30T14:00:30Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/4167eab063636a1fadcd571e0a762ff67d742c25.zip",
           "https://github.com/abseil/abseil-cpp/archive/4167eab063636a1fadcd571e0a762ff67d742c25.zip"
      ],
      strip_prefix = "abseil-cpp-4167eab063636a1fadcd571e0a762ff67d742c25",
      sha256 = "cf18e7c0b0940ab8a8652afb84084290541311b65365b1410943c852f359e59d",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2021-09-30T23:07:32Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/3b49be074d5c1340eeb447e6a8e78427051e675a.zip",
           "https://github.com/google/googletest/archive/3b49be074d5c1340eeb447e6a8e78427051e675a.zip"
      ],
      strip_prefix = "googletest-3b49be074d5c1340eeb447e6a8e78427051e675a",
      sha256 = "64c422bb216a02500285651c0a6f984f82707122999362abd2b4d6f865a04d46",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2021-09-20T09:19:51Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/0baacde3618ca617da95375e0af13ce1baadea47.zip",
           "https://github.com/google/benchmark/archive/0baacde3618ca617da95375e0af13ce1baadea47.zip"
      ],
      strip_prefix = "benchmark-0baacde3618ca617da95375e0af13ce1baadea47",
      sha256 = "62e2f2e6d8a744d67e4bbc212fcfd06647080de4253c97ad5c6749e09faf2cb0",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2021-09-30T07:56:52Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/adfb4c754756142c6c1da778e1e04260741eb0b3.zip",
           "https://github.com/google/tcmalloc/archive/adfb4c754756142c6c1da778e1e04260741eb0b3.zip"
      ],
      strip_prefix = "tcmalloc-adfb4c754756142c6c1da778e1e04260741eb0b3",
      sha256 = "6f229c6e9443c51c4e6d0aa69545024b7f682b6b28cccb1aa3d7eacd8d373d22",
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
