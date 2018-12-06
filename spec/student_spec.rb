require "sevisr/student.rb"
require "sevisr/personal_info.rb"

RSpec.describe Student do

  it "Prints out" do
    student = Student.new('1111', 'AuserID', 'N', nil, 'INITIAL', PersonalInfo.new('lastName', 'firstName', 'passportName', 'preferredName', 'suffix', DateTime.now, 'gender', 'birth_country_ode', 'citizenship_status', 'citizenship_country_code', 'email', 'commuter', 'visa_type', ' telephoneExemptInd', 'countryNumber', 'phoneNumber', 'uSAddress', 'mailingAddress', 'foreignAddress', 'remarks', 'printForm'))
    puts student.to_xml
  end
end