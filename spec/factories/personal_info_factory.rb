require 'ffaker'
require "Countries.rb"
require "sevisr"

FactoryBot.define do
  factory :person, class: Sevisr::PersonalInfo do
    transient do
      country {Countries::DE}
    end


    trait :us do
      remarks {"US"}
    end

    lastName {country.namef.last_name}
    firstName {country.namef.first_name}
    passportName {"#{firstName} #{lastName}"}
    preferredName {"Johnny"}
    birth_date {DateTime.now << 12 * 15}
    birth_country_code {country.country_code}
    gender {"M"}
    citizenship_status {"03"}
    citizenship_country_code {country.country_code}
    email {FFaker::Internet.email}
    commuter {false}
    visa_type {"01"}
    phoneNumber {country.country_code == "US" ? country.phonef.short_phone_number : country.phonef.phone_number}
    countryNumber {country.country_code != "US" ? country.phonef.country_code.delete("+") : nil}
    telephoneExemptInd {"N"}

  end
end