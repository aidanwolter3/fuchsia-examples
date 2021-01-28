DOWNLOAD_SDK_SH="""
#!/bin/bash

sdk_url="$1"
branch="$2"

git init
git remote add origin "${sdk_url}"
git fetch origin "${branch}"
git checkout "${branch}"
"""


def _impl(repository_ctx):
  repository_ctx.file("BUILD", content="", executable=False)

  if repository_ctx.os.name == "linux":
    branch = "linux"
  elif repository_ctx.os.name == "mac os x":
    branch = "mac"
  else:
    fail("Unsupported platform: %s" % repository_ctx.os.name)

  repository_ctx.file("download_sdk.sh", content=DOWNLOAD_SDK_SH)
  sdk_url = "https://github.com/aidanwolter3/fuchsia-bazel-sdk"
  repository_ctx.execute(["./download_sdk.sh", sdk_url, branch])


download_fuchsia_sdk = repository_rule(
    implementation = _impl,
)
