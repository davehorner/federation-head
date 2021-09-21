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
      name = "rules_python",  # 2021-09-17T23:36:10Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/ea1bb2bae51ce96bb43bc7d87f948672135bf5c8.zip",
           "https://github.com/bazelbuild/rules_python/archive/ea1bb2bae51ce96bb43bc7d87f948672135bf5c8.zip"
      ],
      strip_prefix = "rules_python-ea1bb2bae51ce96bb43bc7d87f948672135bf5c8",
      sha256 = "991cca79f2d40d08ad87bba02bfe78a70c00629836e2c0d77268231546ffa1b2",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2021-09-17T13:19:46Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/de71511109d967000e68baedb75de104adb2b778.zip",
           "https://github.com/abseil/abseil-cpp/archive/de71511109d967000e68baedb75de104adb2b778.zip"
      ],
      strip_prefix = "abseil-cpp-de71511109d967000e68baedb75de104adb2b778",
      sha256 = "729567550d22e7e1c948bea89dd68697be24c4b77da87b8a2e05d76faa9ea52d",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2021-09-16T17:00:21Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/40dfd4b775a66979ad1bd19321cdfd0feadfea27.zip",
           "https://github.com/google/googletest/archive/40dfd4b775a66979ad1bd19321cdfd0feadfea27.zip"
      ],
      strip_prefix = "googletest-40dfd4b775a66979ad1bd19321cdfd0feadfea27",
      sha256 = "854748f8be6cfaf74ecf31c205d73bdf7ae2d5176efe4e7fd64738f33d745592",
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
      name = "com_github_google_tcmalloc",  # 2021-09-20T15:14:40Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/a51a7faf8fd39604713c65f06f1ad48ec365e1c2.zip",
           "https://github.com/google/tcmalloc/archive/a51a7faf8fd39604713c65f06f1ad48ec365e1c2.zip"
      ],
      strip_prefix = "tcmalloc-a51a7faf8fd39604713c65f06f1ad48ec365e1c2",
      sha256 = "98117fca868f6f77f1fc1adde64d3b03018e7208dda5481a71b224ea923f126b",
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
