require 'ffaker'
require "Countries.rb"
require "sevisr/student_batch.rb"
load "spec/support/sevis_helpers.rb"

include SevisHelpers

FactoryBot.define do
  factory :student_batch, class: StudentBatch do
    transient do
      student_count {5}
    end

    user_id {SevisHelpers.user}
    org_id {SevisHelpers.org}
    batch_id {SevisHelpers.batch}

    trait :update do
      update_list {build_list(:student, student_count)}
    end

    trait :create do
      create_list {build_list(:student, student_count)}
      # create_list(:create_list, student_count, {factory: :student, strategy: :build})
    end

  end
end