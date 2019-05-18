require 'rspec'
require "sevisr"
require 'spec_helper'
require 'stringio'
load "spec/support/sevis_helpers.rb"

include SevisHelpers

RSpec.describe Sevisr::Client do
  let(:batch_id) {SevisHelpers.batch}
  context "with password" do

    it 'It reads the cert when a password is used' do
      client = build(:client)
      client.init
      expect(client.pks12).to be_instance_of(OpenSSL::PKCS12)
      expect(client.pks12.certificate).to_not be_nil
      expect(client.pks12.key).to_not be_nil
      expect(client.pks12.key).to be_instance_of(OpenSSL::PKey::RSA)

    end

  end
  it "Posts a batch" do
    client = build(:client)
    batch = build(:exchange_visitor_batch, :create)
    batch.batch_id = batch_id
    io = StringIO.new
    client.upload(batch, io)
    puts io.string
    expect(io.length()).to_not be_zero
  end

  it "Gets a batch" do
    client = build(:client)
    name = batch_id + ".zip"
    file = File.new(name, "w+")
    puts File.expand_path(file.path)
    client.get(SevisHelpers.org, batch_id, file)
    expect(file.length()).to_not be_zero
  end
end