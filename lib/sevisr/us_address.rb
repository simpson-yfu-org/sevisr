module Sevisr

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
    attr_accessor :addressDoctorExplanationCode
    attr_accessor :addressDoctorExplanation

    def initialize(address1: nil, address2: nil, city: nil, state: nil, postalCode: nil, postalRoutingCode: nil, addressDoctorExplanationCode: nil, addressDoctorExplanation: nil)
      @address1 = address1
      @address2 = address2
      @city = city
      @state = state
      @postalCode = postalCode
      @postalRoutingCode = postalRoutingCode
      @addressDoctorExplanationCode = addressDoctorExplanationCode
      @addressDoctorExplanation = addressDoctorExplanation

    end

    def to_xml
      frag = Nokogiri::XML::DocumentFragment.parse("")
      Nokogiri::XML::Builder.with(frag) do |xml|
        xml.Address1 address1
        xml.Address2 address2 if address2
        xml.City city
        xml.State state
        xml.PostalCode postalCode
        xml.PostalRoutingCode postalRoutingCode if postalRoutingCode
        xml.ExplanationCode addressDoctorExplanationCode if addressDoctorExplanationCode
        xml.Explanation addressDoctorExplanation if addressDoctorExplanation
      end
      frag.to_xml
    end
  end
end