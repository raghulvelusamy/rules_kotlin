# Copyright 2018 The Bazel Authors. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

load(
    "//src/main/starlark/core/repositories:download.bzl",
    _kt_download_local_dev_dependencies = "kt_download_local_dev_dependencies",
)

def kt_download_local_dev_dependencies():
<<<<<<< HEAD
    print("""kt_download_local_dev_dependencies is deprecated. To use rules_kotlin locally, change
the WORKSPACE loading from:

local_repository(
    name = "io_bazel_rules_kotlin",
    path = "<path/to/rules_kotlin>",
)

load("@dev_io_bazel_rules_kotlin//kotlin:dependencies.bzl", "kt_download_local_dev_dependencies")
kt_download_local_dev_dependencies()

To:

local_repository(
    name = "release_archive",
    path = "<path/to/rules_kotlin>/src/main/starlark/release_archive",
)
load("@release_archive//:repository.bzl", "archive_repository")


archive_repository(
    name = "io_bazel_rules_kotlin",
)""")
=======
>>>>>>> 76554453 (Remove print warning from kt_download_local_dev_dependencies)
    _kt_download_local_dev_dependencies()
