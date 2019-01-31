require 'ffaker'
require "Countries.rb"
require "sevisr"

FactoryBot.define do
  factory :usAddress, class: Sevisr::USAddress do

    transient do
      country {Countries::US}
      address {country.addressf}
    end


    address1 {address.street_address}
    address2 {address.secondary_address}
    city {address.city}
    state {address.state_abbr}
    postalCode {address.zip_code.slice(0, 5)}

  end
end