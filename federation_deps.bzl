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
      name = "com_google_absl",  # 2021-02-19T23:29:38Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/0b5af594fc200b77b130dd65d2412bdd8e1e2c76.zip",
           "https://github.com/abseil/abseil-cpp/archive/0b5af594fc200b77b130dd65d2412bdd8e1e2c76.zip"
      ],
      strip_prefix = "abseil-cpp-0b5af594fc200b77b130dd65d2412bdd8e1e2c76",
      sha256 = "297cf26cba143f90825dffe36d1fdd288ae9045c842d5bc37f9e0fd3bd99da11",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2021-02-19T18:55:48Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/d9c309fdab807b716c2cf4d4a42989b8c34f712a.zip",
           "https://github.com/google/googletest/archive/d9c309fdab807b716c2cf4d4a42989b8c34f712a.zip"
      ],
      strip_prefix = "googletest-d9c309fdab807b716c2cf4d4a42989b8c34f712a",
      sha256 = "a09b0a2242968160e2a46a7d882e9752108d1017cf0a62fae9726c079ec2d9d1",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2021-02-14T14:45:57Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/d90321ff7ab553f97449b7017caf29ec18e74c6b.zip",
           "https://github.com/google/benchmark/archive/d90321ff7ab553f97449b7017caf29ec18e74c6b.zip"
      ],
      strip_prefix = "benchmark-d90321ff7ab553f97449b7017caf29ec18e74c6b",
      sha256 = "1f8541ff4f92344ec34384f8ae963b47e4d115cd6b07a25962c65b4bd1fd73e7",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2021-02-20T00:08:55Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/548d8700ca70da2a1f8ab2497664b6738cc74982.zip",
           "https://github.com/google/tcmalloc/archive/548d8700ca70da2a1f8ab2497664b6738cc74982.zip"
      ],
      strip_prefix = "tcmalloc-548d8700ca70da2a1f8ab2497664b6738cc74982",
      sha256 = "ae419860d856b77775a898e1a82e654e188608edd1faf96d7a777272a681e048",
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
