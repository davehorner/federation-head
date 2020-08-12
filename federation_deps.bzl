"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2020-07-28T15:17:49Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/1477dbab59b401daa94acedbeaefe79bf9112167.zip",
           "https://github.com/bazelbuild/rules_cc/archive/1477dbab59b401daa94acedbeaefe79bf9112167.zip"
      ],
      strip_prefix = "rules_cc-1477dbab59b401daa94acedbeaefe79bf9112167",
      sha256 = "98a6966d66b0533b19fc98e0f62862095facfc991521ffa5604f985b7d631b88",
    )

    # ********** rules_python *****************
    http_archive(
      name = "rules_python",  # 2020-08-03T19:04:05Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/e3df8bcf0f675d20aaf752c8ba32a0259dd79996.zip",
           "https://github.com/bazelbuild/rules_python/archive/e3df8bcf0f675d20aaf752c8ba32a0259dd79996.zip"
      ],
      strip_prefix = "rules_python-e3df8bcf0f675d20aaf752c8ba32a0259dd79996",
      sha256 = "55b2a39c703a2dd964345ec84f3752d4137db5cf02d5a241ebaecf16bae259ec",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2020-08-12T06:02:29Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/1b7e751e58ce7d40ac7d1ffd944a8e6928994dfa.zip",
           "https://github.com/abseil/abseil-cpp/archive/1b7e751e58ce7d40ac7d1ffd944a8e6928994dfa.zip"
      ],
      strip_prefix = "abseil-cpp-1b7e751e58ce7d40ac7d1ffd944a8e6928994dfa",
      sha256 = "5b4b441369818bf9363087da698601604a32421a18756875c1e00013d6617afd",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2020-08-12T06:41:20Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/10ade8473b698a8fe14ddb518c2abd228669657a.zip",
           "https://github.com/google/googletest/archive/10ade8473b698a8fe14ddb518c2abd228669657a.zip"
      ],
      strip_prefix = "googletest-10ade8473b698a8fe14ddb518c2abd228669657a",
      sha256 = "2dee7341acd0fe830a4164a673c423e5857f5a84ee5e506daa9cb7a52d38e3b3",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2020-07-30T08:51:48Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/1302d2ce094a9753b0f81a81ea74c0fa71fae582.zip",
           "https://github.com/google/benchmark/archive/1302d2ce094a9753b0f81a81ea74c0fa71fae582.zip"
      ],
      strip_prefix = "benchmark-1302d2ce094a9753b0f81a81ea74c0fa71fae582",
      sha256 = "63db6689e3c4f3281c9c620de3094c9910e7a9f503cba020e9cdc1d62c55c5f0",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2020-08-10T17:07:43Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/c3c2479cbc7e4dc649fcfa95fca2e89385412537.zip",
           "https://github.com/google/tcmalloc/archive/c3c2479cbc7e4dc649fcfa95fca2e89385412537.zip"
      ],
      strip_prefix = "tcmalloc-c3c2479cbc7e4dc649fcfa95fca2e89385412537",
      sha256 = "d298d6db90b117f241da91b12ad93a6cfaa68a501497f4fd615186f36c1f4f11",
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
