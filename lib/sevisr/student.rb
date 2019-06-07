require 'nokogiri'
module Sevisr

#   requestID  - SOAP::SOAPString
#   userID - SOAP::SOAPString
#   printForm - SOAP::SOAPString
#   sevisID - SOAP::SOAPString
#   statusCode - ACTIVE  or INITIAL
# personal_info - PersonalInfo
  class Student
    attr_accessor :requestID
    attr_accessor :userID
    attr_accessor :printForm
    attr_accessor :sevisID
    attr_accessor :statusCode
    attr_accessor :userDefinedA
    attr_accessor :userDefinedB
    attr_accessor :personal_info
    attr_accessor :uSAddress
    attr_accessor :mailingAddress
    attr_accessor :foreignAddress
    attr_accessor :remarks
    attr_accessor :issueReason
    attr_accessor :educationalInfo
    attr_accessor :financial_info


    def initialize(requestID: nil, userID: nil, printForm: nil, sevisID: nil, statusCode: nil, personal_info: nil, uSAddress: nil, mailingAddress: nil, foreignAddress: nil, educationalInfo: nil, remarks: nil, issueReason: nil, financial_info: nil)
      @requestID = requestID
      @userID = userID
      @printForm = printForm
      @sevisID = sevisID
      @statusCode = statusCode
      @personal_info = personal_info
      @uSAddress = uSAddress
      @mailingAddress = mailingAddress
      @foreignAddress = foreignAddress
      @remarks = remarks
      @issueReason = issueReason
      @educationalInfo = educationalInfo
      @financial_info = financial_info

    end

    def to_xml
      attr = {'requestID' => requestID, 'userID' => userID}
      attr['printForm'] = printForm if printForm && sevisID.nil?
      attr['sevisID'] = sevisID if sevisID
      attr['statusCode'] = statusCode if statusCode

      builder = Nokogiri::XML::Builder.new do |xml|
        xml.send('Student', attr) {
          xml.UserDefinedA userDefinedA if userDefinedA
          xml.UserDefinedB userDefinedB if userDefinedB
          xml << personal_info.to_xml if personal_info
          xml.IssueReason issueReason if issueReason && sevisID.nil?
          xml.USAddress {
            xml.parent << uSAddress.to_xml
          } if uSAddress && sevisID.nil?
          xml.MailingAddress {
            xml.parent << mailingAddress.to_xml
          } if mailingAddress && sevisID.nil?
          xml.ForeignAddress {
            xml.parent << foreignAddress.to_xml
          } if foreignAddress && sevisID.nil?
          xml.parent << educationalInfo.to_xml if educationalInfo && sevisID.nil?
          xml.parent << financial_info.to_xml if financial_info && sevisID.nil?
          xml.Remarks remarks if remarks
        }
      end
      builder.to_xml(:save_with => Nokogiri::XML::Node::SaveOptions::NO_DECLARATION)
    end
  end
end

