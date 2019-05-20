# Only use for USGov and International

module Sevisr
  class OtherFunds
    attr_accessor :org1
    attr_accessor :other_name1
    attr_accessor :amount1
    attr_accessor :org2
    attr_accessor :other_name2
    attr_accessor :amount2


    def initialize(org1: nil, other_name1: nil, amount1: nil, org2: nil, other_name2: nil, amount2: nil)
      @org1 = org1
      @other_name1 = other_name1
      @amount1 = amount1
      @org2 = org2
      @other_name = other_name
    end

    def to_xml
      frag = Nokogiri::XML::DocumentFragment.parse("")
      builder = Nokogiri::XML::Builder.with(frag) do |xml|
        xml.Org1 org1
        xml.OtherName1 other_name1 if other_name1
        xml.Amount1 amount1
        xml.Org2 org2 if org2
        xml.OtherName2 other_name2 if other_name2
        xml.Amount2 amount2 if amount2
      end
      frag.to_xml
    end
  end
end