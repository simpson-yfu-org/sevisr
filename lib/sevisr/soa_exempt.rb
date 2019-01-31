module Sevisr
  class SOAExempt

    attr_accessor :remarks


    def initialize(remarks = nil)
      @remarks = remarks
    end

    def to_xml
      builder = Nokogiri::XML::Builder.new do |xml|
        xml.SiteOfActivity('xsi:type' => 'EXEMPT') {
          xml.Remarks remarks if remarks
        }
      end
      builder.to_xml(:save_with => Nokogiri::XML::Node::SaveOptions::NO_DECLARATION)
    end
  end
end