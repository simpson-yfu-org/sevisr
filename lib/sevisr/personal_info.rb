require 'nokogiri'
require 'date'
module Sevisr
#   lastName - SOAP::SOAPString
#   firstName - SOAP::SOAPString
#   passportName - SOAP::SOAPString
#   preferredName - SOAP::SOAPString
#   suffix -   I, II, III, IV, Jr., or Sr.
#   birthDate - DateTime
#   gender - F, M, or U
#   birthCountryCode - Sevis::BirthCntryCodeType
#   citizenshipStatus - 03 or 04
#   citizenshipCountryCode - IS Code
#   email - (any)
#   commuter - (any)
#   visaType - 01 or 02
#   telephoneExemptInd - Y or N
#   countryNumber - Leave nil if US otherwise country code.
#   phoneNumber - SOAP::SOAPString
#   uSAddress USAddress
#   mailingAddress USAddress
#   foreignAddress ForeignAddress
# remarks SOAP::SOAPString
# printForm Y or N
  class PersonalInfo
    attr_accessor :lastName
    attr_accessor :firstName
    attr_accessor :passportName
    attr_accessor :preferredName
    attr_accessor :suffix
    attr_accessor :birth_date
    attr_accessor :gender
    attr_accessor :birth_country_code
    attr_accessor :citizenship_status
    attr_accessor :citizenship_country_code
    attr_accessor :email
    attr_accessor :commuter
    attr_accessor :visa_type
    attr_accessor :telephoneExemptInd
    attr_accessor :countryNumber
    attr_accessor :phoneNumber


    def initialize(lastName: nil, firstName: nil, passportName: nil, preferredName: nil, suffix: nil, birth_date: nil, gender: nil, birth_country_code: nil, citizenship_status: nil, citizenship_country_code: nil, email: nil, commuter: nil, visa_type: nil, telephoneExemptInd: nil, countryNumber: nil, phoneNumber: nil)
      @lastName = lastName
      @firstName = firstName
      @passportName = passportName
      @preferredName = preferredName
      @suffix = suffix
      @birth_date = birth_date
      @gender = gender
      @birth_country_code = birth_country_code
      @citizenship_status = citizenship_status
      @citizenship_country_code = citizenship_country_code
      @email = email
      @commuter = commuter
      @visaType = visa_type
      @telephoneExemptInd = telephoneExemptInd
      @countryNumber = countryNumber
      @phoneNumber = phoneNumber
    end

    def to_xml
      builder = Nokogiri::XML::Builder.new do |xml|
        xml.PersonalInfo {
          xml.FullName {
            xml.LastName lastName if lastName
            xml.FirstName firstName if firstName
            xml.PassportName passportName if passportName
            xml.PreferredName preferredName if preferredName
            xml.Suffix suffix if suffix
          } if lastName
          xml.BirthDate birth_date.strftime("%Y-%m-%d") if birth_date
          xml.Gender gender
          xml.BirthCountryCode birth_country_code
          xml.CitizenshipStatus citizenship_status
          xml.CitizenshipCountryCode citizenship_country_code
          xml.Email email
          xml.Commuter commuter if commuter
          xml.VisaType visa_type
          xml.Telephone {
            xml.TelephoneExemptInd telephoneExemptInd
            xml.Phone {
            if countryNumber.nil? || countryNumber == "01" || countryNumber == "1"
              xml.USNumber phoneNumber
            else
            xml.Foreign {
              xml.CountryNumber countryNumber if countryNumber
              xml.PhoneNumber phoneNumber
            }
            end
            }
          } if phoneNumber
        }
      end
      builder.to_xml(:save_with => Nokogiri::XML::Node::SaveOptions::NO_DECLARATION)
    end


  end
end