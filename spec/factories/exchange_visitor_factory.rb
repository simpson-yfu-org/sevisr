require 'ffaker'
require "Countries.rb"
require "sevisr"
require "date"
load "spec/support/sevis_helpers.rb"


FactoryBot.define do
  factory :exchange_visitor, class: Sevisr::ExchangeVisitor do
    transient do
      country {Countries::DE}
    end


    trait :us do
      remarks {"US"}
    end

    sequence(:requestID) {|n| "req#{n}"}
    userID {SevisHelpers.user}
    printForm {"true"}
    user_defined_a {FFaker::Lorem.phrase[0, 10]}
    user_defined_b {FFaker::Lorem.phrase[0, 14]}
    lastName {country.namef.last_name}
    firstName {country.namef.first_name}
    passportName {"#{firstName} #{lastName}"}
    preferredName {"Johnny"}
    birth_date {DateTime.now << 12 * 15}
    birth_city {country.addressf.city}
    birth_country_code {country.country_code}
    permanent_residence_country_code {country.country_code}
    gender {"M"}
    citizenship_country_code {country.country_code}
    email {FFaker::Internet.email}
    phoneNumber {Countries::US.phonef.short_phone_number.delete "-"}
    position_code {223}
    category_code {'1A'}
    prg_start_date {FFaker::Time.between(Date.today + 30, Date.today + 30 * 3)}
    prg_end_date {prg_start_date + 11 * 30}
    subject_field_code {"53.0299"}
    subject_field_remarks {"none"}
    received_us_govt_funds {false}
    other_funds_personal {Random.rand(4000..400000)}
    add_soas {[Sevisr::SOA.new(build(:usAddress), 'Site name', 1)]}


    trait :exempt do
      add_soas {[Sevisr::SOAExempt.new("Exempt SOA")]}
    end
    trait :create do

    end

    trait :update do
      sequence(:sevisID) {|n| "N#{n.to_s.rjust(10, "0")}"}
    end

    trait :with_host_family do
      association :residential_address, factory: :residential_address_with_host_family, strategy: :build
    end

    trait :with_boarding_school do
      association :residential_address, factory: :residential_address_with_boarding_school, strategy: :build
    end

    association :us_address, factory: :usAddress, strategy: :build
    association :mailing_address, factory: :usAddress, strategy: :build


  end
end