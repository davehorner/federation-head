"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2020-08-18T17:57:24Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/02becfef8bc97bda4f9bb64e153f1b0671aec4ba.zip",
           "https://github.com/bazelbuild/rules_cc/archive/02becfef8bc97bda4f9bb64e153f1b0671aec4ba.zip"
      ],
      strip_prefix = "rules_cc-02becfef8bc97bda4f9bb64e153f1b0671aec4ba",
      sha256 = "fa42eade3cad9190c2a6286a6213f07f1a83d26d9f082d56f526d014c6ea7444",
    )

    # ********** rules_python *****************
    http_archive(
      name = "rules_python",  # 2020-08-27T12:32:29Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/29fb032d66d6a89b63f60707e64e83950815241e.zip",
           "https://github.com/bazelbuild/rules_python/archive/29fb032d66d6a89b63f60707e64e83950815241e.zip"
      ],
      strip_prefix = "rules_python-29fb032d66d6a89b63f60707e64e83950815241e",
      sha256 = "1025c4fbca60fef1a86c71922ef59c3d039dd7048657ec514a64ac51bf2a3cca",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2020-08-28T23:50:55Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/a4cbb5f698c42845aab6a6d6318290205e6c5baf.zip",
           "https://github.com/abseil/abseil-cpp/archive/a4cbb5f698c42845aab6a6d6318290205e6c5baf.zip"
      ],
      strip_prefix = "abseil-cpp-a4cbb5f698c42845aab6a6d6318290205e6c5baf",
      sha256 = "334f860cfa4cf097abab5ac31402921652a58c1280251e7acabfabb310acad5d",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2020-08-27T01:23:05Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/df6b75949b1efab7606ba60c0f0a0125ac95c5af.zip",
           "https://github.com/google/googletest/archive/df6b75949b1efab7606ba60c0f0a0125ac95c5af.zip"
      ],
      strip_prefix = "googletest-df6b75949b1efab7606ba60c0f0a0125ac95c5af",
      sha256 = "c56bf83954642b44357051d1c0979d9ec58c79bc9e20cb4961ba65c1c97a120e",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2020-08-28T07:46:12Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/4475ff6b8a7a4077d7492b76ef5278a3dc53a2e4.zip",
           "https://github.com/google/benchmark/archive/4475ff6b8a7a4077d7492b76ef5278a3dc53a2e4.zip"
      ],
      strip_prefix = "benchmark-4475ff6b8a7a4077d7492b76ef5278a3dc53a2e4",
      sha256 = "5d0059deb5ee8c8c1f64ba8a92948884d67c6c7b43cba25af749fdfa2f4e775f",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2020-08-27T20:40:29Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/18c2d08fe04d31f80903532c9e302c6679a87975.zip",
           "https://github.com/google/tcmalloc/archive/18c2d08fe04d31f80903532c9e302c6679a87975.zip"
      ],
      strip_prefix = "tcmalloc-18c2d08fe04d31f80903532c9e302c6679a87975",
      sha256 = "a35b094f295ab8dd64ae4c0b3f4d4c20fe3c67fdfb7c0f5715ba754491d06a37",
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
