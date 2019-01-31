require "sevisr"
require 'date'
require 'spec_helper'
require 'ffaker'
require 'Countries.rb'

RSpec.describe Sevisr::PersonalInfo do

  it "Prints out" do
#      person = build( :person, namef: FFaker::Name)
    person = build(:person, country: Countries::DE)
    puts person.to_xml
  end
end