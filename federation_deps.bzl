"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2020-04-09T08:35:48Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/7c3170fe93e13fbd4835bfa4f64ff93cf2c9b6c8.zip",
           "https://github.com/bazelbuild/rules_cc/archive/7c3170fe93e13fbd4835bfa4f64ff93cf2c9b6c8.zip"
      ],
      strip_prefix = "rules_cc-7c3170fe93e13fbd4835bfa4f64ff93cf2c9b6c8",
      sha256 = "be2d42661f6bb0bd5955ae87e85cda6ab7a9614ac8080a7ff731fba559d859d1",
    )

    # ********** rules_python *****************
    http_archive(
      name = "rules_python",  # 2020-04-09T15:00:47Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/a0fbf98d4e3a232144df4d0d80b577c7a693b570.zip",
           "https://github.com/bazelbuild/rules_python/archive/a0fbf98d4e3a232144df4d0d80b577c7a693b570.zip"
      ],
      strip_prefix = "rules_python-a0fbf98d4e3a232144df4d0d80b577c7a693b570",
      sha256 = "98c9b903f6e8fe20b7e56d19c4822c8c49a11b475bd4ec0ca6a564e8bc5d5fa2",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2020-04-11T10:40:20Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/bf6166a635ab57fe0559b00dcd3ff09a8c42de2e.zip",
           "https://github.com/abseil/abseil-cpp/archive/bf6166a635ab57fe0559b00dcd3ff09a8c42de2e.zip"
      ],
      strip_prefix = "abseil-cpp-bf6166a635ab57fe0559b00dcd3ff09a8c42de2e",
      sha256 = "3da5b3b16ec515476d365fcb38dd90eebc6e6100a96588909d5e3aa96a0eec22",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2020-04-04T22:05:39Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/e3f0319d89f4cbf32993de595d984183b1a9fc57.zip",
           "https://github.com/google/googletest/archive/e3f0319d89f4cbf32993de595d984183b1a9fc57.zip"
      ],
      strip_prefix = "googletest-e3f0319d89f4cbf32993de595d984183b1a9fc57",
      sha256 = "363089f62b375e6a73b7149015e7fe92e50d124ab4e95ba062774c496d96f2fc",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2020-04-10T16:02:13Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/a77d5f70efaebe2b7e8c10134526a23a7ce7ef35.zip",
           "https://github.com/google/benchmark/archive/a77d5f70efaebe2b7e8c10134526a23a7ce7ef35.zip"
      ],
      strip_prefix = "benchmark-a77d5f70efaebe2b7e8c10134526a23a7ce7ef35",
      sha256 = "5bb787065f9f7980a8ca4c0da9f8f7366f754d61d8ff3653e23fd8f8407f16c6",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2020-04-10T22:41:04Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/c6d52423018ada854908d57d0138920eafbfd77c.zip",
           "https://github.com/google/tcmalloc/archive/c6d52423018ada854908d57d0138920eafbfd77c.zip"
      ],
      strip_prefix = "tcmalloc-c6d52423018ada854908d57d0138920eafbfd77c",
      sha256 = "5694a77006617465e7cc5e8843fc6fad100cf67e4a0485262ec96e705cf8cc1c",
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
