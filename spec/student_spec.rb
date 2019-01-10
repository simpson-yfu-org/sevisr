require "sevisr/student.rb"
require "sevisr/personal_info.rb"
require 'ffaker'
require 'Countries.rb'
require 'spec_helper'


RSpec.describe Student do

  it "Prints out" do
    student = build(:student, country: Countries::DE)
    puts student.to_xml
  end
end