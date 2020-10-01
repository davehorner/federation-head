"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2020-09-23T13:28:04Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/53f28aeac9a5bb70dc5f8dfbcd924f298f05da01.zip",
           "https://github.com/bazelbuild/rules_cc/archive/53f28aeac9a5bb70dc5f8dfbcd924f298f05da01.zip"
      ],
      strip_prefix = "rules_cc-53f28aeac9a5bb70dc5f8dfbcd924f298f05da01",
      sha256 = "d6ec8bfa562c64d43e16c5199fbfd6d0a2ff28bb6fdaae827149de2c5b94f45d",
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
      name = "com_google_absl",  # 2020-10-01T01:43:11Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/093cc27604df1c4a179b73bc3f00d4d1ce2ce113.zip",
           "https://github.com/abseil/abseil-cpp/archive/093cc27604df1c4a179b73bc3f00d4d1ce2ce113.zip"
      ],
      strip_prefix = "abseil-cpp-093cc27604df1c4a179b73bc3f00d4d1ce2ce113",
      sha256 = "5579f0d9e5547a2a4e27d22a7e9731829344c681614fcfecbd9e77d3916e7a20",
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
      name = "com_github_google_tcmalloc",  # 2020-09-30T18:47:03Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/96e9372a6540c0c76cb2544e0efd53e58efd4907.zip",
           "https://github.com/google/tcmalloc/archive/96e9372a6540c0c76cb2544e0efd53e58efd4907.zip"
      ],
      strip_prefix = "tcmalloc-96e9372a6540c0c76cb2544e0efd53e58efd4907",
      sha256 = "358bfaf8a81535e39f21ac4a773760fadca721230760b29c65629084bf75b594",
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
