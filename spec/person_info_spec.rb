require "sevisr/personal_info.rb"
require 'date'
require 'spec_helper'
require 'ffaker'
require 'Countries.rb'

RSpec.describe PersonalInfo do

  it "Prints out" do
#      person = build( :person, namef: FFaker::Name)
    person = build(:person, country: Countries::DE)
    puts person.to_xml
  end
end