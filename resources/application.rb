# encoding: UTF-8
#
# Cookbook Name:: openstack-application-catalog
# Resource:: application
#
# Copyright 2016, Mirantis Inc.
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

actions :create, :destroy

# In earlier versions of Chef the LWRP DSL doesn't support specifying
# a default action, so you need to drop into Ruby.
def initialize(*args)
  super
  @action = :create
end

attribute :name, kind_of: String
attribute :category, kind_of: String
attribute :identity_user, kind_of: String
attribute :identity_pass, kind_of: String
attribute :identity_tenant, kind_of: String
attribute :identity_uri, kind_of: String
attribute :is_public, kind_of: [TrueClass, FalseClass], default: false
