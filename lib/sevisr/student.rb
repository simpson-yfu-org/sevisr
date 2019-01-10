require 'nokogiri'

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


  def initialize(requestID = nil, userID = nil, printForm = nil, sevisID = nil, statusCode = nil, personal_info = nil, uSAddress = nil, mailingAddress = nil, foreignAddress = nil, remarks = nil)
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

  end

  def to_xml
    attr = {'requestID' => requestID, 'userID' => userID}
    attr['printForm'] = printForm if printForm
    attr['sevisID'] = sevisID if sevisID
    attr['statusCode'] = statusCode if statusCode

    builder = Nokogiri::XML::Builder.new do |xml|
      xml.send('Student', attr) {
        xml.UserDefinedA userDefinedA if userDefinedA
        xml.UserDefinedB userDefinedB if userDefinedB
        xml << personal_info.to_xml if personal_info
        xml.USAddress {
          xml.parent << uSAddress.to_xml
        } if uSAddress
        xml.MailingAddress {
          xml.parent << mailingAddress.to_xml
        } if mailingAddress
        xml.ForeignAddress {
          xml.parent << foreignAddress.to_xml
        } if foreignAddress
        xml.Remarks remarks if remarks
      }
    end
    builder.to_xml(:save_with => Nokogiri::XML::Node::SaveOptions::NO_DECLARATION)
  end
end


