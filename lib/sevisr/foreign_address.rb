# {http://www.ice.gov/xmlschema/sevisbatch/Common}ForeignAddrType
#   address1 - SOAP::SOAPString
#   address2 - SOAP::SOAPString
#   city - SOAP::SOAPString
#   province - SOAP::SOAPString
#   countryCode - Sevis::CntryCodeWithoutType
#   postalCode - SOAP::SOAPString
class ForeignAddress
  attr_accessor :address1
  attr_accessor :address2
  attr_accessor :city
  attr_accessor :province
  attr_accessor :countryCode
  attr_accessor :postalCode

  def initialize(address1 = nil, address2 = nil, city = nil, province = nil, countryCode = nil, postalCode = nil)
    @address1 = address1
    @address2 = address2
    @city = city
    @province = province
    @countryCode = countryCode
    @postalCode = postalCode
  end

  def to_xml
    builder = Nokogiri::XML::Builder.new do |xml|
      xml.Address1 address1
      xml.Address2 address2 if address2
      xml.City city if city
      xml.Province province if province
      xml.CountryCode countryCode if countryCode
      xml.PostalCode postalCode if postalCode
    end
    builder.to_xml
  end
end