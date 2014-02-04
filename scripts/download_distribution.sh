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
sha1_checksum=938ced80825a7e1e4d36ac06bef7130ff009a9e1

echo "fetching j2objc"
curl -O https://github.com/beneiltis/j2objc/archive/${j2objc_version}.zip
sha1sum ${j2objc_version}.zip
sha1sum -c - <<EOF
${sha1_checksum} ${j2objc_version}.zip
EOF
unzip -o -q ${j2objc_version}.zip
mv ${j2objc_version} dist