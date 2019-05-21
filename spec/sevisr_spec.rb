require 'rspec'
require "sevisr"
require 'spec_helper'
load "spec/support/sevis_helpers.rb"

RSpec.describe Sevisr do
  it "has a version number" do
    expect(Sevisr::VERSION).not_to be nil
  end

  it "Posts a batch" do
    client = build(:client)
    batch = build(:exchange_visitor_batch, :create)
    io = StringIO.new
    hash = Sevisr.batch_upload(batch: batch, client: client, io: io)
    puts io.string
    expect(io.length).to_not be_zero
    puts hash
    puts hash.dig("TransactionLog", "BatchDetail", "Upload", "resultCode")
    expect(hash.dig("TransactionLog", "BatchDetail", "Upload", "resultCode")).to eq "S0000"
  end

  it "Gets a batch" do
    client = build(:client)

    file = Tempfile.new(['batch', '.zip'])
    puts File.expand_path(file.path)
    hash = Sevisr::batch_download(org_id: SevisHelpers.org, batch_id: SevisHelpers.sevis_good_batch_id, client: client, file: file)
    file.close
    puts hash
    expect(file.length).to_not be_zero
    puts hash.dig("TransactionLog", "BatchDetail", "Download", "resultCode")
    expect(hash.dig("TransactionLog", "BatchDetail", "Download", "resultCode")).to eq "S0000"

  end
  it "requires a config/test.yml with proper keys" do
    expect(SevisHelpers.config["SEVIS_USER"]).not_to be nil
    expect(SevisHelpers.config["SEVIS_ORG"]).not_to be nil
    expect(SevisHelpers.config["SEVIS_PKS12_PATH"]).not_to be nil
    expect(SevisHelpers.config["SEVIS_PKS12_PASSWORD"]).not_to be nil
    expect(SevisHelpers.config["SEVIS_USER"]).not_to be nil
    expect(SevisHelpers.config["SEVIS_PK_PASSWORD"]).not_to be nil
    expect(SevisHelpers.config["SEVIS_GOOD_BATCH_ID"]).not_to be nil

  end
end

