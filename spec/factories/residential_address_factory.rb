require 'ffaker'
require "Countries.rb"
require "sevisr/residential_address"
require "date"
load "spec/support/sevis_helpers.rb"


FactoryBot.define do
  factory :residential_address, class: ResidentialAddress do

    lc_lastname {FFaker::Name.last_name}
    lc_firstname {FFaker::Name.first_name}
    lc_postal_code {FFaker::AddressUS.zip_code.slice(0, 5)}

    contact_lastname {FFaker::Name.last_name}
    contact_firstname {FFaker::Name.first_name}

    factory :residential_address_with_host_family do
      residentialType {"HST"}
      hf_lastname {FFaker::Name.last_name}
      hf_firstname {FFaker::Name.first_name}
      hf_phone {FFaker::PhoneNumber.short_phone_number}
      hf_phoneExt {"1234"}
      hostFamilyInd {}
    end

    factory :residential_address_with_boarding_school do
      residentialType {"BRD"}
      bs_name {"Gonzaga High School"}
      bs_phoneExt {"1234"}
      bs_phone {FFaker::PhoneNumber.short_phone_number}
      bs_PCTitle {"Principle"}
    end


  end
end