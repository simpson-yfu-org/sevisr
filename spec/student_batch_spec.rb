require "sevisr/student_batch.rb"
require 'date'
require 'spec_helper'
require 'ffaker'
require 'Countries.rb'
require 'nokogiri'

RSpec.describe StudentBatch do
  before(:each) do
    Dir.chdir(File.expand_path("../xsd", File.dirname(File.expand_path(__FILE__)))) do
      @xsd = Nokogiri::XML::Schema(IO.read('Create-UpdateStudent.xsd'))
    end
  end

  it "Prints out" do
    batch = build(:student_batch, :create, :update)
    puts batch.to_xml
  end

  it "Validates" do
    batch = build(:student_batch, :create, :update)
    xml = Nokogiri::XML(batch.to_xml)
    puts @xsd.valid?(xml)
    if (!@xsd.valid?(xml))
      @xsd.validate(xml).each do |e|
        puts e
      end


    end

    expect(@xsd.valid?(xml)).to eq true
  end

end