# Licensed to the Apache Software Foundation (ASF) under one or more
# contributor license agreements.  See the NOTICE file distributed with
# this work for additional information regarding copyright ownership.  The
# ASF licenses this file to you under the Apache License, Version 2.0 (the
# "License"); you may not use this file except in compliance with the
# License.  You may obtain a copy of the License at
#
#       http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
# WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  See the
# License for the specific language governing permissions and limitations
# under the License.
#
require 'rubygems'
require 'require_relative' if RUBY_VERSION < '1.9'

require_relative '../spec_helper.rb' if require 'minitest/autorun'

describe "Volume model" do

  before do
    @xml = read_data_file("volume.xml")
    @json = read_data_file("volume.json")
  end

  it "can be constructed from XML and JSON" do
    should_properly_serialize_model CIMI::Model::Volume, @xml, @json
  end

end
