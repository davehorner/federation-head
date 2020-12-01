"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2020-11-11T13:29:11Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/b1c40e1de81913a3c40e5948f78719c28152486d.zip",
           "https://github.com/bazelbuild/rules_cc/archive/b1c40e1de81913a3c40e5948f78719c28152486d.zip"
      ],
      strip_prefix = "rules_cc-b1c40e1de81913a3c40e5948f78719c28152486d",
      sha256 = "d0c573b94a6ef20ef6ff20154a23d0efcb409fb0e1ff0979cec318dfe42f0cdd",
    )

    # ********** rules_python *****************
    http_archive(
      name = "rules_python",  # 2020-11-13T03:12:22Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/aa27a3fe7e1a6c73028effe1c78e87d2e7fab641.zip",
           "https://github.com/bazelbuild/rules_python/archive/aa27a3fe7e1a6c73028effe1c78e87d2e7fab641.zip"
      ],
      strip_prefix = "rules_python-aa27a3fe7e1a6c73028effe1c78e87d2e7fab641",
      sha256 = "e7dcbceb163a5b45489f49629242a78deaff8fcbebfe5970fb7acf5a16dbe2b8",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2020-11-30T14:33:46Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/e80c0b3536e1bdee68a874d529a9ba951faffe8b.zip",
           "https://github.com/abseil/abseil-cpp/archive/e80c0b3536e1bdee68a874d529a9ba951faffe8b.zip"
      ],
      strip_prefix = "abseil-cpp-e80c0b3536e1bdee68a874d529a9ba951faffe8b",
      sha256 = "9f3856f7c0d21e2fa417490dfd829cd50efae8d98b9166ac3a33677ae054439a",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2020-11-24T08:46:27Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/b1fbd33c06cdb0024c67733c6fdec2009d17b384.zip",
           "https://github.com/google/googletest/archive/b1fbd33c06cdb0024c67733c6fdec2009d17b384.zip"
      ],
      strip_prefix = "googletest-b1fbd33c06cdb0024c67733c6fdec2009d17b384",
      sha256 = "441ca27ee15f671697189f93769eab79cfcebc4bb01d6e9852dd23730fa56721",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2020-11-26T11:14:03Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/bf585a2789e30585b4e3ce6baf11ef2750b54677.zip",
           "https://github.com/google/benchmark/archive/bf585a2789e30585b4e3ce6baf11ef2750b54677.zip"
      ],
      strip_prefix = "benchmark-bf585a2789e30585b4e3ce6baf11ef2750b54677",
      sha256 = "2a778d821997df7d8646c9c59b8edb9a573a6e04c534c01892a40aa524a7b68c",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2020-11-30T23:33:24Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/066103ef32961206df10aff9288c0aa78208feb3.zip",
           "https://github.com/google/tcmalloc/archive/066103ef32961206df10aff9288c0aa78208feb3.zip"
      ],
      strip_prefix = "tcmalloc-066103ef32961206df10aff9288c0aa78208feb3",
      sha256 = "8886883452fc812b30a916e3bb7514d46e3a8ff9c01f9210a84a2740db528211",
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
