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
  attr_accessor :personal_info


  def initialize(requestID = nil, userID = nil, printForm = nil, sevisID = nil, statusCode = nil, personal_info = nil)
    @requestID = requestID
    @userID = userID
    @printForm = printForm
    @sevisID = sevisID
    @statusCode = statusCode
    @personal_info = personal_info
  end

  def to_xml
    attr = {'requestID' => requestID, 'userID' => userID}
    attr['printForm'] = printForm if printForm
    attr['sevisID'] = sevisID if sevisID
    attr['statusCode'] = statusCode if statusCode

    builder = Nokogiri::XML::Builder.new do |xml|
      xml.send('Student', attr) {
        xml << personal_info.to_xml if personal_info

      }
    end
    builder.to_xml
  end
end

#      xml.Student  {
#:requestID => "requestID", 'userID' => userID, 'printForm' => printForm, 'sevisID' => sevisID, 'statusCode' => statusCode
#xml.UserDefinedA "fred"#@userDefinedA
# xml.UserDefinedB @userDefinedB
# xml.PersonalInfo {
#   xml.FullName {
#     xml.LastName @lastName
#     xml.FirstName @firstName
#     xml.PassportName @passportName
#     xml.PreferredName @preferredName
#     xml.Suffix @suffix
#  }
#}
#     }
