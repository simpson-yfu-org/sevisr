require 'ffaker'
require "Countries.rb"
require "sevisr"
load "spec/support/sevis_helpers.rb"


FactoryBot.define do
  factory :student, class: Sevisr::Student do
    transient do
      country {Countries::DE}
    end


    trait :us do
      remarks {"US"}
    end

    sequence(:requestID) {|n| "req#{n}"}
    userID {SevisHelpers.user}
    printForm {"true"}
    userDefinedA {FFaker::Lorem.phrase[0, 10]}
    userDefinedB {FFaker::Lorem.phrase[0, 14]}
    association :personal_info, factory: :person, strategy: :build
    association :foreignAddress, factory: :foreignAddress, strategy: :build
    association :uSAddress, factory: :usAddress, strategy: :build
    association :mailingAddress, factory: :usAddress, strategy: :build
    issueReason {"I"}

  end
end