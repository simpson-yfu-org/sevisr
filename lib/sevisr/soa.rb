module Sevisr
  class SOA


    attr_accessor :explanationCode, :siteName, :address, :explanation, :primarySite, :remarks

    def initialize(address, siteName, primarySite, explanationCode: nil, explanation: nil, remarks: nil)
      @address = address
      @explanationCode = explanationCode
      @explanation = explanation
      @siteName = siteName
      @primarySite = primarySite
      @remarks = remarks


    end

    def to_xml
      builder = Nokogiri::XML::Builder.new do |xml|
        xml.SiteOfActivity('xsi:type' => 'SOA') {
          xml.parent << address.to_xml
          xml.ExplanationCode explanationCode if explanationCode
          xml.Explanation explanation if explanation
          xml.SiteName siteName
          xml.PrimarySite primarySite
          xml.Remarks remarks if remarks
        }
      end
      builder.to_xml(:save_with => Nokogiri::XML::Node::SaveOptions::NO_DECLARATION)
    end
  end
end