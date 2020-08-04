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
      name = "com_google_absl",  # 2020-08-03T17:24:24Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/1995c6a3c2f9080160d9d8716504dc004e5e1ec0.zip",
           "https://github.com/abseil/abseil-cpp/archive/1995c6a3c2f9080160d9d8716504dc004e5e1ec0.zip"
      ],
      strip_prefix = "abseil-cpp-1995c6a3c2f9080160d9d8716504dc004e5e1ec0",
      sha256 = "868450dd403f596f2bc3152dd8cf8c0af5c4c75a765c47b7864e3c78e8c23411",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2020-07-31T18:51:45Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/e6e2d3b7614ff4e6017d8968bd4c3f579133666e.zip",
           "https://github.com/google/googletest/archive/e6e2d3b7614ff4e6017d8968bd4c3f579133666e.zip"
      ],
      strip_prefix = "googletest-e6e2d3b7614ff4e6017d8968bd4c3f579133666e",
      sha256 = "04aabd17e7aea20f95f2c6f52e79b57d0813ea4d889bd2c533299a446dfbf926",
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
      name = "com_github_google_tcmalloc",  # 2020-07-31T21:44:47Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/78a35a4393393a4752fde3181ac49d67ce990df0.zip",
           "https://github.com/google/tcmalloc/archive/78a35a4393393a4752fde3181ac49d67ce990df0.zip"
      ],
      strip_prefix = "tcmalloc-78a35a4393393a4752fde3181ac49d67ce990df0",
      sha256 = "676d97a24ba26cb59092b631a40da64c11225f8dac77855fda328309839a10e8",
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
