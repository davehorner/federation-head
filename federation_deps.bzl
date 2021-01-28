"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2021-01-28T02:31:53Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/ab2abd3ddc241b4e0067c80b3bdd4e384172cd6d.zip",
           "https://github.com/bazelbuild/rules_cc/archive/ab2abd3ddc241b4e0067c80b3bdd4e384172cd6d.zip"
      ],
      strip_prefix = "rules_cc-ab2abd3ddc241b4e0067c80b3bdd4e384172cd6d",
      sha256 = "ad81ad11d63e97873dda3289383dd733f99f12fadeeadb14227a45e894437dd8",
    )

    # ********** rules_python *****************
    http_archive(
      name = "rules_python",  # 2021-01-27T23:46:42Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/8537cea11d867333c07c465d536778c1b7560cde.zip",
           "https://github.com/bazelbuild/rules_python/archive/8537cea11d867333c07c465d536778c1b7560cde.zip"
      ],
      strip_prefix = "rules_python-8537cea11d867333c07c465d536778c1b7560cde",
      sha256 = "09d08c6168b5a732cec1366392fb84f6d9f05a1019dcd126eef1150cdf63e92a",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2021-01-25T17:52:34Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/e4e2e57e1a4308cf4ba008d9c1f2d478b3349201.zip",
           "https://github.com/abseil/abseil-cpp/archive/e4e2e57e1a4308cf4ba008d9c1f2d478b3349201.zip"
      ],
      strip_prefix = "abseil-cpp-e4e2e57e1a4308cf4ba008d9c1f2d478b3349201",
      sha256 = "22f571ae4e4d61a5f19f0c8e87dec40cc666c2be0e6bd62944d572cbe8fb41aa",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2021-01-26T20:43:54Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/273f8cb059a4e7b089731036392422b5ef489791.zip",
           "https://github.com/google/googletest/archive/273f8cb059a4e7b089731036392422b5ef489791.zip"
      ],
      strip_prefix = "googletest-273f8cb059a4e7b089731036392422b5ef489791",
      sha256 = "2b9ce7cfb1ed140cff3e9828e3948e105a5635b8579febef094ce302915a6b04",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2021-01-05T09:54:04Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/8df87f6c879cbcabd17c5cfcec7b89687df36953.zip",
           "https://github.com/google/benchmark/archive/8df87f6c879cbcabd17c5cfcec7b89687df36953.zip"
      ],
      strip_prefix = "benchmark-8df87f6c879cbcabd17c5cfcec7b89687df36953",
      sha256 = "da89d07439a4ba0e649a3d957af639db15b3d2ee65731a4b58e674a59f82b893",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2021-01-25T21:08:34Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/b05cd9c37abc59c5db4040f02fb687fec6d87885.zip",
           "https://github.com/google/tcmalloc/archive/b05cd9c37abc59c5db4040f02fb687fec6d87885.zip"
      ],
      strip_prefix = "tcmalloc-b05cd9c37abc59c5db4040f02fb687fec6d87885",
      sha256 = "c3608b170fe6e250755ae9280ef49455e46e980e14e5e9366c213dbf9f4c56f8",
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
