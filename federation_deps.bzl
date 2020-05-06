"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2020-05-04T11:03:00Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/9ddf8aac74201a57ce37f8ef29a01d3e69318aac.zip",
           "https://github.com/bazelbuild/rules_cc/archive/9ddf8aac74201a57ce37f8ef29a01d3e69318aac.zip"
      ],
      strip_prefix = "rules_cc-9ddf8aac74201a57ce37f8ef29a01d3e69318aac",
      sha256 = "1275279824742e86553bfc9511121ad36182782191cfaef465e2cd6ec434ca10",
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
      name = "com_google_absl",  # 2020-05-05T17:52:13Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/d85783fd0b1bb32b3d3e04d18367cec8d96c9e9a.zip",
           "https://github.com/abseil/abseil-cpp/archive/d85783fd0b1bb32b3d3e04d18367cec8d96c9e9a.zip"
      ],
      strip_prefix = "abseil-cpp-d85783fd0b1bb32b3d3e04d18367cec8d96c9e9a",
      sha256 = "9c1cc4374a5057ad51384c68a8a2aa3d8c0bdbbdf3d9c5feef1764db93b2eb12",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2020-05-05T21:07:14Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/e589a337170554c48bc658cc857cf15080c9eacc.zip",
           "https://github.com/google/googletest/archive/e589a337170554c48bc658cc857cf15080c9eacc.zip"
      ],
      strip_prefix = "googletest-e589a337170554c48bc658cc857cf15080c9eacc",
      sha256 = "dc59ebe633f0ffc5c4826197762488b7026c9abf86c178d60bb28d91ed5e8d71",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2020-04-23T11:19:19Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/56898e9a92fba537671d5462df9c5ef2ea6a823a.zip",
           "https://github.com/google/benchmark/archive/56898e9a92fba537671d5462df9c5ef2ea6a823a.zip"
      ],
      strip_prefix = "benchmark-56898e9a92fba537671d5462df9c5ef2ea6a823a",
      sha256 = "7f45be0bff07d787d75c3864212e9ea5ebba57593b2e487c783d11da70ef6857",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2020-05-05T19:53:27Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/798c2efa91d48836ea3ab7b29675d718528c600c.zip",
           "https://github.com/google/tcmalloc/archive/798c2efa91d48836ea3ab7b29675d718528c600c.zip"
      ],
      strip_prefix = "tcmalloc-798c2efa91d48836ea3ab7b29675d718528c600c",
      sha256 = "fd0c62e7033e66310d3cc529310ce114d0a00abf027155441fc828209d9b59b4",
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
