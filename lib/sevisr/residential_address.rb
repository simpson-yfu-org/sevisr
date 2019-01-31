module Sevisr
  class ResidentialAddress


    attr_accessor :bs_name, :hf_phone, :bs_phoneExt, :contact_lastname, :hf_lastname, :lc_firstname, :residentialType, :hostFamilyInd, :hf_phoneExt, :bs_phone, :lc_lastname, :lc_postal_code, :bs_PCTitle, :hf_firstname, :contact_firstname

    def initialize(lc_lastname = nil, lc_firstname = nil, lc_postal_code = nil, contact_lastname = nil, contact_firstname = nil, residentialType = nil, hostFamilyInd = nil, hf_lastname = nil, hf_firstname = nil, hf_phone = nil, hf_phoneExt = nil, bs_name = nil, bs_PCTitle = nil, bs_phone = nil, bs_phoneExt = nil)
      @lc_lastname = lc_lastname
      @lc_firstname = lc_firstname
      @lc_postal_code = lc_postal_code
      @contact_lastname = contact_lastname
      @contact_firstname = contact_firstname
      @residentialType = residentialType
      @hostFamilyInd = hostFamilyInd
      @hf_lastname = hf_lastname
      @hf_firstname = hf_firstname
      @hf_phone = hf_phone
      @hf_phoneExt = hf_phoneExt
      @bs_name = bs_name
      @bs_PCTitle = bs_PCTitle
      @bs_phone = bs_phone
      @bs_phoneExt = bs_phoneExt
    end


    def to_xml
      builder = Nokogiri::XML::Builder.new do |xml|
        xml.ResidentialAddress {
          xml.LCCoordinator {
            xml.LastName lc_lastname if lc_lastname
            xml.FirstName lc_firstname if lc_firstname
            xml.PostalCode lc_postal_code if lc_postal_code
          } if lc_postal_code || lc_firstname || lc_lastname
          xml.ResidentialType residentialType if residentialType
          xml.PContact {
            xml.LastName contact_lastname if contact_lastname
            xml.FirstName contact_firstname if contact_firstname
          } if contact_firstname || contact_lastname
          xml.HostFamily {
            xml.HostFamilyInd hostFamilyInd if hostFamilyInd
            xml.SContact {
              xml.LastName hf_lastname if hf_lastname
              xml.FirstName hf_firstname if hf_firstname
            } if hf_firstname || hf_lastname
            xml.Phone hf_phone if hf_phone
            xml.PhoneExt hf_phoneExt if hf_phoneExt
          } if hostFamilyInd || hf_firstname || hf_lastname || hf_phoneExt if hf_phoneExt
          xml.BoardingSchool {
            xml.Name bs_name if bs_name
            xml.PCTitle bs_PCTitle if bs_PCTitle
            xml.Phone bs_phone if bs_phone
            xml.PhoneExt bs_phoneExt if bs_phoneExt
          } if bs_name || bs_PCTitle || bs_phone || bs_phoneExt
        }
      end
      builder.to_xml(:save_with => Nokogiri::XML::Node::SaveOptions::NO_DECLARATION)


    end


  end
end