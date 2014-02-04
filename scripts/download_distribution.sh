#!/bin/bash

# Copyright (C) 2013 Goodow.com
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

j2objc_version=0.9
sha1_checksum=5866b70ea31c4f393c687444c66391a736bf7f76

echo "fetching j2objc"
curl -L -O https://github.com/beneiltis/j2objc/releases/download/0.9/j2objc-${j2objc_version}.zip
shasum j2objc-${j2objc_version}.zip
shasum j2objc-${j2objc_version}.zip | grep -w ${sha1_checksum}
unzip -o -q -d dist j2objc-${j2objc_version}.zip