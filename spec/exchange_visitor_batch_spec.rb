require "sevisr"
require 'date'
require 'spec_helper'
require 'ffaker'
require 'Countries.rb'
require 'nokogiri'
require 'active_support'
require 'active_support/core_ext'

RSpec.describe Sevisr::ExchangeVisitorBatch do

  def validate(batch)
    xml = Nokogiri::XML(batch.to_xml)
    if !@xsd.valid?(xml)
      @xsd.validate(xml).each do |e|
        puts e
      end
      puts batch.to_xml

    end

    expect(@xsd.valid?(xml)).to be true

  end

  before(:each) do
    Dir.chdir(File.expand_path("../xsd", File.dirname(File.expand_path(__FILE__)))) do
      @xsd = Nokogiri::XML::Schema(IO.read('Create-UpdateExchangeVisitor.xsd'))
    end
  end

  it "Validates on update of 1" do
    batch = build(:exchange_visitor_batch)
    batch.update_list = build_list(:exchange_visitor, 1, :update)
    validate(batch)
  end

  it "Validates on create of 1" do
    batch = build(:exchange_visitor_batch)
    batch.create_list = build_list(:exchange_visitor, 1, :create)
    validate(batch)
  end


  it "Validates on update of 5" do
    batch = build(:exchange_visitor_batch)
    batch.update_list = build_list(:exchange_visitor, 5, :update)
    validate(batch)
  end

  it "Validates on create of 5" do
    batch = build(:exchange_visitor_batch)
    batch.create_list = build_list(:exchange_visitor, 5, :create)
    validate(batch)
  end

  it "Validates with both create and update" do
    batch = build(:exchange_visitor_batch)
    batch.create_list = build_list(:exchange_visitor, 1, :create)
    batch.update_list = build_list(:exchange_visitor, 1, :update)
    validate(batch)
  end

  it "Validates on create with host family" do
    batch = build(:exchange_visitor_batch)
    batch.create_list = build_list(:exchange_visitor, 1, :create, :with_host_family)

    validate(batch)
  end

  it "Validates on create with boarding school" do
    batch = build(:exchange_visitor_batch)
    batch.create_list = build_list(:exchange_visitor, 1, :create, :with_boarding_school)

    validate(batch)
  end

  it "Validates on update with host family" do
    batch = build(:exchange_visitor_batch)
    batch.update_list = build_list(:exchange_visitor, 1, :update, :with_host_family)

    validate(batch)
  end

  it "Validates on upodate with boarding school" do
    batch = build(:exchange_visitor_batch)
    batch.update_list = build_list(:exchange_visitor, 1, :update, :with_boarding_school)

    validate(batch)
  end

  it "Makes a hash" do
    batch = build(:exchange_visitor_batch)
    batch.update_list = build_list(:exchange_visitor, 1, :update, :with_boarding_school)
    hash = Hash.from_xml(batch.to_xml)
    p hash
  end


end