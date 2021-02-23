"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2021-02-05T12:30:09Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/40548a2974f1aea06215272d9c2b47a14a24e556.zip",
           "https://github.com/bazelbuild/rules_cc/archive/40548a2974f1aea06215272d9c2b47a14a24e556.zip"
      ],
      strip_prefix = "rules_cc-40548a2974f1aea06215272d9c2b47a14a24e556",
      sha256 = "56ac9633c13d74cb71e0546f103ce1c58810e4a76aa8325da593ca4277908d72",
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
      name = "com_google_absl",  # 2021-02-22T21:20:19Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/a50ae369a30f99f79d7559002aba3413dac1bd48.zip",
           "https://github.com/abseil/abseil-cpp/archive/a50ae369a30f99f79d7559002aba3413dac1bd48.zip"
      ],
      strip_prefix = "abseil-cpp-a50ae369a30f99f79d7559002aba3413dac1bd48",
      sha256 = "4dd901e190d7f409a57245c40e2a0160571c5f2500e7d061900e5e3979bcea06",
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
      name = "com_github_google_tcmalloc",  # 2021-02-22T18:06:31Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/5b7d7c86f22f9ad248024ed8b5471d4e02570bf4.zip",
           "https://github.com/google/tcmalloc/archive/5b7d7c86f22f9ad248024ed8b5471d4e02570bf4.zip"
      ],
      strip_prefix = "tcmalloc-5b7d7c86f22f9ad248024ed8b5471d4e02570bf4",
      sha256 = "4a5459aaee13e1bda8ce9b582e16268f2fb58dde42cd00c3ad5b8e361e8e2f8d",
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
