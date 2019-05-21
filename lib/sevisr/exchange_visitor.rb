require "sevisr/residential_address"
module Sevisr
  class ExchangeVisitor
    attr_accessor :lastName, :edit_soas, :add_soas, :delete_soas, :residential_address
    attr_accessor :firstName
    attr_accessor :passportName
    attr_accessor :preferredName
    attr_accessor :suffix
    attr_accessor :birth_date
    attr_accessor :gender
    attr_accessor :birth_city
    attr_accessor :birth_country_code
    attr_accessor :permanent_residence_country_code
    attr_accessor :citizenship_country_code
    attr_accessor :email
    attr_accessor :phoneNumber
    attr_accessor :requestID
    attr_accessor :userID
    attr_accessor :printForm
    attr_accessor :sevisID
    attr_accessor :statusCode
    attr_accessor :user_defined_a
    attr_accessor :user_defined_b
    attr_accessor :us_born_reason_type
    attr_accessor :position_code
    attr_accessor :prg_start_date
    attr_accessor :prg_end_date
    attr_accessor :category_code
    attr_accessor :us_address
    attr_accessor :mailing_address
    attr_accessor :occupation_category_code
    attr_accessor :subject_field_code
    attr_accessor :subject_field_remarks
    attr_accessor :received_us_govt_funds
    attr_accessor :program_sponsor_funds
    attr_accessor :other_funds_us_govt
    attr_accessor :other_funds_international
    attr_accessor :other_funds_ev_govt
    attr_accessor :other_funds_binational_commission
    attr_accessor :other_funds_other_name
    attr_accessor :other_funds_other_amount
    attr_accessor :other_funds_personal


    def initialize(lastName: nil, firstName: nil, passportName: nil, \
    preferredName: nil, suffix: nil, birth_date: nil, gender: nil, \
    birth_city: nil, birth_country_code: nil, permanent_residence_country_code: nil, \
    citizenship_country_code: nil, email: nil, phoneNumber: nil, requestID: nil, \
    userID: nil, printForm: nil, sevisID: nil, statusCode: nil, \
    user_defined_a: nil, user_defined_b: nil, us_born_reason_type: nil, \
    position_code: nil, prg_start_date: nil, prg_end_date: nil, \
    category_code: nil, us_address: nil, mailing_address: nil, \
    occupation_category_code: nil, subject_field_code: nil, subject_field_remarks: nil, \
    received_us_govt_funds: nil, program_sponsor_funds: nil, \
    other_funds_us_govt: nil, other_funds_international: nil, \
    other_funds_ev_govt: nil, other_funds_binational_commission: nil, \
    other_funds_other_name: nil, other_funds_other_amount: nil, other_funds_personal: nil, \
    ad_soas: nil, edit_soas: nil, delete_soas: nil, residential_address: nil)

      @lastName = lastName
      @firstName = firstName
      @passportName = passportName
      @preferredName = preferredName
      @suffix = suffix
      @birth_date = birth_date
      @gender = gender
      @birth_city = birth_city
      @birth_country_code = birth_country_code
      @permanent_residence_country_code = permanent_residence_country_code
      @citizenship_country_code = citizenship_country_code
      @email = email
      @phoneNumber = phoneNumber
      @requestID = requestID
      @userID = userID
      @printForm = printForm
      @sevisID = sevisID
      @statusCode = statusCode
      @user_defined_a = user_defined_a
      @user_defined_b = user_defined_b
      @us_born_reason_type = us_born_reason_type
      @position_code = position_code
      @prg_start_date = prg_start_date
      @prg_end_date = prg_end_date
      @category_code = category_code
      @us_address = us_address
      @mailing_address = mailing_address
      @occupation_category_code = occupation_category_code
      @subject_field_code = subject_field_code
      @subject_field_remarks = subject_field_remarks
      @received_us_govt_funds = received_us_govt_funds
      @program_sponsor_funds = program_sponsor_funds
      @other_funds_us_govt = other_funds_us_govt
      @other_funds_international = other_funds_international
      @other_funds_ev_govt = other_funds_ev_govt
      @other_funds_binational_commission = other_funds_binational_commission
      @other_funds_other_name = other_funds_other_name
      @other_funds_other_amount = other_funds_other_amount
      @other_funds_personal = other_funds_personal
      @add_soas = add_soas
      @edit_soas = edit_soas
      @delete_soas = delete_soas
      @residential_address = residential_address

    end

    def to_xml
      attr = {'requestID' => requestID, 'userID' => userID}
      if sevisID.nil?
        attr['printForm'] = printForm
      end
      attr['sevisID'] = sevisID if sevisID
      attr['statusCode'] = statusCode if statusCode && sevisID

      build_attr = {}
      build_attr['printForm'] = printForm if printForm && !sevisID.nil?
      builder = Nokogiri::XML::Builder.new do |xml|
        xml.send('ExchangeVisitor', attr) {
          xml.UserDefinedA {user_defined_a} if user_defined_a
          xml.UserDefinedB {user_defined_b} if user_defined_b
          xml.Biographical(build_attr) {
            xml.FullName {
              xml.LastName lastName
              xml.FirstName firstName if firstName
              xml.PassportName passportName if passportName
              xml.PreferredName preferredName if preferredName
              xml.Suffix suffix if suffix
            } if lastName || firstName
            xml.BirthDate birth_date.strftime("%Y-%m-%d")
            xml.Gender gender
            xml.BirthCity birth_city
            xml.BirthCountryCode birth_country_code
            xml.CitizenshipCountryCode citizenship_country_code
            xml.PermanentResidenceCountryCode permanent_residence_country_code
            xml.BirthCountryReason us_born_reason_type if us_born_reason_type
            xml.EmailAddress email if email
            xml.PhoneNumber phoneNumber if phoneNumber
            xml.PositionCode position_code if position_code && sevisID
            xml.USAddress {
              xml.parent << us_address.to_xml
            } if us_address && sevisID
            xml.MailAddress {
              xml.parent << mailing_address.to_xml
            } if mailing_address && sevisID
            xml.parent << residential_address.to_xml if residential_address && !sevisID.nil?
          }
          xml.PositionCode position_code if position_code && sevisID.nil?
          xml.PrgStartDate prg_start_date.strftime("%Y-%m-%d") if sevisID.nil?
          xml.PrgEndDate prg_end_date.strftime("%Y-%m-%d") if sevisID.nil?
          xml.CategoryCode category_code if category_code && sevisID.nil?
          xml.OccupationCategoryCode occupation_category_code if occupation_category_code
          xml.SubjectField {
            xml.SubjectFieldCode subject_field_code
            xml.Remarks subject_field_remarks
          } if subject_field_code && sevisID.nil?
          xml.USAddress {
            xml.parent << us_address.to_xml
          } if us_address && sevisID.nil?
          xml.MailAddress {
            xml.parent << mailing_address.to_xml
          } if mailing_address && sevisID.nil?
          xml.FinancialInfo {
            xml.ReceivedUSGovtFunds received_us_govt_funds ? 'true' : 'true'
            xml.ProgramSponsorFunds program_sponsor_funds if program_sponsor_funds
            xml.OtherFunds {
              xml.USGovt {
                xml.parent << other_funds_us_got.to_xml
              } if other_funds_us_govt
              xml.International {
                xml.parent << other_funds_international.to_xml
              } if other_funds_international
              xml.EVGovt other_funds_ev_govt if other_funds_ev_govt
              xml.BinationalCommission other_funds_binational_commission if other_funds_binational_commission
              xml.Other {
                xml.Name other_funds_other_name
                xml.Amount other_funds_other_amount
              } if other_funds_other_amount
              xml.Personal other_funds_personal if other_funds_personal
            } if other_funds_ev_govt || other_funds_international || other_funds_other_amount || other_funds_personal || other_funds_us_govt
          } if sevisID.nil?
          xml.AddSiteOfActivity {
            add_soas.each do |soa|
              xml.parent << soa.to_xml
            end
          } if sevisID.nil? && !add_soas.nil? && !add_soas.empty?
          xml.parent << residential_address.to_xml if residential_address && sevisID.nil?
        }
      end
      builder.to_xml(:save_with => Nokogiri::XML::Node::SaveOptions::NO_DECLARATION)
    end

  end
end