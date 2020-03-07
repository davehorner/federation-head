"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2020-03-06T13:45:05Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/d545fa4f798f2a0b82f556b8b0ec59a93c100df7.zip",
           "https://github.com/bazelbuild/rules_cc/archive/d545fa4f798f2a0b82f556b8b0ec59a93c100df7.zip"
      ],
      strip_prefix = "rules_cc-d545fa4f798f2a0b82f556b8b0ec59a93c100df7",
      sha256 = "188e88d911b69bb77b391e02a4a5fdec2313dd01f0305d97cd3451e38f7ace10",
    )

    # ********** rules_python *****************
    http_archive(
      name = "rules_python",  # 2020-03-05T19:57:20Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/748aa53d7701e71101dfd15d800e100f6ff8e5d1.zip",
           "https://github.com/bazelbuild/rules_python/archive/748aa53d7701e71101dfd15d800e100f6ff8e5d1.zip"
      ],
      strip_prefix = "rules_python-748aa53d7701e71101dfd15d800e100f6ff8e5d1",
      sha256 = "d3e40ca3b7e00b72d2b1585e0b3396bcce50f0fc692e2b7c91d8b0dc471e3eaf",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2020-03-06T20:14:07Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/40a0e58eb39f327b14841eeccacd962340dbc57d.zip",
           "https://github.com/abseil/abseil-cpp/archive/40a0e58eb39f327b14841eeccacd962340dbc57d.zip"
      ],
      strip_prefix = "abseil-cpp-40a0e58eb39f327b14841eeccacd962340dbc57d",
      sha256 = "c6cf1908516d9436ba109631ed6f73812da4fdf955e56705a31b82f2d702707a",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2020-02-28T21:41:09Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/e588eb1ff9ff6598666279b737b27f983156ad85.zip",
           "https://github.com/google/googletest/archive/e588eb1ff9ff6598666279b737b27f983156ad85.zip"
      ],
      strip_prefix = "googletest-e588eb1ff9ff6598666279b737b27f983156ad85",
      sha256 = "b18016e313e0a635b643371f8a33f9813103b600e894f71e8625f0b8215ae698",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2020-02-25T11:21:58Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/8e0b1913d4ea803dfeb2e55567208fcab6b1b6c7.zip",
           "https://github.com/google/benchmark/archive/8e0b1913d4ea803dfeb2e55567208fcab6b1b6c7.zip"
      ],
      strip_prefix = "benchmark-8e0b1913d4ea803dfeb2e55567208fcab6b1b6c7",
      sha256 = "7eca6b8b82849b3d22b14aae583d327bb13519ea440ddb995c89b8ea468e26b0",
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
