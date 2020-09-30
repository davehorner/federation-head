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
      name = "rules_python",  # 2020-09-20T14:59:23Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/e821ce92eef2a938cb4ffb8a164d8327ebb6285f.zip",
           "https://github.com/bazelbuild/rules_python/archive/e821ce92eef2a938cb4ffb8a164d8327ebb6285f.zip"
      ],
      strip_prefix = "rules_python-e821ce92eef2a938cb4ffb8a164d8327ebb6285f",
      sha256 = "8f95291288b97887147d85b0eeb1036322f0e7c18e7c6b6a7f6fd84b5eea534a",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2020-09-29T22:20:00Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/1fd58b69c62d1bb590a4860b0db30212b2fd2af4.zip",
           "https://github.com/abseil/abseil-cpp/archive/1fd58b69c62d1bb590a4860b0db30212b2fd2af4.zip"
      ],
      strip_prefix = "abseil-cpp-1fd58b69c62d1bb590a4860b0db30212b2fd2af4",
      sha256 = "607c34bf131b13f54eb2a6e88977c924aed800eb58d623786f5128fc500ac2af",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2020-09-30T00:48:11Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/477998eefac3d55831e7f3974671ba22b8739b93.zip",
           "https://github.com/google/googletest/archive/477998eefac3d55831e7f3974671ba22b8739b93.zip"
      ],
      strip_prefix = "googletest-477998eefac3d55831e7f3974671ba22b8739b93",
      sha256 = "59b017237e662448a796cb1f0a2e61358eca2d38b881148b4cb2fe7145e3eb40",
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
      name = "com_github_google_tcmalloc",  # 2020-09-28T15:46:32Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/b2d574332e228e143563bc5149e90db096cc3511.zip",
           "https://github.com/google/tcmalloc/archive/b2d574332e228e143563bc5149e90db096cc3511.zip"
      ],
      strip_prefix = "tcmalloc-b2d574332e228e143563bc5149e90db096cc3511",
      sha256 = "9ba420259bd0d7c248ba01ebfe3b610013b87cdd7d2690eec84387f92365777f",
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
