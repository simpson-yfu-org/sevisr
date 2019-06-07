require "sevisr"
require 'date'
require 'spec_helper'
require 'ffaker'
require 'Countries.rb'
require 'nokogiri'

RSpec.describe Sevisr::StudentBatch do
  before(:each) do
    Dir.chdir(File.expand_path("../xsd", File.dirname(File.expand_path(__FILE__)))) do
      @xsd = Nokogiri::XML::Schema(IO.read('Create-UpdateStudent.xsd'))
    end
  end

  def validate(batch)
    xml = Nokogiri::XML(batch.to_xml)
    if !@xsd.valid?(xml)
      @xsd.validate(xml).each(&method(:puts))
      puts batch.to_xml

    end

    expect(@xsd.valid?(xml)).to be true

  end


  it "Validates on update of 1" do
    batch = build(:student_batch)
    batch.update_list = build_list(:student, 1, :update)
    validate(batch)
  end

  it "Validates on create of 1" do
    batch = build(:student_batch)
    batch.create_list = build_list(:student, 1, :create)
    validate(batch)
  end

end