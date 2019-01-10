require 'ffaker'
require "Countries.rb"
require "sevisr/exchange_visitor_batch.rb"
load "spec/support/sevis_helpers.rb"

include SevisHelpers

FactoryBot.define do
  factory :exchange_visitor_batch, class: ExchangeVisitorBatch do
    transient do
      exchange_visitor_count {5}
    end

    user_id {SevisHelpers.user}
    org_id {SevisHelpers.org}
    batch_id {SevisHelpers.batch}

    trait :update do
      update_list {build_list(:exchange_visitor, exchange_visitor_count, :update)}
    end

    trait :create do
      create_list {build_list(:exchange_visitor, exchange_visitor_count, :create, :with_boarding_school)}
      # create_list(:create_list, student_count, {factory: :student, strategy: :build})
    end

  end
end