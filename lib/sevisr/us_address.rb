# {http://www.ice.gov/xmlschema/sevisbatch/Common}USAddressType
#   address1 - SOAP::SOAPString
#   address2 - SOAP::SOAPString
#   city - SOAP::SOAPString
#   state - Sevis::StateCodeType
#   postalCode - (any)
#   postalRoutingCode - (any)
class USAddress
  attr_accessor :address1
  attr_accessor :address2
  attr_accessor :city
  attr_accessor :state
  attr_accessor :postalCode
  attr_accessor :postalRoutingCode

  def initialize(address1 = nil, address2 = nil, city = nil, state = nil, postalCode = nil, postalRoutingCode = nil)
    @address1 = address1
    @address2 = address2
    @city = city
    @state = state
    @postalCode = postalCode
    @postalRoutingCode = postalRoutingCode
  end

  def to_xml
    builder = Nokogiri::XML::Builder.new do |xml|
      xml.Address1 address1
      xml.Address2 address2 if address2
      xml.City city
      xml.State state
      xml.PostalCode postalCode
      xml.PostalRoutingCode postalRoutingCode if postalRoutingCode
    end
    builder.to_xml
  end
end