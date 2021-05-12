"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2021-05-10T15:35:04Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/ab5395627c80e025e824bd005d41f96b20618b9d.zip",
           "https://github.com/bazelbuild/rules_cc/archive/ab5395627c80e025e824bd005d41f96b20618b9d.zip"
      ],
      strip_prefix = "rules_cc-ab5395627c80e025e824bd005d41f96b20618b9d",
      sha256 = "f3908cb40a6577ab0d1ef9e00052739bf69b4313fa7d20b4d61d4521ea67abf3",
    )

    # ********** rules_python *****************
    http_archive(
      name = "rules_python",  # 2021-05-12T04:20:25Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/53ba6cbbb820d88ab6df966e4f558525fe82eb93.zip",
           "https://github.com/bazelbuild/rules_python/archive/53ba6cbbb820d88ab6df966e4f558525fe82eb93.zip"
      ],
      strip_prefix = "rules_python-53ba6cbbb820d88ab6df966e4f558525fe82eb93",
      sha256 = "53ca94c0a278668a4eb96bfee2f332916a4788313591751c2126aa88b9817997",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2021-05-11T13:59:12Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/7ba826e50dff1878e6ecc6b9af44097c040c8968.zip",
           "https://github.com/abseil/abseil-cpp/archive/7ba826e50dff1878e6ecc6b9af44097c040c8968.zip"
      ],
      strip_prefix = "abseil-cpp-7ba826e50dff1878e6ecc6b9af44097c040c8968",
      sha256 = "74fe093dfc0ffa485703fbd1ea2d61e509f0dccea08495152d1a28bcd8605156",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2021-04-29T14:40:44Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/f5e592d8ee5ffb1d9af5be7f715ce3576b8bf9c4.zip",
           "https://github.com/google/googletest/archive/f5e592d8ee5ffb1d9af5be7f715ce3576b8bf9c4.zip"
      ],
      strip_prefix = "googletest-f5e592d8ee5ffb1d9af5be7f715ce3576b8bf9c4",
      sha256 = "e61e3889bd5cc3e6bc1084d2108ecda2f110c0387ba88b394ffd16043a1d5709",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2021-05-11T11:56:00Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/7d0d9061d83b663ce05d9de5da3d5865a3845b79.zip",
           "https://github.com/google/benchmark/archive/7d0d9061d83b663ce05d9de5da3d5865a3845b79.zip"
      ],
      strip_prefix = "benchmark-7d0d9061d83b663ce05d9de5da3d5865a3845b79",
      sha256 = "a07789754963e3ea3a1e13fed3a4d48fac0c5f7f749c5065f6c30cd2c1529661",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2021-05-11T17:47:44Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/687659441920ab0dcff046368c49cf00841bae0f.zip",
           "https://github.com/google/tcmalloc/archive/687659441920ab0dcff046368c49cf00841bae0f.zip"
      ],
      strip_prefix = "tcmalloc-687659441920ab0dcff046368c49cf00841bae0f",
      sha256 = "a23d3f18126987c9a7cd82f892f7da5b68b024b4b3f4b0de4a29548798907bbe",
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
