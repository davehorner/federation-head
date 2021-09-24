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
      name = "rules_python",  # 2021-09-21T15:01:20Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/c303849892a2c716a2582172be43ba525feac23d.zip",
           "https://github.com/bazelbuild/rules_python/archive/c303849892a2c716a2582172be43ba525feac23d.zip"
      ],
      strip_prefix = "rules_python-c303849892a2c716a2582172be43ba525feac23d",
      sha256 = "ac75c5a292f33c1091473f6d9b50db2a53d34bdb9773c04a65ab5a834161cc2b",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2021-09-23T20:30:12Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/1ce4ceca2b2931bc4d7e470228c2dbb2f3dfea0f.zip",
           "https://github.com/abseil/abseil-cpp/archive/1ce4ceca2b2931bc4d7e470228c2dbb2f3dfea0f.zip"
      ],
      strip_prefix = "abseil-cpp-1ce4ceca2b2931bc4d7e470228c2dbb2f3dfea0f",
      sha256 = "0041e07138e954ec829d2639761adda5e06fa1ec112b59eba696b6b6ed48fadd",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2021-09-23T23:31:42Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/e4717df71a4f45bf9f0ac88c6cd9846a0bc248dd.zip",
           "https://github.com/google/googletest/archive/e4717df71a4f45bf9f0ac88c6cd9846a0bc248dd.zip"
      ],
      strip_prefix = "googletest-e4717df71a4f45bf9f0ac88c6cd9846a0bc248dd",
      sha256 = "d93d26595d52d30acce7e8096006e2f3053433163ff3c59bba32033c9a32ef55",
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
      name = "com_github_google_tcmalloc",  # 2021-09-23T17:03:11Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/9e1a307e732cb0974cb3b61ca0244f3361b05ef0.zip",
           "https://github.com/google/tcmalloc/archive/9e1a307e732cb0974cb3b61ca0244f3361b05ef0.zip"
      ],
      strip_prefix = "tcmalloc-9e1a307e732cb0974cb3b61ca0244f3361b05ef0",
      sha256 = "e39b9c02626195feb5c1f07885406b3912781665126fc1185df68a20cd20237f",
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
