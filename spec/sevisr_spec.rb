require 'spec_helper'

RSpec.describe Sevisr do
  it "has a version number" do
    expect(Sevisr::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(false).to eq(true)
  end

  it "requires a config/test.yml with proper keys" do
    expect(SevisHelpers.config["SEVIS_USER"]).not_to be nil
    expect(SevisHelpers.config["SEVIS_ORG"]).not_to be nil
    expect(SevisHelpers.config["SEVIS_PKS12_PATH"]).not_to be nil
    expect(SevisHelpers.config["SEVIS_PKS12_PASSWORD"]).not_to be nil
    expect(SevisHelpers.config["SEVIS_USER"]).not_to be nil
    expect(SevisHelpers.config["SEVIS_PK_PASSWORD"]).not_to be nil

  end
end

