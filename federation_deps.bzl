"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2021-08-13T08:53:39Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/d66a13e2a01630afcafc4ba411d83e291ecf02bd.zip",
           "https://github.com/bazelbuild/rules_cc/archive/d66a13e2a01630afcafc4ba411d83e291ecf02bd.zip"
      ],
      strip_prefix = "rules_cc-d66a13e2a01630afcafc4ba411d83e291ecf02bd",
      sha256 = "47a670ff6f1d4bb85eb2e15b52c818595cd392d06412da3159c3eeef8b3673da",
    )

    # ********** rules_python *****************
    http_archive(
      name = "rules_python",  # 2021-09-12T22:23:07Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/e1646c433d85643f4ee7035055d3784f3199411c.zip",
           "https://github.com/bazelbuild/rules_python/archive/e1646c433d85643f4ee7035055d3784f3199411c.zip"
      ],
      strip_prefix = "rules_python-e1646c433d85643f4ee7035055d3784f3199411c",
      sha256 = "13c68c3470372ba69ad1578c22dc3a6182a378a3c71939585020172c32b6efff",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2021-09-15T12:51:22Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/2f25e6ea5f91d1646aca2337719c9b4deb64100a.zip",
           "https://github.com/abseil/abseil-cpp/archive/2f25e6ea5f91d1646aca2337719c9b4deb64100a.zip"
      ],
      strip_prefix = "abseil-cpp-2f25e6ea5f91d1646aca2337719c9b4deb64100a",
      sha256 = "df92461f9d598e6c82aa5d5a2858349b5dedd76a57b9faaa9daf8f0db167c7f0",
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
      name = "com_github_google_tcmalloc",  # 2021-09-16T21:32:56Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/97349f177497783d2e8a96de57781a6e0456942c.zip",
           "https://github.com/google/tcmalloc/archive/97349f177497783d2e8a96de57781a6e0456942c.zip"
      ],
      strip_prefix = "tcmalloc-97349f177497783d2e8a96de57781a6e0456942c",
      sha256 = "64e2586170125f40017e6ffb1cc758a25c402b817297542f559309bc1ec5cf2a",
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
