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

    trait :create do
      printForm {"true"}
      association :personal_info, :create, factory: :person, strategy: :build
      association :financial_info, factory: :financial_info, strategy: :build
    end

    trait :update do
      sequence(:sevisID) {|n| "N#{n.to_s.rjust(10, "0")}"}
      association :personal_info, :print, factory: :person, strategy: :build
    end


    sequence(:requestID) {|n| "req#{n}"}
    userID {SevisHelpers.user}
    userDefinedA {FFaker::Lorem.phrase[0, 10]}
    userDefinedB {FFaker::Lorem.phrase[0, 14]}
    association :foreignAddress, factory: :foreignAddress, strategy: :build
    association :uSAddress, factory: :usAddress, strategy: :build
    association :mailingAddress, factory: :usAddress, strategy: :build
    association :educationalInfo, factory: :educational_info, strategy: :build
    issueReason {"I"}

  end
end