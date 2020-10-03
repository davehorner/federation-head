"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2020-10-01T14:19:37Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/f95239adde29680236afa22b4abaf1d04234f61a.zip",
           "https://github.com/bazelbuild/rules_cc/archive/f95239adde29680236afa22b4abaf1d04234f61a.zip"
      ],
      strip_prefix = "rules_cc-f95239adde29680236afa22b4abaf1d04234f61a",
      sha256 = "8e2e02d07e027601a9d2e95ace793f9729e4ca9c931a90973fe1bff3f51cba62",
    )

    # ********** rules_python *****************
    http_archive(
      name = "rules_python",  # 2020-09-30T13:50:21Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/c064f7008a30f307ea7516cf52358a653011f82b.zip",
           "https://github.com/bazelbuild/rules_python/archive/c064f7008a30f307ea7516cf52358a653011f82b.zip"
      ],
      strip_prefix = "rules_python-c064f7008a30f307ea7516cf52358a653011f82b",
      sha256 = "6e49996ad3cf45b2232b8f94ca1e3ead369c28394c51632be8d85fe826383012",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2020-10-03T02:03:20Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/887d0eee6bab35847253181b32e78ff707010ccd.zip",
           "https://github.com/abseil/abseil-cpp/archive/887d0eee6bab35847253181b32e78ff707010ccd.zip"
      ],
      strip_prefix = "abseil-cpp-887d0eee6bab35847253181b32e78ff707010ccd",
      sha256 = "d5421e707bdb04c684b5cf51bdd823172bb9018051ac1a1f3a6352c9fdcdc269",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2020-10-01T00:52:45Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/1fb1bb23bb8418dc73a5a9a82bbed31dc610fec7.zip",
           "https://github.com/google/googletest/archive/1fb1bb23bb8418dc73a5a9a82bbed31dc610fec7.zip"
      ],
      strip_prefix = "googletest-1fb1bb23bb8418dc73a5a9a82bbed31dc610fec7",
      sha256 = "0f9b7086eec24c9b2bcf4488df062c56c7c781a115758471272b3cba0ca50183",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2020-09-29T06:35:18Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/ffe1342eb2faa7d2e7c35b4db2ccf99fab81ec20.zip",
           "https://github.com/google/benchmark/archive/ffe1342eb2faa7d2e7c35b4db2ccf99fab81ec20.zip"
      ],
      strip_prefix = "benchmark-ffe1342eb2faa7d2e7c35b4db2ccf99fab81ec20",
      sha256 = "5dc57a5c8a0f4991bac338250a0298ac18cb8fe100ee91f936f7fedc7e9e5a83",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2020-10-02T20:33:56Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/4102174ad05275f7d16500c714b101fb283d1c4a.zip",
           "https://github.com/google/tcmalloc/archive/4102174ad05275f7d16500c714b101fb283d1c4a.zip"
      ],
      strip_prefix = "tcmalloc-4102174ad05275f7d16500c714b101fb283d1c4a",
      sha256 = "c24fe6e3b05975355dc7dae2ec1b084a828c76adf6cfeedd10424437da6c047b",
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
