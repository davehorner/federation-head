"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2020-03-04T10:10:07Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/a636005ba28c0344da5110bd8532184c74b6ffdf.zip",
           "https://github.com/bazelbuild/rules_cc/archive/a636005ba28c0344da5110bd8532184c74b6ffdf.zip"
      ],
      strip_prefix = "rules_cc-a636005ba28c0344da5110bd8532184c74b6ffdf",
      sha256 = "d4ec8670eebb46dad3fb225719f0322dff581f064ce1ddc487fb390a6524bba0",
    )

    # ********** rules_python *****************
    http_archive(
      name = "rules_python",  # 2020-03-04T17:01:26Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/abc4869e02fe9b3866942e89f07b7341f830e805.zip",
           "https://github.com/bazelbuild/rules_python/archive/abc4869e02fe9b3866942e89f07b7341f830e805.zip"
      ],
      strip_prefix = "rules_python-abc4869e02fe9b3866942e89f07b7341f830e805",
      sha256 = "d1e19ad3fb5da766f904da4efc038d1d9f9914eda26b3750f81823f4637a9ca8",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2020-03-03T22:32:55Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/b19ba96766db08b1f32605cb4424a0e7ea0c7584.zip",
           "https://github.com/abseil/abseil-cpp/archive/b19ba96766db08b1f32605cb4424a0e7ea0c7584.zip"
      ],
      strip_prefix = "abseil-cpp-b19ba96766db08b1f32605cb4424a0e7ea0c7584",
      sha256 = "a5df527e30574d1d19078d55b3df83e2eaeeb59d031daa2c300c0b0982b45e43",
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
