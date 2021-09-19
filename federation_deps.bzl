"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2021-09-17T09:46:42Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/dd2758b96dc8f9f4add81eaa4154b7e3d8be6873.zip",
           "https://github.com/bazelbuild/rules_cc/archive/dd2758b96dc8f9f4add81eaa4154b7e3d8be6873.zip"
      ],
      strip_prefix = "rules_cc-dd2758b96dc8f9f4add81eaa4154b7e3d8be6873",
      sha256 = "4e14abe3f288b5ae31eee4dc68472bfcd8d59a0bb1be91dd2c6bfa8af56baf19",
    )

    # ********** rules_python *****************
    http_archive(
      name = "rules_python",  # 2021-09-17T23:36:10Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/ea1bb2bae51ce96bb43bc7d87f948672135bf5c8.zip",
           "https://github.com/bazelbuild/rules_python/archive/ea1bb2bae51ce96bb43bc7d87f948672135bf5c8.zip"
      ],
      strip_prefix = "rules_python-ea1bb2bae51ce96bb43bc7d87f948672135bf5c8",
      sha256 = "991cca79f2d40d08ad87bba02bfe78a70c00629836e2c0d77268231546ffa1b2",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2021-09-17T13:19:46Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/de71511109d967000e68baedb75de104adb2b778.zip",
           "https://github.com/abseil/abseil-cpp/archive/de71511109d967000e68baedb75de104adb2b778.zip"
      ],
      strip_prefix = "abseil-cpp-de71511109d967000e68baedb75de104adb2b778",
      sha256 = "729567550d22e7e1c948bea89dd68697be24c4b77da87b8a2e05d76faa9ea52d",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2021-09-16T17:00:21Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/40dfd4b775a66979ad1bd19321cdfd0feadfea27.zip",
           "https://github.com/google/googletest/archive/40dfd4b775a66979ad1bd19321cdfd0feadfea27.zip"
      ],
      strip_prefix = "googletest-40dfd4b775a66979ad1bd19321cdfd0feadfea27",
      sha256 = "854748f8be6cfaf74ecf31c205d73bdf7ae2d5176efe4e7fd64738f33d745592",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2021-09-13T20:00:14Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/713b9177183375c8b1b25595e33daf2a1625df5b.zip",
           "https://github.com/google/benchmark/archive/713b9177183375c8b1b25595e33daf2a1625df5b.zip"
      ],
      strip_prefix = "benchmark-713b9177183375c8b1b25595e33daf2a1625df5b",
      sha256 = "5cffc1043e6ba948e7fd16b0f97472ab17af07615726aa0cbf5361e4dca27597",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2021-09-17T16:51:52Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/53e1d5aeee49fa1a213cb1ce4ad0b287658b4b4f.zip",
           "https://github.com/google/tcmalloc/archive/53e1d5aeee49fa1a213cb1ce4ad0b287658b4b4f.zip"
      ],
      strip_prefix = "tcmalloc-53e1d5aeee49fa1a213cb1ce4ad0b287658b4b4f",
      sha256 = "8757831f3fd0fb0b637c5e3a2272f78721cf01207eb7c2e7656005c98a37dcf9",
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
    # ********** rules_fuzzing (pinned to 0.1.3) *****************
    http_archive(
      name = "rules_fuzzing",
      sha256 = "94f25c7a18db0502ace26a3ef7d0a25fd7c195c4e9770ddd1b1ec718e8936091",
      strip_prefix = "rules_fuzzing-0.1.3",
      # Use the same URL twice to trick bazel into re-trying if connection fails
      urls = [
          "https://github.com/bazelbuild/rules_fuzzing/archive/v0.1.3.zip",
          "https://github.com/bazelbuild/rules_fuzzing/archive/v0.1.3.zip"
      ],
    )
