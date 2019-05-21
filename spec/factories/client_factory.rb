require "sevisr"
load "spec/support/sevis_helpers.rb"

include SevisHelpers

FactoryBot.define do
  factory :client, class: Sevisr::Client do

    user {SevisHelpers.user}
    pks_password {SevisHelpers.pks12_password}
    pks_path {SevisHelpers.pks_path}
    url {Sevisr::Client::SEVIS_DEV}

    initialize_with {new(url: url, user: user, pks12_path: pks_path, pks12_password: pks_password)}

  end
end