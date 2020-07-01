"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2020-06-03T07:53:38Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/5cbd3dfbd1613f71ef29bbb7b10310b81e272975.zip",
           "https://github.com/bazelbuild/rules_cc/archive/5cbd3dfbd1613f71ef29bbb7b10310b81e272975.zip"
      ],
      strip_prefix = "rules_cc-5cbd3dfbd1613f71ef29bbb7b10310b81e272975",
      sha256 = "d6775fe03da086dfe47c668f54e77e220aa6e601a66a4517eaf19fa1d9fda309",
    )

    # ********** rules_python *****************
    http_archive(
      name = "rules_python",  # 2020-06-25T01:00:24Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/cd552725122fdfe06a72864e21a92b5093a1857d.zip",
           "https://github.com/bazelbuild/rules_python/archive/cd552725122fdfe06a72864e21a92b5093a1857d.zip"
      ],
      strip_prefix = "rules_python-cd552725122fdfe06a72864e21a92b5093a1857d",
      sha256 = "e4ddb2bf3c2e0ddfec5a1ab41e480661e65605c6e3c336fe85c5bd6a267dbc2e",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2020-06-30T20:12:34Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/81f34df8347a73c617f244f49cb916238857dc34.zip",
           "https://github.com/abseil/abseil-cpp/archive/81f34df8347a73c617f244f49cb916238857dc34.zip"
      ],
      strip_prefix = "abseil-cpp-81f34df8347a73c617f244f49cb916238857dc34",
      sha256 = "9770fd997b981855aab47fa5a33565912c5ff36fd88ed7400d7fa5b3e54c8897",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2020-06-26T16:04:14Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/aee0f9d9b5b87796ee8a0ab26b7587ec30e8858e.zip",
           "https://github.com/google/googletest/archive/aee0f9d9b5b87796ee8a0ab26b7587ec30e8858e.zip"
      ],
      strip_prefix = "googletest-aee0f9d9b5b87796ee8a0ab26b7587ec30e8858e",
      sha256 = "04a1751f94244307cebe695a69cc945f9387a80b0ef1af21394a490697c5c895",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2020-06-30T08:51:30Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/7f27afe83b82f3a98baf58ef595814b9d42a5b2b.zip",
           "https://github.com/google/benchmark/archive/7f27afe83b82f3a98baf58ef595814b9d42a5b2b.zip"
      ],
      strip_prefix = "benchmark-7f27afe83b82f3a98baf58ef595814b9d42a5b2b",
      sha256 = "9432f0e157bdb0a0688880b83b668731198cc16495ef9f63a088cb3fdce5ae57",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2020-06-30T20:20:54Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/c25e8c2d340c8a7a72922d7a136917577f92fe3b.zip",
           "https://github.com/google/tcmalloc/archive/c25e8c2d340c8a7a72922d7a136917577f92fe3b.zip"
      ],
      strip_prefix = "tcmalloc-c25e8c2d340c8a7a72922d7a136917577f92fe3b",
      sha256 = "31bdf7b310fc970ba483b48abf1d83411a96896d39d67ac0cb301d3711b2ab0c",
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
