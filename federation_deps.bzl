"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2021-02-23T13:03:02Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/a3d7068939a6b21b81fdcca5a62b9ddbacd1eaef.zip",
           "https://github.com/bazelbuild/rules_cc/archive/a3d7068939a6b21b81fdcca5a62b9ddbacd1eaef.zip"
      ],
      strip_prefix = "rules_cc-a3d7068939a6b21b81fdcca5a62b9ddbacd1eaef",
      sha256 = "09ff5c4bbd73cd45b7f3fa0ab02562773252b4c8463687546e4f247757655266",
    )

    # ********** rules_python *****************
    http_archive(
      name = "rules_python",  # 2021-02-16T18:15:13Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/6135186f93d46ab8551d9fe52bac97bf0c2de1ab.zip",
           "https://github.com/bazelbuild/rules_python/archive/6135186f93d46ab8551d9fe52bac97bf0c2de1ab.zip"
      ],
      strip_prefix = "rules_python-6135186f93d46ab8551d9fe52bac97bf0c2de1ab",
      sha256 = "a83c49226394d80442bf1e872ed02b1a5633969b5ec7f7f5644b2852019e76d7",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2021-02-23T20:47:31Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/998805a4c79d5d7a771f7e5a8ee3cbbbcba04f94.zip",
           "https://github.com/abseil/abseil-cpp/archive/998805a4c79d5d7a771f7e5a8ee3cbbbcba04f94.zip"
      ],
      strip_prefix = "abseil-cpp-998805a4c79d5d7a771f7e5a8ee3cbbbcba04f94",
      sha256 = "c1f1c9182a11adecb776a4b9dfa16552bde7f8ffa7f8a3a32d41cc683ae73a84",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2021-02-22T15:40:11Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/1de637fbdd4ab0051229707f855eee76f5a3d5da.zip",
           "https://github.com/google/googletest/archive/1de637fbdd4ab0051229707f855eee76f5a3d5da.zip"
      ],
      strip_prefix = "googletest-1de637fbdd4ab0051229707f855eee76f5a3d5da",
      sha256 = "3519a051b20f0dd3a58e1dedd391a3cbd27eb70189afb1185dc4eaefe111211f",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2021-02-22T09:55:59Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/5c43112eb3d70cec10784d8d1f4373bc7397836b.zip",
           "https://github.com/google/benchmark/archive/5c43112eb3d70cec10784d8d1f4373bc7397836b.zip"
      ],
      strip_prefix = "benchmark-5c43112eb3d70cec10784d8d1f4373bc7397836b",
      sha256 = "5fb6e94a88b468cf8625ef687ff151d3817c65e903a21f76674cd3d9587883df",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2021-02-24T00:25:50Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/a8cab695850faddd53233dc18a229f741f533bea.zip",
           "https://github.com/google/tcmalloc/archive/a8cab695850faddd53233dc18a229f741f533bea.zip"
      ],
      strip_prefix = "tcmalloc-a8cab695850faddd53233dc18a229f741f533bea",
      sha256 = "2baae4e0910cd4453119fac2ff71b34ec3c6390d7e0459e87dcc7511124c0e0b",
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
