require 'ffaker'

module Countries

  class CountryHolder
    attr_accessor :namef
    attr_accessor :addressf
    attr_accessor :phonef
    attr_accessor :country_code

    def initialize (namef = FFaker::Name, addressf = FFaker::AddressUS, phonef = FFaker::PhoneNumber, country_code = "US")
      @namef = namef
      @addressf = addressf
      @phonef = phonef
      @country_code = country_code
    end
  end
  US = CountryHolder.new(FFaker::Name, FFaker::AddressUS, FFaker::PhoneNumber, "US")
  DE = CountryHolder.new(FFaker::NameDE, FFaker::AddressDE, FFaker::PhoneNumberDE, "GE")
end
