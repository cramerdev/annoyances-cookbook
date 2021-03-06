#
# Cookbook Name:: annoyances
# Recipe:: ubuntu
#
# Copyright 2012, Opscode, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

#freshen up the apt repository
execute("apt-get update") { ignore_failure true }.run_action(:run)

#turn off apparmor
service("apparmor") { action [:stop,:disable] }

#turn off byobu
file("/etc/profile.d/Z98-byobu") { action :delete }
