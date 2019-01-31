require "sevisr"
require 'ffaker'
require 'Countries.rb'
require 'spec_helper'


RSpec.describe Sevisr::Student do

  it "Prints out" do
    student = build(:student, country: Countries::DE)
    puts student.to_xml
  end
end