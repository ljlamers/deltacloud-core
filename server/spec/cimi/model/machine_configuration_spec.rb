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
describe "MachineConfiguration model" do

  before(:all) do
    @xml = IO::read(File::join(DATA_DIR, "machine_configuration.xml"))
    @json = IO::read(File::join(DATA_DIR, "machine_configuration.json"))
  end

  it "can be constructed from XML" do
    conf = CIMI::Model::MachineConfiguration.from_xml(@xml)
    conf.should_not be_nil
    should_serialize_from_xml! conf, @xml, @json
  end

  it "can be constructed from JSON" do
    conf = CIMI::Model::MachineConfiguration.from_json(@json)
    conf.should_not be_nil
    should_serialize_from_json! conf, @xml, @json
  end

end
