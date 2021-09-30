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
      name = "rules_python",  # 2021-09-28T02:23:55Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/86e7135b5500b5179fdb353499b9e2c20daa478c.zip",
           "https://github.com/bazelbuild/rules_python/archive/86e7135b5500b5179fdb353499b9e2c20daa478c.zip"
      ],
      strip_prefix = "rules_python-86e7135b5500b5179fdb353499b9e2c20daa478c",
      sha256 = "67f3b4c4ac44cb00997a409c5d55718f0996ee728100c571c92723dbc03e5fa6",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2021-09-27T18:06:52Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/7143e49e74857a009e16c51f6076eb197b6ccb49.zip",
           "https://github.com/abseil/abseil-cpp/archive/7143e49e74857a009e16c51f6076eb197b6ccb49.zip"
      ],
      strip_prefix = "abseil-cpp-7143e49e74857a009e16c51f6076eb197b6ccb49",
      sha256 = "2f0d9c7bc770f32bda06a9548f537b63602987d5a173791485151aba28a90099",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2021-09-28T20:33:40Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/ab36804e42d4cb85b7e7fe9946928597840684db.zip",
           "https://github.com/google/googletest/archive/ab36804e42d4cb85b7e7fe9946928597840684db.zip"
      ],
      strip_prefix = "googletest-ab36804e42d4cb85b7e7fe9946928597840684db",
      sha256 = "0d70dc26010b070efdae19fe670c7e928cfa909bae8be3570e32f8ac02bda5f5",
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
      name = "com_github_google_tcmalloc",  # 2021-09-29T16:19:22Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/0fecac5e3e35b0ddda6b00eb0302d7c86cf8698a.zip",
           "https://github.com/google/tcmalloc/archive/0fecac5e3e35b0ddda6b00eb0302d7c86cf8698a.zip"
      ],
      strip_prefix = "tcmalloc-0fecac5e3e35b0ddda6b00eb0302d7c86cf8698a",
      sha256 = "a23dba207203f8e173aab94145e98742647774bd17a9c8f832f8a59315a19e16",
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
