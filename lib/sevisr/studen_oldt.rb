# encoding: UTF-8
require 'rubygems'
require 'nokogiri'
#require 'soap4r-ng'
#require 'defaultDriver'
require 'xsd/xmlparser'
require 'xsd/qname'

module Student


# {}AuthDropBelowType
#   reason - Sevis::DropBlwfullType
#   startDate - (any)
#   endDate - (any)
#   remarks - (any)
  class AuthDropBelowType
    attr_accessor :reason
    attr_accessor :startDate
    attr_accessor :endDate
    attr_accessor :remarks

    def initialize(reason = nil, startDate = nil, endDate = nil, remarks = nil)
      @reason = reason
      @startDate = startDate
      @endDate = endDate
      @remarks = remarks
    end
  end

# {}CPTEmploymentType
#   startDate - (any)
#   endDate - (any)
#   fullPartTimeIndicator - Sevis::EmploymentTimeType
#   employerName - SOAP::SOAPString
  class CPTEmploymentType
    attr_accessor :startDate
    attr_accessor :endDate
    attr_accessor :fullPartTimeIndicator
    attr_accessor :employerName

    def initialize(startDate = nil, endDate = nil, fullPartTimeIndicator = nil, employerName = nil)
      @startDate = startDate
      @endDate = endDate
      @fullPartTimeIndicator = fullPartTimeIndicator
      @employerName = employerName
    end
  end

# {}EducationalInfoType
#   eduLevel - Sevis::EducationalInfoType::EduLevel
#   majorCode1 - Sevis::ProgSubjectCodeType
#   majorCode2 - (any)
#   minor - (any)
#   issDate - (any)
#   prgStartDate - (any)
#   prgEndDate - (any)
#   engProficiency - Sevis::EducationalInfoType::EngProficiency
  class EducationalInfoType

    # inner class for member: EduLevel
    # {}EduLevel
    #   level - Sevis::EduLevelCodeType
    #   otherRemarks - (any)
    class EduLevel
      attr_accessor :level
      attr_accessor :otherRemarks

      def initialize(level = nil, otherRemarks = nil)
        @level = level
        @otherRemarks = otherRemarks
      end
    end

    # inner class for member: EngProficiency
    # {}EngProficiency
    #   engRequired - (any)
    #   requirementsMet - (any)
    #   notRequiredReason - (any)
    class EngProficiency
      attr_accessor :engRequired
      attr_accessor :requirementsMet
      attr_accessor :notRequiredReason

      def initialize(engRequired = nil, requirementsMet = nil, notRequiredReason = nil)
        @engRequired = engRequired
        @requirementsMet = requirementsMet
        @notRequiredReason = notRequiredReason
      end
    end

    attr_accessor :eduLevel
    attr_accessor :majorCode1
    attr_accessor :majorCode2
    attr_accessor :minor
    attr_accessor :issDate
    attr_accessor :prgStartDate
    attr_accessor :prgEndDate
    attr_accessor :engProficiency

    def initialize(eduLevel = nil, majorCode1 = nil, majorCode2 = nil, minor = nil, issDate = nil, prgStartDate = nil, prgEndDate = nil, engProficiency = nil)
      @eduLevel = eduLevel
      @majorCode1 = majorCode1
      @majorCode2 = majorCode2
      @minor = minor
      @issDate = issDate
      @prgStartDate = prgStartDate
      @prgEndDate = prgEndDate
      @engProficiency = engProficiency
    end
  end

# {}FinancialAmountType
#   amount - (any)
#   remarks - (any)
  class FinancialAmountType
    attr_accessor :amount
    attr_accessor :remarks

    def initialize(amount = nil, remarks = nil)
      @amount = amount
      @remarks = remarks
    end
  end

# {}FinancialAmountNullableType
#   amount - (any)
#   remarks - (any)
  class FinancialAmountNullableType
    attr_accessor :amount
    attr_accessor :remarks

    def initialize(amount = nil, remarks = nil)
      @amount = amount
      @remarks = remarks
    end
  end

# {}FinancialType
#   academicTerm - SOAP::SOAPString
#   expense - Sevis::FinancialType::Expense
#   funding - Sevis::FinancialType::Funding
  class FinancialType

    # inner class for member: Expense
    # {}Expense
    #   tuition - (any)
    #   livingExpense - (any)
    #   dependentExp - (any)
    #   other - Sevis::FinancialAmountType
    class Expense
      attr_accessor :tuition
      attr_accessor :livingExpense
      attr_accessor :dependentExp
      attr_accessor :other

      def initialize(tuition = nil, livingExpense = nil, dependentExp = nil, other = nil)
        @tuition = tuition
        @livingExpense = livingExpense
        @dependentExp = dependentExp
        @other = other
      end
    end

    # inner class for member: Funding
    # {}Funding
    #   personal - (any)
    #   school - Sevis::FinancialAmountType
    #   other - Sevis::FinancialAmountType
    #   employment - (any)
    class Funding
      attr_accessor :personal
      attr_accessor :school
      attr_accessor :other
      attr_accessor :employment

      def initialize(personal = nil, school = nil, other = nil, employment = nil)
        @personal = personal
        @school = school
        @other = other
        @employment = employment
      end
    end

    attr_accessor :academicTerm
    attr_accessor :expense
    attr_accessor :funding

    def initialize(academicTerm = nil, expense = nil, funding = nil)
      @academicTerm = academicTerm
      @expense = expense
      @funding = funding
    end
  end

# {}FinancialNullableType
#   academicTerm - SOAP::SOAPString
#   expense - Sevis::FinancialNullableType::Expense
#   funding - Sevis::FinancialNullableType::Funding
#   xmlattr_printForm - SOAP::SOAPBoolean
  class FinancialNullableType
    AttrPrintForm = XSD::QName.new(nil, "printForm")

    # inner class for member: Expense
    # {}Expense
    #   tuition - (any)
    #   livingExpense - (any)
    #   dependentExp - (any)
    #   other - Sevis::FinancialAmountNullableType
    class Expense
      attr_accessor :tuition
      attr_accessor :livingExpense
      attr_accessor :dependentExp
      attr_accessor :other

      def initialize(tuition = nil, livingExpense = nil, dependentExp = nil, other = nil)
        @tuition = tuition
        @livingExpense = livingExpense
        @dependentExp = dependentExp
        @other = other
      end
    end

    # inner class for member: Funding
    # {}Funding
    #   personal - (any)
    #   school - Sevis::FinancialAmountNullableType
    #   other - Sevis::FinancialAmountNullableType
    #   employment - (any)
    class Funding
      attr_accessor :personal
      attr_accessor :school
      attr_accessor :other
      attr_accessor :employment

      def initialize(personal = nil, school = nil, other = nil, employment = nil)
        @personal = personal
        @school = school
        @other = other
        @employment = employment
      end
    end

    attr_accessor :academicTerm
    attr_accessor :expense
    attr_accessor :funding

    def __xmlattr
      @__xmlattr ||= {}
    end

    def xmlattr_printForm
      __xmlattr[AttrPrintForm]
    end

    def xmlattr_printForm=(value)
      __xmlattr[AttrPrintForm] = value
    end

    def initialize(academicTerm = nil, expense = nil, funding = nil)
      @academicTerm = academicTerm
      @expense = expense
      @funding = funding
      @__xmlattr = {}
    end
  end

# {}NonImgBioType
#   fullName - Sevis::NameType
#   birthDate - (any)
#   gender - Sevis::GenderCodeType
#   birthCountryCode - Sevis::BirthCntryCodeType
#   citizenshipStatus - Sevis::CitizenshipStatusType
#   citizenshipCountryCode - Sevis::CntryCodeWithoutType
  class NonImgBioType
    attr_accessor :fullName
    attr_accessor :birthDate
    attr_accessor :gender
    attr_accessor :birthCountryCode
    attr_accessor :citizenshipStatus
    attr_accessor :citizenshipCountryCode

    def initialize(fullName = nil, birthDate = nil, gender = nil, birthCountryCode = nil, citizenshipStatus = nil, citizenshipCountryCode = nil)
      @fullName = fullName
      @birthDate = birthDate
      @gender = gender
      @birthCountryCode = birthCountryCode
      @citizenshipStatus = citizenshipStatus
      @citizenshipCountryCode = citizenshipCountryCode
    end
  end

# {}NonImgBioTypeRequired
#   fullName - Sevis::NameType
#   birthDate - (any)
#   gender - Sevis::GenderCodeType
#   birthCountryCode - Sevis::BirthCntryCodeType
#   citizenshipStatus - Sevis::CitizenshipStatusType
#   citizenshipCountryCode - Sevis::CntryCodeWithoutType
  class NonImgBioTypeRequired
    attr_accessor :fullName
    attr_accessor :birthDate
    attr_accessor :gender
    attr_accessor :birthCountryCode
    attr_accessor :citizenshipStatus
    attr_accessor :citizenshipCountryCode

    def initialize(fullName = nil, birthDate = nil, gender = nil, birthCountryCode = nil, citizenshipStatus = nil, citizenshipCountryCode = nil)
      @fullName = fullName
      @birthDate = birthDate
      @gender = gender
      @birthCountryCode = birthCountryCode
      @citizenshipStatus = citizenshipStatus
      @citizenshipCountryCode = citizenshipCountryCode
    end
  end

# {}OCEmploymentType
#   startDate - (any)
#   endDate - (any)
#   employmentType - Sevis::OffCampusEmploymentCodeType
  class OCEmploymentType
    attr_accessor :startDate
    attr_accessor :endDate
    attr_accessor :employmentType

    def initialize(startDate = nil, endDate = nil, employmentType = nil)
      @startDate = startDate
      @endDate = endDate
      @employmentType = employmentType
    end
  end

# {}Employer
#   employerName - SOAP::SOAPString
#   employerAddress - Sevis::USAddrDoctorType
#   employerEIN - (any)
#   selfEmployed - (any)
#   courseRelevance - (any)
#   fullPartTimeIndicator - Sevis::EmploymentTimeType
#   startDate - (any)
#   endDate - (any)
#   supervisorFirstName - SOAP::SOAPString
#   supervisorLastName - SOAP::SOAPString
#   supervisorPhone - (any)
#   supervisorPhoneExt - (any)
#   supervisorEmail - (any)
#   studentsJobTitle - SOAP::SOAPString
  class Employer
    attr_accessor :employerName
    attr_accessor :employerAddress
    attr_accessor :employerEIN
    attr_accessor :selfEmployed
    attr_accessor :courseRelevance
    attr_accessor :fullPartTimeIndicator
    attr_accessor :startDate
    attr_accessor :endDate
    attr_accessor :supervisorFirstName
    attr_accessor :supervisorLastName
    attr_accessor :supervisorPhone
    attr_accessor :supervisorPhoneExt
    attr_accessor :supervisorEmail
    attr_accessor :studentsJobTitle

    def initialize(employerName = nil, employerAddress = nil, employerEIN = nil, selfEmployed = nil, courseRelevance = nil, fullPartTimeIndicator = nil, startDate = nil, endDate = nil, supervisorFirstName = nil, supervisorLastName = nil, supervisorPhone = nil, supervisorPhoneExt = nil, supervisorEmail = nil, studentsJobTitle = nil)
      @employerName = employerName
      @employerAddress = employerAddress
      @employerEIN = employerEIN
      @selfEmployed = selfEmployed
      @courseRelevance = courseRelevance
      @fullPartTimeIndicator = fullPartTimeIndicator
      @startDate = startDate
      @endDate = endDate
      @supervisorFirstName = supervisorFirstName
      @supervisorLastName = supervisorLastName
      @supervisorPhone = supervisorPhone
      @supervisorPhoneExt = supervisorPhoneExt
      @supervisorEmail = supervisorEmail
      @studentsJobTitle = studentsJobTitle
    end
  end

# {}EmployerIdentifier
#   employerName - SOAP::SOAPString
#   startDate - (any)
  class EmployerIdentifier
    attr_accessor :employerName
    attr_accessor :startDate

    def initialize(employerName = nil, startDate = nil)
      @employerName = employerName
      @startDate = startDate
    end
  end

# {}OPTEmploymentType
#   startDate - (any)
#   endDate - (any)
#   fullPartTimeIndicator - Sevis::EmploymentTimeType
#   xmlattr_printForm - SOAP::SOAPBoolean
  class OPTEmploymentType
    AttrPrintForm = XSD::QName.new(nil, "printForm")

    attr_accessor :startDate
    attr_accessor :endDate
    attr_accessor :fullPartTimeIndicator

    def __xmlattr
      @__xmlattr ||= {}
    end

    def xmlattr_printForm
      __xmlattr[AttrPrintForm]
    end

    def xmlattr_printForm=(value)
      __xmlattr[AttrPrintForm] = value
    end

    def initialize(startDate = nil, endDate = nil, fullPartTimeIndicator = nil)
      @startDate = startDate
      @endDate = endDate
      @fullPartTimeIndicator = fullPartTimeIndicator
      @__xmlattr = {}
    end
  end

# {}EmploymentIdentifier
#   startDate - (any)
#   endDate - (any)
  class EmploymentIdentifier
    attr_accessor :startDate
    attr_accessor :endDate

    def initialize(startDate = nil, endDate = nil)
      @startDate = startDate
      @endDate = endDate
    end
  end

# {}ProgramExtendType
#   newPrgEndDate - (any)
#   remarks - (any)
  class ProgramExtendType
    attr_accessor :newPrgEndDate
    attr_accessor :remarks

    def initialize(newPrgEndDate = nil, remarks = nil)
      @newPrgEndDate = newPrgEndDate
      @remarks = remarks
    end
  end

# {}ReprintType
#   reason - Sevis::StudentReprintRequestReasonType
#   remarks - (any)
#   xmlattr_printForm - SOAP::SOAPBoolean
  class ReprintType
    AttrPrintForm = XSD::QName.new(nil, "printForm")

    attr_accessor :reason
    attr_accessor :remarks

    def __xmlattr
      @__xmlattr ||= {}
    end

    def xmlattr_printForm
      __xmlattr[AttrPrintForm]
    end

    def xmlattr_printForm=(value)
      __xmlattr[AttrPrintForm] = value
    end

    def initialize(reason = nil, remarks = nil)
      @reason = reason
      @remarks = remarks
      @__xmlattr = {}
    end
  end

# {}SEVISStudentBatchType
#   batchHeader - Sevis::BatchHeaderType
#   createStudent - Sevis::SEVISStudentBatchType::CreateStudent
#   updateStudent - Sevis::SEVISStudentBatchType::UpdateStudent
  class SEVISStudentBatchType

    # inner class for member: CreateStudent
    # {}CreateStudent
    class CreateStudent < ::Array

      # {}Student
      #   userDefinedA - (any)
      #   userDefinedB - (any)
      #   personalInfo - Sevis::SEVISStudentBatchType::CreateStudent::Student::PersonalInfo
      #   issueReason - Sevis::StudentCreationReason
      #   uSAddress - Sevis::USAddrDoctorType
      #   mailingAddress - Sevis::USAddrDoctorType
      #   foreignAddress - Sevis::ForeignAddrType
      #   educationalInfo - Sevis::EducationalInfoType
      #   financialInfo - Sevis::FinancialType
      #   createDependent - Sevis::SEVISStudentBatchType::CreateStudent::Student::CreateDependent
      #   remarks - (any)
      #   xmlattr_requestID - SOAP::SOAPString
      #   xmlattr_userID - SOAP::SOAPString
      #   xmlattr_printForm - SOAP::SOAPBoolean
      class Student < Student::StudentPersonType
        AttrPrintForm = XSD::QName.new(nil, "printForm")
        AttrRequestID = XSD::QName.new(nil, "requestID")
        AttrUserID = XSD::QName.new(nil, "userID")

        # inner class for member: PersonalInfo
        # {}PersonalInfo
        #   fullName - Sevis::NameType
        #   birthDate - (any)
        #   gender - Sevis::GenderCodeType
        #   birthCountryCode - Sevis::BirthCntryCodeType
        #   citizenshipStatus - Sevis::CitizenshipStatusType
        #   citizenshipCountryCode - Sevis::CntryCodeWithoutType
        #   email - (any)
        #   commuter - (any)
        #   visaType - Sevis::StudentVisaCodeType
        #   telephone - Sevis::SEVISStudentBatchType::CreateStudent::Student::PersonalInfo::Telephone
        class PersonalInfo < NonImgBioTypeRequired

          # inner class for member: Telephone
          # {}Telephone
          #   telephoneExemptInd - Sevis::IndicatorTypeYN
          #   phone - Sevis::TelephoneType
          class Telephone
            attr_accessor :telephoneExemptInd
            attr_accessor :phone

            def initialize(telephoneExemptInd = nil, phone = nil)
              @telephoneExemptInd = telephoneExemptInd
              @phone = phone
            end
          end

          attr_accessor :fullName
          attr_accessor :birthDate
          attr_accessor :gender
          attr_accessor :birthCountryCode
          attr_accessor :citizenshipStatus
          attr_accessor :citizenshipCountryCode
          attr_accessor :email
          attr_accessor :commuter
          attr_accessor :visaType
          attr_accessor :telephone

          def initialize(fullName = nil, birthDate = nil, gender = nil, birthCountryCode = nil, citizenshipStatus = nil, citizenshipCountryCode = nil, email = nil, commuter = nil, visaType = nil, telephone = nil)
            @fullName = fullName
            @birthDate = birthDate
            @gender = gender
            @birthCountryCode = birthCountryCode
            @citizenshipStatus = citizenshipStatus
            @citizenshipCountryCode = citizenshipCountryCode
            @email = email
            @commuter = commuter
            @visaType = visaType
            @telephone = telephone
          end
        end

        # inner class for member: CreateDependent
        # {}CreateDependent
        class CreateDependent < ::Array

          # {}Dependent
          #   fullName - Sevis::NameType
          #   birthDate - (any)
          #   gender - Sevis::GenderCodeType
          #   birthCountryCode - Sevis::BirthCntryCodeType
          #   citizenshipStatus - Sevis::CitizenshipStatusType
          #   citizenshipCountryCode - Sevis::CntryCodeWithoutType
          #   email - (any)
          #   visaType - Sevis::DependentFMVisaType
          #   relationship - Sevis::DependentCodeType
          #   remarks - (any)
          #   userDefinedA - (any)
          #   userDefinedB - (any)
          class Dependent < NonImgBioType
            attr_accessor :fullName
            attr_accessor :birthDate
            attr_accessor :gender
            attr_accessor :birthCountryCode
            attr_accessor :citizenshipStatus
            attr_accessor :citizenshipCountryCode
            attr_accessor :email
            attr_accessor :visaType
            attr_accessor :relationship
            attr_accessor :remarks
            attr_accessor :userDefinedA
            attr_accessor :userDefinedB

            def initialize(fullName = nil, birthDate = nil, gender = nil, birthCountryCode = nil, citizenshipStatus = nil, citizenshipCountryCode = nil, email = nil, visaType = nil, relationship = nil, remarks = nil, userDefinedA = nil, userDefinedB = nil)
              @fullName = fullName
              @birthDate = birthDate
              @gender = gender
              @birthCountryCode = birthCountryCode
              @citizenshipStatus = citizenshipStatus
              @citizenshipCountryCode = citizenshipCountryCode
              @email = email
              @visaType = visaType
              @relationship = relationship
              @remarks = remarks
              @userDefinedA = userDefinedA
              @userDefinedB = userDefinedB
            end
          end
        end

        attr_accessor :userDefinedA
        attr_accessor :userDefinedB
        attr_accessor :personalInfo
        attr_accessor :issueReason
        attr_accessor :uSAddress
        attr_accessor :mailingAddress
        attr_accessor :foreignAddress
        attr_accessor :educationalInfo
        attr_accessor :financialInfo
        attr_accessor :createDependent
        attr_accessor :remarks

        def __xmlattr
          @__xmlattr ||= {}
        end

        def xmlattr_requestID
          __xmlattr[AttrRequestID]
        end

        def xmlattr_requestID=(value)
          __xmlattr[AttrRequestID] = value
        end

        def xmlattr_userID
          __xmlattr[AttrUserID]
        end

        def xmlattr_userID=(value)
          __xmlattr[AttrUserID] = value
        end

        def xmlattr_printForm
          __xmlattr[AttrPrintForm]
        end

        def xmlattr_printForm=(value)
          __xmlattr[AttrPrintForm] = value
        end

        def initialize(userDefinedA = nil, userDefinedB = nil, personalInfo = nil, issueReason = nil, uSAddress = nil, mailingAddress = nil, foreignAddress = nil, educationalInfo = nil, financialInfo = nil, createDependent = nil, remarks = nil)
          @userDefinedA = userDefinedA
          @userDefinedB = userDefinedB
          @personalInfo = personalInfo
          @issueReason = issueReason
          @uSAddress = uSAddress
          @mailingAddress = mailingAddress
          @foreignAddress = foreignAddress
          @educationalInfo = educationalInfo
          @financialInfo = financialInfo
          @createDependent = createDependent
          @remarks = remarks
          @__xmlattr = {}
        end
      end
    end

    # inner class for member: UpdateStudent
    # {}UpdateStudent
    class UpdateStudent < ::Array

      # {}Student
      #   userDefinedA - (any)
      #   userDefinedB - (any)
      #   authDropBelowFC - Sevis::SEVISStudentBatchType::UpdateStudent::Student::AuthDropBelowFC
      #   cPTEmployment - Sevis::SEVISStudentBatchType::UpdateStudent::Student::CPTEmployment
      #   dependent - Sevis::SEVISStudentBatchType::UpdateStudent::Student::Dependent
      #   disciplinaryAction - Sevis::SEVISStudentBatchType::UpdateStudent::Student::DisciplinaryAction
      #   educationLevel - Sevis::SEVISStudentBatchType::UpdateStudent::Student::EducationLevel
      #   financialInfo - Sevis::SEVISStudentBatchType::UpdateStudent::Student::FinancialInfo
      #   offCampusEmployment - Sevis::SEVISStudentBatchType::UpdateStudent::Student::OffCampusEmployment
      #   oPTEmployment - Sevis::SEVISStudentBatchType::UpdateStudent::Student::OPTEmployment
      #   oPTEmployer - Sevis::SEVISStudentBatchType::UpdateStudent::Student::OPTEmployer
      #   personalInfo - Sevis::SEVISStudentBatchType::UpdateStudent::Student::PersonalInfo
      #   program - Sevis::SEVISStudentBatchType::UpdateStudent::Student::Program
      #   registration - Sevis::SEVISStudentBatchType::UpdateStudent::Student::Registration
      #   reprint - Sevis::ReprintType
      #   request - Sevis::SEVISStudentBatchType::UpdateStudent::Student::Request
      #   status - Sevis::SEVISStudentBatchType::UpdateStudent::Student::Status
      #   xmlattr_sevisID - SOAP::SOAPString
      #   xmlattr_requestID - SOAP::SOAPString
      #   xmlattr_userID - SOAP::SOAPString
      #   xmlattr_statusCode - SOAP::SOAPString
      class Student
        AttrRequestID = XSD::QName.new(nil, "requestID")
        AttrSevisID = XSD::QName.new(nil, "sevisID")
        AttrStatusCode = XSD::QName.new(nil, "statusCode")
        AttrUserID = XSD::QName.new(nil, "userID")

        # inner class for member: AuthDropBelowFC
        # {}AuthDropBelowFC
        #   add - Sevis::SEVISStudentBatchType::UpdateStudent::Student::AuthDropBelowFC::Add
        #   cancel - Sevis::SEVISStudentBatchType::UpdateStudent::Student::AuthDropBelowFC::Cancel
        #   edit - Sevis::SEVISStudentBatchType::UpdateStudent::Student::AuthDropBelowFC::Edit
        class AuthDropBelowFC

          # inner class for member: Add
          # {}Add
          #   reason - Sevis::DropBlwfullType
          #   startDate - (any)
          #   endDate - (any)
          #   remarks - (any)
          #   xmlattr_printForm - SOAP::SOAPBoolean
          class Add < AuthDropBelowType
            AttrPrintForm = XSD::QName.new(nil, "printForm")

            attr_accessor :reason
            attr_accessor :startDate
            attr_accessor :endDate
            attr_accessor :remarks

            def __xmlattr
              @__xmlattr ||= {}
            end

            def xmlattr_printForm
              __xmlattr[AttrPrintForm]
            end

            def xmlattr_printForm=(value)
              __xmlattr[AttrPrintForm] = value
            end

            def initialize(reason = nil, startDate = nil, endDate = nil, remarks = nil)
              @reason = reason
              @startDate = startDate
              @endDate = endDate
              @remarks = remarks
              @__xmlattr = {}
            end
          end

          # inner class for member: Cancel
          # {}Cancel
          #   reason - Sevis::DropBlwfullType
          #   startDate - (any)
          #   endDate - (any)
          #   xmlattr_printForm - SOAP::SOAPBoolean
          class Cancel
            AttrPrintForm = XSD::QName.new(nil, "printForm")

            attr_accessor :reason
            attr_accessor :startDate
            attr_accessor :endDate

            def __xmlattr
              @__xmlattr ||= {}
            end

            def xmlattr_printForm
              __xmlattr[AttrPrintForm]
            end

            def xmlattr_printForm=(value)
              __xmlattr[AttrPrintForm] = value
            end

            def initialize(reason = nil, startDate = nil, endDate = nil)
              @reason = reason
              @startDate = startDate
              @endDate = endDate
              @__xmlattr = {}
            end
          end

          # inner class for member: Edit
          # {}Edit
          #   reason - Sevis::DropBlwfullType
          #   startDate - (any)
          #   endDate - (any)
          #   remarks - (any)
          #   newReason - Sevis::DropBlwfullType
          #   newStartDate - (any)
          #   newEndDate - (any)
          #   xmlattr_printForm - SOAP::SOAPBoolean
          class Edit < AuthDropBelowType
            AttrPrintForm = XSD::QName.new(nil, "printForm")

            attr_accessor :reason
            attr_accessor :startDate
            attr_accessor :endDate
            attr_accessor :remarks
            attr_accessor :newReason
            attr_accessor :newStartDate
            attr_accessor :newEndDate

            def __xmlattr
              @__xmlattr ||= {}
            end

            def xmlattr_printForm
              __xmlattr[AttrPrintForm]
            end

            def xmlattr_printForm=(value)
              __xmlattr[AttrPrintForm] = value
            end

            def initialize(reason = nil, startDate = nil, endDate = nil, remarks = nil, newReason = nil, newStartDate = nil, newEndDate = nil)
              @reason = reason
              @startDate = startDate
              @endDate = endDate
              @remarks = remarks
              @newReason = newReason
              @newStartDate = newStartDate
              @newEndDate = newEndDate
              @__xmlattr = {}
            end
          end

          attr_accessor :add
          attr_accessor :cancel
          attr_accessor :edit

          def initialize(add = nil, cancel = nil, edit = nil)
            @add = add
            @cancel = cancel
            @edit = edit
          end
        end

        # inner class for member: CPTEmployment
        # {}CPTEmployment
        #   add - Sevis::SEVISStudentBatchType::UpdateStudent::Student::CPTEmployment::Add
        #   cancel - Sevis::SEVISStudentBatchType::UpdateStudent::Student::CPTEmployment::Cancel
        class CPTEmployment

          # inner class for member: Add
          # {}Add
          #   startDate - (any)
          #   endDate - (any)
          #   fullPartTimeIndicator - Sevis::EmploymentTimeType
          #   employerName - SOAP::SOAPString
          #   employerAddress - Sevis::USAddressType
          #   courseRelevance - (any)
          #   remarks - (any)
          #   xmlattr_printForm - SOAP::SOAPBoolean
          class Add < CPTEmploymentType
            AttrPrintForm = XSD::QName.new(nil, "printForm")

            attr_accessor :startDate
            attr_accessor :endDate
            attr_accessor :fullPartTimeIndicator
            attr_accessor :employerName
            attr_accessor :employerAddress
            attr_accessor :courseRelevance
            attr_accessor :remarks

            def __xmlattr
              @__xmlattr ||= {}
            end

            def xmlattr_printForm
              __xmlattr[AttrPrintForm]
            end

            def xmlattr_printForm=(value)
              __xmlattr[AttrPrintForm] = value
            end

            def initialize(startDate = nil, endDate = nil, fullPartTimeIndicator = nil, employerName = nil, employerAddress = nil, courseRelevance = nil, remarks = nil)
              @startDate = startDate
              @endDate = endDate
              @fullPartTimeIndicator = fullPartTimeIndicator
              @employerName = employerName
              @employerAddress = employerAddress
              @courseRelevance = courseRelevance
              @remarks = remarks
              @__xmlattr = {}
            end
          end

          # inner class for member: Cancel
          # {}Cancel
          #   startDate - (any)
          #   endDate - (any)
          #   fullPartTimeIndicator - Sevis::EmploymentTimeType
          #   employerName - SOAP::SOAPString
          #   xmlattr_printForm - SOAP::SOAPBoolean
          class Cancel < CPTEmploymentType
            AttrPrintForm = XSD::QName.new(nil, "printForm")

            attr_accessor :startDate
            attr_accessor :endDate
            attr_accessor :fullPartTimeIndicator
            attr_accessor :employerName

            def __xmlattr
              @__xmlattr ||= {}
            end

            def xmlattr_printForm
              __xmlattr[AttrPrintForm]
            end

            def xmlattr_printForm=(value)
              __xmlattr[AttrPrintForm] = value
            end

            def initialize(startDate = nil, endDate = nil, fullPartTimeIndicator = nil, employerName = nil)
              @startDate = startDate
              @endDate = endDate
              @fullPartTimeIndicator = fullPartTimeIndicator
              @employerName = employerName
              @__xmlattr = {}
            end
          end

          attr_accessor :add
          attr_accessor :cancel

          def initialize(add = nil, cancel = nil)
            @add = add
            @cancel = cancel
          end
        end

        # inner class for member: Dependent
        # {}Dependent
        #   userDefinedA - (any)
        #   userDefinedB - (any)
        #   add - Sevis::SEVISStudentBatchType::UpdateStudent::Student::Dependent::Add
        #   cancel - Sevis::SEVISStudentBatchType::UpdateStudent::Student::Dependent::Cancel
        #   edit - Sevis::SEVISStudentBatchType::UpdateStudent::Student::Dependent::Edit
        #   reactivate - Sevis::SEVISStudentBatchType::UpdateStudent::Student::Dependent::Reactivate
        #   reprint - Sevis::SEVISStudentBatchType::UpdateStudent::Student::Dependent::Reprint
        #   terminate - Sevis::SEVISStudentBatchType::UpdateStudent::Student::Dependent::Terminate
        class Dependent

          # inner class for member: Add
          # {}Add
          #   fullName - Sevis::NameType
          #   birthDate - (any)
          #   gender - Sevis::GenderCodeType
          #   birthCountryCode - Sevis::BirthCntryCodeType
          #   citizenshipStatus - Sevis::CitizenshipStatusType
          #   citizenshipCountryCode - Sevis::CntryCodeWithoutType
          #   email - (any)
          #   visaType - Sevis::DependentFMVisaType
          #   relationship - Sevis::DependentCodeType
          #   remarks - (any)
          #   xmlattr_printForm - SOAP::SOAPBoolean
          class Add < NonImgBioType
            AttrPrintForm = XSD::QName.new(nil, "printForm")

            attr_accessor :fullName
            attr_accessor :birthDate
            attr_accessor :gender
            attr_accessor :birthCountryCode
            attr_accessor :citizenshipStatus
            attr_accessor :citizenshipCountryCode
            attr_accessor :email
            attr_accessor :visaType
            attr_accessor :relationship
            attr_accessor :remarks

            def __xmlattr
              @__xmlattr ||= {}
            end

            def xmlattr_printForm
              __xmlattr[AttrPrintForm]
            end

            def xmlattr_printForm=(value)
              __xmlattr[AttrPrintForm] = value
            end

            def initialize(fullName = nil, birthDate = nil, gender = nil, birthCountryCode = nil, citizenshipStatus = nil, citizenshipCountryCode = nil, email = nil, visaType = nil, relationship = nil, remarks = nil)
              @fullName = fullName
              @birthDate = birthDate
              @gender = gender
              @birthCountryCode = birthCountryCode
              @citizenshipStatus = citizenshipStatus
              @citizenshipCountryCode = citizenshipCountryCode
              @email = email
              @visaType = visaType
              @relationship = relationship
              @remarks = remarks
              @__xmlattr = {}
            end
          end

          # inner class for member: Cancel
          # {}Cancel
          #   reason - Sevis::DependentCancelReasonType
          #   remarks - (any)
          #   xmlattr_dependentSevisID - SOAP::SOAPString
          class Cancel
            AttrDependentSevisID = XSD::QName.new(nil, "dependentSevisID")

            attr_accessor :reason
            attr_accessor :remarks

            def __xmlattr
              @__xmlattr ||= {}
            end

            def xmlattr_dependentSevisID
              __xmlattr[AttrDependentSevisID]
            end

            def xmlattr_dependentSevisID=(value)
              __xmlattr[AttrDependentSevisID] = value
            end

            def initialize(reason = nil, remarks = nil)
              @reason = reason
              @remarks = remarks
              @__xmlattr = {}
            end
          end

          # inner class for member: Edit
          # {}Edit
          #   fullName - Sevis::NameNullableType
          #   birthDate - (any)
          #   gender - Sevis::GenderCodeType
          #   birthCountryCode - Sevis::BirthCntryCodeType
          #   citizenshipStatus - Sevis::CitizenshipStatusType
          #   citizenshipCountryCode - (any)
          #   email - (any)
          #   relationship - Sevis::DependentCodeType
          #   remarks - (any)
          #   xmlattr_printForm - SOAP::SOAPBoolean
          #   xmlattr_dependentSevisID - SOAP::SOAPString
          class Edit
            AttrDependentSevisID = XSD::QName.new(nil, "dependentSevisID")
            AttrPrintForm = XSD::QName.new(nil, "printForm")

            attr_accessor :fullName
            attr_accessor :birthDate
            attr_accessor :gender
            attr_accessor :birthCountryCode
            attr_accessor :citizenshipStatus
            attr_accessor :citizenshipCountryCode
            attr_accessor :email
            attr_accessor :relationship
            attr_accessor :remarks

            def __xmlattr
              @__xmlattr ||= {}
            end

            def xmlattr_printForm
              __xmlattr[AttrPrintForm]
            end

            def xmlattr_printForm=(value)
              __xmlattr[AttrPrintForm] = value
            end

            def xmlattr_dependentSevisID
              __xmlattr[AttrDependentSevisID]
            end

            def xmlattr_dependentSevisID=(value)
              __xmlattr[AttrDependentSevisID] = value
            end

            def initialize(fullName = nil, birthDate = nil, gender = nil, birthCountryCode = nil, citizenshipStatus = nil, citizenshipCountryCode = nil, email = nil, relationship = nil, remarks = nil)
              @fullName = fullName
              @birthDate = birthDate
              @gender = gender
              @birthCountryCode = birthCountryCode
              @citizenshipStatus = citizenshipStatus
              @citizenshipCountryCode = citizenshipCountryCode
              @email = email
              @relationship = relationship
              @remarks = remarks
              @__xmlattr = {}
            end
          end

          # inner class for member: Reactivate
          # {}Reactivate
          #   xmlattr_printForm - SOAP::SOAPBoolean
          #   xmlattr_dependentSevisID - SOAP::SOAPString
          class Reactivate
            AttrDependentSevisID = XSD::QName.new(nil, "dependentSevisID")
            AttrPrintForm = XSD::QName.new(nil, "printForm")

            def __xmlattr
              @__xmlattr ||= {}
            end

            def xmlattr_printForm
              __xmlattr[AttrPrintForm]
            end

            def xmlattr_printForm=(value)
              __xmlattr[AttrPrintForm] = value
            end

            def xmlattr_dependentSevisID
              __xmlattr[AttrDependentSevisID]
            end

            def xmlattr_dependentSevisID=(value)
              __xmlattr[AttrDependentSevisID] = value
            end

            def initialize
              @__xmlattr = {}
            end
          end

          # inner class for member: Reprint
          # {}Reprint
          #   xmlattr_printForm - SOAP::SOAPBoolean
          #   xmlattr_dependentSevisID - SOAP::SOAPString
          class Reprint
            AttrDependentSevisID = XSD::QName.new(nil, "dependentSevisID")
            AttrPrintForm = XSD::QName.new(nil, "printForm")

            def __xmlattr
              @__xmlattr ||= {}
            end

            def xmlattr_printForm
              __xmlattr[AttrPrintForm]
            end

            def xmlattr_printForm=(value)
              __xmlattr[AttrPrintForm] = value
            end

            def xmlattr_dependentSevisID
              __xmlattr[AttrDependentSevisID]
            end

            def xmlattr_dependentSevisID=(value)
              __xmlattr[AttrDependentSevisID] = value
            end

            def initialize
              @__xmlattr = {}
            end
          end

          # inner class for member: Terminate
          # {}Terminate
          #   reason - Sevis::DependentTerminationReasonType
          #   otherRemarks - (any)
          #   remarks - (any)
          #   xmlattr_dependentSevisID - SOAP::SOAPString
          class Terminate
            AttrDependentSevisID = XSD::QName.new(nil, "dependentSevisID")

            attr_accessor :reason
            attr_accessor :otherRemarks
            attr_accessor :remarks

            def __xmlattr
              @__xmlattr ||= {}
            end

            def xmlattr_dependentSevisID
              __xmlattr[AttrDependentSevisID]
            end

            def xmlattr_dependentSevisID=(value)
              __xmlattr[AttrDependentSevisID] = value
            end

            def initialize(reason = nil, otherRemarks = nil, remarks = nil)
              @reason = reason
              @otherRemarks = otherRemarks
              @remarks = remarks
              @__xmlattr = {}
            end
          end

          attr_accessor :userDefinedA
          attr_accessor :userDefinedB
          attr_accessor :add
          attr_accessor :cancel
          attr_accessor :edit
          attr_accessor :reactivate
          attr_accessor :reprint
          attr_accessor :terminate

          def initialize(userDefinedA = nil, userDefinedB = nil, add = nil, cancel = nil, edit = nil, reactivate = nil, reprint = nil, terminate = nil)
            @userDefinedA = userDefinedA
            @userDefinedB = userDefinedB
            @add = add
            @cancel = cancel
            @edit = edit
            @reactivate = reactivate
            @reprint = reprint
            @terminate = terminate
          end
        end

        # inner class for member: DisciplinaryAction
        # {}DisciplinaryAction
        #   explanation - (any)
        class DisciplinaryAction
          attr_accessor :explanation

          def initialize(explanation = nil)
            @explanation = explanation
          end
        end

        # inner class for member: EducationLevel
        # {}EducationLevel
        #   cancel - Sevis::SEVISStudentBatchType::UpdateStudent::Student::EducationLevel::Cancel
        #   change - Sevis::SEVISStudentBatchType::UpdateStudent::Student::EducationLevel::Change
        class EducationLevel

          # inner class for member: Cancel
          # {}Cancel
          #   remarks - (any)
          class Cancel
            attr_accessor :remarks

            def initialize(remarks = nil)
              @remarks = remarks
            end
          end

          # inner class for member: Change
          # {}Change
          #   educationalInfo - Sevis::EducationalInfoType
          #   financialInfo - Sevis::FinancialType
          #   remarks - (any)
          #   xmlattr_printForm - SOAP::SOAPBoolean
          class Change
            AttrPrintForm = XSD::QName.new(nil, "printForm")

            attr_accessor :educationalInfo
            attr_accessor :financialInfo
            attr_accessor :remarks

            def __xmlattr
              @__xmlattr ||= {}
            end

            def xmlattr_printForm
              __xmlattr[AttrPrintForm]
            end

            def xmlattr_printForm=(value)
              __xmlattr[AttrPrintForm] = value
            end

            def initialize(educationalInfo = nil, financialInfo = nil, remarks = nil)
              @educationalInfo = educationalInfo
              @financialInfo = financialInfo
              @remarks = remarks
              @__xmlattr = {}
            end
          end

          attr_accessor :cancel
          attr_accessor :change

          def initialize(cancel = nil, change = nil)
            @cancel = cancel
            @change = change
          end
        end

        # inner class for member: FinancialInfo
        # {}FinancialInfo
        #   academicTerm - SOAP::SOAPString
        #   expense - Sevis::SEVISStudentBatchType::UpdateStudent::Student::FinancialInfo::Expense
        #   funding - Sevis::SEVISStudentBatchType::UpdateStudent::Student::FinancialInfo::Funding
        #   remarks - (any)
        #   xmlattr_printForm - SOAP::SOAPBoolean
        class FinancialInfo < FinancialNullableType
          AttrPrintForm = XSD::QName.new(nil, "printForm")

          # inner class for member: Expense
          # {}Expense
          #   tuition - (any)
          #   livingExpense - (any)
          #   dependentExp - (any)
          #   other - Sevis::FinancialAmountNullableType
          class Expense
            attr_accessor :tuition
            attr_accessor :livingExpense
            attr_accessor :dependentExp
            attr_accessor :other

            def initialize(tuition = nil, livingExpense = nil, dependentExp = nil, other = nil)
              @tuition = tuition
              @livingExpense = livingExpense
              @dependentExp = dependentExp
              @other = other
            end
          end

          # inner class for member: Funding
          # {}Funding
          #   personal - (any)
          #   school - Sevis::FinancialAmountNullableType
          #   other - Sevis::FinancialAmountNullableType
          #   employment - (any)
          class Funding
            attr_accessor :personal
            attr_accessor :school
            attr_accessor :other
            attr_accessor :employment

            def initialize(personal = nil, school = nil, other = nil, employment = nil)
              @personal = personal
              @school = school
              @other = other
              @employment = employment
            end
          end

          attr_accessor :academicTerm
          attr_accessor :expense
          attr_accessor :funding
          attr_accessor :remarks

          def __xmlattr
            @__xmlattr ||= {}
          end

          def xmlattr_printForm
            __xmlattr[AttrPrintForm]
          end

          def xmlattr_printForm=(value)
            __xmlattr[AttrPrintForm] = value
          end

          def initialize(academicTerm = nil, expense = nil, funding = nil, remarks = nil)
            @academicTerm = academicTerm
            @expense = expense
            @funding = funding
            @remarks = remarks
            @__xmlattr = {}
          end
        end

        # inner class for member: OffCampusEmployment
        # {}OffCampusEmployment
        #   add - Sevis::SEVISStudentBatchType::UpdateStudent::Student::OffCampusEmployment::Add
        #   cancel - Sevis::SEVISStudentBatchType::UpdateStudent::Student::OffCampusEmployment::Cancel
        #   edit - Sevis::SEVISStudentBatchType::UpdateStudent::Student::OffCampusEmployment::Edit
        class OffCampusEmployment

          # inner class for member: Add
          # {}Add
          #   startDate - (any)
          #   endDate - (any)
          #   employmentType - Sevis::OffCampusEmploymentCodeType
          #   recommendation - (any)
          #   xmlattr_printForm - SOAP::SOAPBoolean
          class Add < OCEmploymentType
            AttrPrintForm = XSD::QName.new(nil, "printForm")

            attr_accessor :startDate
            attr_accessor :endDate
            attr_accessor :employmentType
            attr_accessor :recommendation

            def __xmlattr
              @__xmlattr ||= {}
            end

            def xmlattr_printForm
              __xmlattr[AttrPrintForm]
            end

            def xmlattr_printForm=(value)
              __xmlattr[AttrPrintForm] = value
            end

            def initialize(startDate = nil, endDate = nil, employmentType = nil, recommendation = nil)
              @startDate = startDate
              @endDate = endDate
              @employmentType = employmentType
              @recommendation = recommendation
              @__xmlattr = {}
            end
          end

          # inner class for member: Cancel
          # {}Cancel
          #   startDate - (any)
          #   endDate - (any)
          #   employmentType - Sevis::OffCampusEmploymentCodeType
          #   xmlattr_printForm - SOAP::SOAPBoolean
          class Cancel < OCEmploymentType
            AttrPrintForm = XSD::QName.new(nil, "printForm")

            attr_accessor :startDate
            attr_accessor :endDate
            attr_accessor :employmentType

            def __xmlattr
              @__xmlattr ||= {}
            end

            def xmlattr_printForm
              __xmlattr[AttrPrintForm]
            end

            def xmlattr_printForm=(value)
              __xmlattr[AttrPrintForm] = value
            end

            def initialize(startDate = nil, endDate = nil, employmentType = nil)
              @startDate = startDate
              @endDate = endDate
              @employmentType = employmentType
              @__xmlattr = {}
            end
          end

          # inner class for member: Edit
          # {}Edit
          #   startDate - (any)
          #   endDate - (any)
          #   employmentType - Sevis::OffCampusEmploymentCodeType
          #   newStartDate - (any)
          #   newEndDate - (any)
          #   newEmploymentType - Sevis::OffCampusEmploymentCodeType
          #   recommendation - (any)
          #   xmlattr_printForm - SOAP::SOAPBoolean
          class Edit < OCEmploymentType
            AttrPrintForm = XSD::QName.new(nil, "printForm")

            attr_accessor :startDate
            attr_accessor :endDate
            attr_accessor :employmentType
            attr_accessor :newStartDate
            attr_accessor :newEndDate
            attr_accessor :newEmploymentType
            attr_accessor :recommendation

            def __xmlattr
              @__xmlattr ||= {}
            end

            def xmlattr_printForm
              __xmlattr[AttrPrintForm]
            end

            def xmlattr_printForm=(value)
              __xmlattr[AttrPrintForm] = value
            end

            def initialize(startDate = nil, endDate = nil, employmentType = nil, newStartDate = nil, newEndDate = nil, newEmploymentType = nil, recommendation = nil)
              @startDate = startDate
              @endDate = endDate
              @employmentType = employmentType
              @newStartDate = newStartDate
              @newEndDate = newEndDate
              @newEmploymentType = newEmploymentType
              @recommendation = recommendation
              @__xmlattr = {}
            end
          end

          attr_accessor :add
          attr_accessor :cancel
          attr_accessor :edit

          def initialize(add = nil, cancel = nil, edit = nil)
            @add = add
            @cancel = cancel
            @edit = edit
          end
        end

        # inner class for member: OPTEmployment
        # {}OPTEmployment
        #   add - Sevis::SEVISStudentBatchType::UpdateStudent::Student::OPTEmployment::Add
        #   cancel - Sevis::SEVISStudentBatchType::UpdateStudent::Student::OPTEmployment::Cancel
        #   edit - Sevis::SEVISStudentBatchType::UpdateStudent::Student::OPTEmployment::Edit
        #   extend - Sevis::SEVISStudentBatchType::UpdateStudent::Student::OPTEmployment::Extend
        #   reportParticipation - Sevis::OPTEmploymentType
        class OPTEmployment

          # inner class for member: Add
          # {}Add
          #   startDate - (any)
          #   endDate - (any)
          #   fullPartTimeIndicator - Sevis::EmploymentTimeType
          #   academicYearMet - (any)
          #   completionType - Sevis::OPTCompletionType
          #   studentRemarks - (any)
          #   remarks - (any)
          #   employer - Sevis::Employer
          #   xmlattr_printForm - SOAP::SOAPBoolean
          class Add < OPTEmploymentType
            AttrPrintForm = XSD::QName.new(nil, "printForm")

            attr_accessor :startDate
            attr_accessor :endDate
            attr_accessor :fullPartTimeIndicator
            attr_accessor :academicYearMet
            attr_accessor :completionType
            attr_accessor :studentRemarks
            attr_accessor :remarks
            attr_accessor :employer

            def __xmlattr
              @__xmlattr ||= {}
            end

            def xmlattr_printForm
              __xmlattr[AttrPrintForm]
            end

            def xmlattr_printForm=(value)
              __xmlattr[AttrPrintForm] = value
            end

            def initialize(startDate = nil, endDate = nil, fullPartTimeIndicator = nil, academicYearMet = nil, completionType = nil, studentRemarks = nil, remarks = nil, employer = [])
              @startDate = startDate
              @endDate = endDate
              @fullPartTimeIndicator = fullPartTimeIndicator
              @academicYearMet = academicYearMet
              @completionType = completionType
              @studentRemarks = studentRemarks
              @remarks = remarks
              @employer = employer
              @__xmlattr = {}
            end
          end

          # inner class for member: Cancel
          # {}Cancel
          #   startDate - (any)
          #   endDate - (any)
          #   fullPartTimeIndicator - Sevis::EmploymentTimeType
          #   xmlattr_printForm - SOAP::SOAPBoolean
          class Cancel < OPTEmploymentType
            AttrPrintForm = XSD::QName.new(nil, "printForm")

            attr_accessor :startDate
            attr_accessor :endDate
            attr_accessor :fullPartTimeIndicator

            def __xmlattr
              @__xmlattr ||= {}
            end

            def xmlattr_printForm
              __xmlattr[AttrPrintForm]
            end

            def xmlattr_printForm=(value)
              __xmlattr[AttrPrintForm] = value
            end

            def initialize(startDate = nil, endDate = nil, fullPartTimeIndicator = nil)
              @startDate = startDate
              @endDate = endDate
              @fullPartTimeIndicator = fullPartTimeIndicator
              @__xmlattr = {}
            end
          end

          # inner class for member: Edit
          # {}Edit
          #   startDate - (any)
          #   endDate - (any)
          #   fullPartTimeIndicator - Sevis::EmploymentTimeType
          #   newFullPartTimeIndicator - Sevis::EmploymentTimeType
          #   academicYearMet - (any)
          #   studentRemarks - (any)
          #   remarks - (any)
          #   xmlattr_printForm - SOAP::SOAPBoolean
          class Edit < OPTEmploymentType
            AttrPrintForm = XSD::QName.new(nil, "printForm")

            attr_accessor :startDate
            attr_accessor :endDate
            attr_accessor :fullPartTimeIndicator
            attr_accessor :newFullPartTimeIndicator
            attr_accessor :academicYearMet
            attr_accessor :studentRemarks
            attr_accessor :remarks

            def __xmlattr
              @__xmlattr ||= {}
            end

            def xmlattr_printForm
              __xmlattr[AttrPrintForm]
            end

            def xmlattr_printForm=(value)
              __xmlattr[AttrPrintForm] = value
            end

            def initialize(startDate = nil, endDate = nil, fullPartTimeIndicator = nil, newFullPartTimeIndicator = nil, academicYearMet = nil, studentRemarks = nil, remarks = nil)
              @startDate = startDate
              @endDate = endDate
              @fullPartTimeIndicator = fullPartTimeIndicator
              @newFullPartTimeIndicator = newFullPartTimeIndicator
              @academicYearMet = academicYearMet
              @studentRemarks = studentRemarks
              @remarks = remarks
              @__xmlattr = {}
            end
          end

          # inner class for member: Extend
          # {}Extend
          #   startDate - (any)
          #   endDate - (any)
          #   fullPartTimeIndicator - Sevis::EmploymentTimeType
          #   employer - Sevis::Employer
          #   xmlattr_printForm - SOAP::SOAPBoolean
          class Extend < OPTEmploymentType
            AttrPrintForm = XSD::QName.new(nil, "printForm")

            attr_accessor :startDate
            attr_accessor :endDate
            attr_accessor :fullPartTimeIndicator
            attr_accessor :employer

            def __xmlattr
              @__xmlattr ||= {}
            end

            def xmlattr_printForm
              __xmlattr[AttrPrintForm]
            end

            def xmlattr_printForm=(value)
              __xmlattr[AttrPrintForm] = value
            end

            def initialize(startDate = nil, endDate = nil, fullPartTimeIndicator = nil, employer = [])
              @startDate = startDate
              @endDate = endDate
              @fullPartTimeIndicator = fullPartTimeIndicator
              @employer = employer
              @__xmlattr = {}
            end
          end

          attr_accessor :add
          attr_accessor :cancel
          attr_accessor :edit
          attr_accessor :extend
          attr_accessor :reportParticipation

          def initialize(add = nil, cancel = nil, edit = nil, extend = nil, reportParticipation = nil)
            @add = add
            @cancel = cancel
            @edit = edit
            @extend = extend
            @reportParticipation = reportParticipation
          end
        end

        # inner class for member: OPTEmployer
        # {}OPTEmployer
        #   add - Sevis::SEVISStudentBatchType::UpdateStudent::Student::OPTEmployer::Add
        #   edit - Sevis::SEVISStudentBatchType::UpdateStudent::Student::OPTEmployer::Edit
        class OPTEmployer

          # inner class for member: Add
          # {}Add
          #   employmentIdentifier - Sevis::EmploymentIdentifier
          #   employer - Sevis::Employer
          #   xmlattr_printForm - SOAP::SOAPBoolean
          class Add
            AttrPrintForm = XSD::QName.new(nil, "printForm")

            attr_accessor :employmentIdentifier
            attr_accessor :employer

            def __xmlattr
              @__xmlattr ||= {}
            end

            def xmlattr_printForm
              __xmlattr[AttrPrintForm]
            end

            def xmlattr_printForm=(value)
              __xmlattr[AttrPrintForm] = value
            end

            def initialize(employmentIdentifier = nil, employer = [])
              @employmentIdentifier = employmentIdentifier
              @employer = employer
              @__xmlattr = {}
            end
          end

          # inner class for member: Edit
          # {}Edit
          #   employmentIdentifier - Sevis::EmploymentIdentifier
          #   employerIdentifier - Sevis::EmployerIdentifier
          #   employer - Sevis::UpdateEmployerType
          #   xmlattr_printForm - SOAP::SOAPBoolean
          class Edit
            AttrPrintForm = XSD::QName.new(nil, "printForm")

            attr_accessor :employmentIdentifier
            attr_accessor :employerIdentifier
            attr_accessor :employer

            def __xmlattr
              @__xmlattr ||= {}
            end

            def xmlattr_printForm
              __xmlattr[AttrPrintForm]
            end

            def xmlattr_printForm=(value)
              __xmlattr[AttrPrintForm] = value
            end

            def initialize(employmentIdentifier = nil, employerIdentifier = nil, employer = nil)
              @employmentIdentifier = employmentIdentifier
              @employerIdentifier = employerIdentifier
              @employer = employer
              @__xmlattr = {}
            end
          end

          attr_accessor :add
          attr_accessor :edit

          def initialize(add = nil, edit = nil)
            @add = add
            @edit = edit
          end
        end

        # inner class for member: PersonalInfo
        # {}PersonalInfo
        #   fullName - Sevis::NameNullableType
        #   birthDate - (any)
        #   gender - Sevis::GenderCodeType
        #   birthCountryCode - Sevis::BirthCntryCodeType
        #   citizenshipStatus - Sevis::CitizenshipStatusType
        #   citizenshipCountryCode - Sevis::CntryCodeWithoutType
        #   email - (any)
        #   telephone - Sevis::SEVISStudentBatchType::UpdateStudent::Student::PersonalInfo::Telephone
        #   commuter - (any)
        #   uSAddress - Sevis::USAddrDoctorType
        #   mailingAddress - Sevis::USAddrDoctorType
        #   foreignAddress - Sevis::ForeignAddrNullableType
        #   remarks - (any)
        #   xmlattr_printForm - SOAP::SOAPBoolean
        class PersonalInfo
          AttrPrintForm = XSD::QName.new(nil, "printForm")

          # inner class for member: Telephone
          # {}Telephone
          #   telephoneExemptInd - Sevis::IndicatorTypeYN
          #   phone - Sevis::TelephoneType
          class Telephone
            attr_accessor :telephoneExemptInd
            attr_accessor :phone

            def initialize(telephoneExemptInd = nil, phone = nil)
              @telephoneExemptInd = telephoneExemptInd
              @phone = phone
            end
          end

          attr_accessor :fullName
          attr_accessor :birthDate
          attr_accessor :gender
          attr_accessor :birthCountryCode
          attr_accessor :citizenshipStatus
          attr_accessor :citizenshipCountryCode
          attr_accessor :email
          attr_accessor :telephone
          attr_accessor :commuter
          attr_accessor :uSAddress
          attr_accessor :mailingAddress
          attr_accessor :foreignAddress
          attr_accessor :remarks

          def __xmlattr
            @__xmlattr ||= {}
          end

          def xmlattr_printForm
            __xmlattr[AttrPrintForm]
          end

          def xmlattr_printForm=(value)
            __xmlattr[AttrPrintForm] = value
          end

          def initialize(fullName = nil, birthDate = nil, gender = nil, birthCountryCode = nil, citizenshipStatus = nil, citizenshipCountryCode = nil, email = nil, telephone = nil, commuter = nil, uSAddress = nil, mailingAddress = nil, foreignAddress = nil, remarks = nil)
            @fullName = fullName
            @birthDate = birthDate
            @gender = gender
            @birthCountryCode = birthCountryCode
            @citizenshipStatus = citizenshipStatus
            @citizenshipCountryCode = citizenshipCountryCode
            @email = email
            @telephone = telephone
            @commuter = commuter
            @uSAddress = uSAddress
            @mailingAddress = mailingAddress
            @foreignAddress = foreignAddress
            @remarks = remarks
            @__xmlattr = {}
          end
        end

        # inner class for member: Program
        # {}Program
        #   cancelExtension - Sevis::SEVISStudentBatchType::UpdateStudent::Student::Program::CancelExtension
        #   manageSessionDates - Sevis::SEVISStudentBatchType::UpdateStudent::Student::Program::ManageSessionDates
        #   edit - Sevis::SEVISStudentBatchType::UpdateStudent::Student::Program::Edit
        #   extension - Sevis::SEVISStudentBatchType::UpdateStudent::Student::Program::Extension
        #   shorten - Sevis::SEVISStudentBatchType::UpdateStudent::Student::Program::Shorten
        class Program

          # inner class for member: CancelExtension
          # {}CancelExtension
          #   newPrgEndDate - (any)
          #   remarks - (any)
          #   xmlattr_printForm - SOAP::SOAPBoolean
          class CancelExtension < ProgramExtendType
            AttrPrintForm = XSD::QName.new(nil, "printForm")

            attr_accessor :newPrgEndDate
            attr_accessor :remarks

            def __xmlattr
              @__xmlattr ||= {}
            end

            def xmlattr_printForm
              __xmlattr[AttrPrintForm]
            end

            def xmlattr_printForm=(value)
              __xmlattr[AttrPrintForm] = value
            end

            def initialize(newPrgEndDate = nil, remarks = nil)
              @newPrgEndDate = newPrgEndDate
              @remarks = remarks
              @__xmlattr = {}
            end
          end

          # inner class for member: ManageSessionDates
          # {}ManageSessionDates
          #   issDate - (any)
          #   newPrgStartDate - (any)
          #   newPrgEndDate - (any)
          #   remarks - (any)
          #   xmlattr_printForm - SOAP::SOAPBoolean
          class ManageSessionDates
            AttrPrintForm = XSD::QName.new(nil, "printForm")

            attr_accessor :issDate
            attr_accessor :newPrgStartDate
            attr_accessor :newPrgEndDate
            attr_accessor :remarks

            def __xmlattr
              @__xmlattr ||= {}
            end

            def xmlattr_printForm
              __xmlattr[AttrPrintForm]
            end

            def xmlattr_printForm=(value)
              __xmlattr[AttrPrintForm] = value
            end

            def initialize(issDate = nil, newPrgStartDate = nil, newPrgEndDate = nil, remarks = nil)
              @issDate = issDate
              @newPrgStartDate = newPrgStartDate
              @newPrgEndDate = newPrgEndDate
              @remarks = remarks
              @__xmlattr = {}
            end
          end

          # inner class for member: Edit
          # {}Edit
          #   level - Sevis::EduLevelCodeType
          #   majorCode1 - Sevis::ProgSubjectCodeType
          #   majorCode2 - (any)
          #   minor - (any)
          #   engProficiency - Sevis::SEVISStudentBatchType::UpdateStudent::Student::Program::Edit::EngProficiency
          #   remarks - (any)
          #   xmlattr_printForm - SOAP::SOAPBoolean
          class Edit
            AttrPrintForm = XSD::QName.new(nil, "printForm")

            # inner class for member: EngProficiency
            # {}EngProficiency
            #   engRequired - (any)
            #   requirementsMet - (any)
            #   notRequiredReason - (any)
            class EngProficiency
              attr_accessor :engRequired
              attr_accessor :requirementsMet
              attr_accessor :notRequiredReason

              def initialize(engRequired = nil, requirementsMet = nil, notRequiredReason = nil)
                @engRequired = engRequired
                @requirementsMet = requirementsMet
                @notRequiredReason = notRequiredReason
              end
            end

            attr_accessor :level
            attr_accessor :majorCode1
            attr_accessor :majorCode2
            attr_accessor :minor
            attr_accessor :engProficiency
            attr_accessor :remarks

            def __xmlattr
              @__xmlattr ||= {}
            end

            def xmlattr_printForm
              __xmlattr[AttrPrintForm]
            end

            def xmlattr_printForm=(value)
              __xmlattr[AttrPrintForm] = value
            end

            def initialize(level = nil, majorCode1 = nil, majorCode2 = nil, minor = nil, engProficiency = nil, remarks = nil)
              @level = level
              @majorCode1 = majorCode1
              @majorCode2 = majorCode2
              @minor = minor
              @engProficiency = engProficiency
              @remarks = remarks
              @__xmlattr = {}
            end
          end

          # inner class for member: Extension
          # {}Extension
          #   newPrgEndDate - (any)
          #   remarks - (any)
          #   explanation - (any)
          #   xmlattr_printForm - SOAP::SOAPBoolean
          class Extension < ProgramExtendType
            AttrPrintForm = XSD::QName.new(nil, "printForm")

            attr_accessor :newPrgEndDate
            attr_accessor :remarks
            attr_accessor :explanation

            def __xmlattr
              @__xmlattr ||= {}
            end

            def xmlattr_printForm
              __xmlattr[AttrPrintForm]
            end

            def xmlattr_printForm=(value)
              __xmlattr[AttrPrintForm] = value
            end

            def initialize(newPrgEndDate = nil, remarks = nil, explanation = nil)
              @newPrgEndDate = newPrgEndDate
              @remarks = remarks
              @explanation = explanation
              @__xmlattr = {}
            end
          end

          # inner class for member: Shorten
          # {}Shorten
          #   newPrgEndDate - (any)
          #   remarks - (any)
          #   xmlattr_printForm - SOAP::SOAPBoolean
          class Shorten < ProgramExtendType
            AttrPrintForm = XSD::QName.new(nil, "printForm")

            attr_accessor :newPrgEndDate
            attr_accessor :remarks

            def __xmlattr
              @__xmlattr ||= {}
            end

            def xmlattr_printForm
              __xmlattr[AttrPrintForm]
            end

            def xmlattr_printForm=(value)
              __xmlattr[AttrPrintForm] = value
            end

            def initialize(newPrgEndDate = nil, remarks = nil)
              @newPrgEndDate = newPrgEndDate
              @remarks = remarks
              @__xmlattr = {}
            end
          end

          attr_accessor :cancelExtension
          attr_accessor :manageSessionDates
          attr_accessor :edit
          attr_accessor :extension
          attr_accessor :shorten

          def initialize(cancelExtension = nil, manageSessionDates = nil, edit = nil, extension = nil, shorten = nil)
            @cancelExtension = cancelExtension
            @manageSessionDates = manageSessionDates
            @edit = edit
            @extension = extension
            @shorten = shorten
          end
        end

        # inner class for member: Registration
        # {}Registration
        #   lastSession - (any)
        #   currentSessionStartDate - (any)
        #   currentSessionEndDate - (any)
        #   nextSessionStartDate - (any)
        #   studyResearchAbroad - (any)
        #   thesisDissertation - (any)
        #   email - (any)
        #   telephone - Sevis::SEVISStudentBatchType::UpdateStudent::Student::Registration::Telephone
        #   commuter - (any)
        #   uSAddress - Sevis::USAddrDoctorType
        #   foreignAddress - Sevis::ForeignAddrNullableType
        #   remarks - (any)
        #   xmlattr_printForm - SOAP::SOAPBoolean
        class Registration
          AttrPrintForm = XSD::QName.new(nil, "printForm")

          # inner class for member: Telephone
          # {}Telephone
          #   telephoneExemptInd - Sevis::IndicatorTypeYN
          #   phone - Sevis::TelephoneType
          class Telephone
            attr_accessor :telephoneExemptInd
            attr_accessor :phone

            def initialize(telephoneExemptInd = nil, phone = nil)
              @telephoneExemptInd = telephoneExemptInd
              @phone = phone
            end
          end

          attr_accessor :lastSession
          attr_accessor :currentSessionStartDate
          attr_accessor :currentSessionEndDate
          attr_accessor :nextSessionStartDate
          attr_accessor :studyResearchAbroad
          attr_accessor :thesisDissertation
          attr_accessor :email
          attr_accessor :telephone
          attr_accessor :commuter
          attr_accessor :uSAddress
          attr_accessor :foreignAddress
          attr_accessor :remarks

          def __xmlattr
            @__xmlattr ||= {}
          end

          def xmlattr_printForm
            __xmlattr[AttrPrintForm]
          end

          def xmlattr_printForm=(value)
            __xmlattr[AttrPrintForm] = value
          end

          def initialize(lastSession = nil, currentSessionStartDate = nil, currentSessionEndDate = nil, nextSessionStartDate = nil, studyResearchAbroad = nil, thesisDissertation = nil, email = nil, telephone = nil, commuter = nil, uSAddress = nil, foreignAddress = nil, remarks = nil)
            @lastSession = lastSession
            @currentSessionStartDate = currentSessionStartDate
            @currentSessionEndDate = currentSessionEndDate
            @nextSessionStartDate = nextSessionStartDate
            @studyResearchAbroad = studyResearchAbroad
            @thesisDissertation = thesisDissertation
            @email = email
            @telephone = telephone
            @commuter = commuter
            @uSAddress = uSAddress
            @foreignAddress = foreignAddress
            @remarks = remarks
            @__xmlattr = {}
          end
        end

        # inner class for member: Request
        # {}Request
        #   capGapExtension - Sevis::SEVISStudentBatchType::UpdateStudent::Student::Request::CapGapExtension
        class Request

          # inner class for member: CapGapExtension
          # {}CapGapExtension
          #   status - Sevis::CapGapExtensionType
          #   xmlattr_printForm - SOAP::SOAPBoolean
          class CapGapExtension
            AttrPrintForm = XSD::QName.new(nil, "printForm")

            attr_accessor :status

            def __xmlattr
              @__xmlattr ||= {}
            end

            def xmlattr_printForm
              __xmlattr[AttrPrintForm]
            end

            def xmlattr_printForm=(value)
              __xmlattr[AttrPrintForm] = value
            end

            def initialize(status = nil)
              @status = status
              @__xmlattr = {}
            end
          end

          attr_accessor :capGapExtension

          def initialize(capGapExtension = nil)
            @capGapExtension = capGapExtension
          end
        end

        # inner class for member: Status
        # {}Status
        #   cancel - Sevis::SEVISStudentBatchType::UpdateStudent::Student::Status::Cancel
        #   complete - Sevis::SEVISStudentBatchType::UpdateStudent::Student::Status::Complete
        #   terminate - Sevis::SEVISStudentBatchType::UpdateStudent::Student::Status::Terminate
        #   verify - Sevis::EmptyType
        class Status

          # inner class for member: Cancel
          # {}Cancel
          #   reason - Sevis::StudentCancelReasonType
          #   remarks - (any)
          class Cancel
            attr_accessor :reason
            attr_accessor :remarks

            def initialize(reason = nil, remarks = nil)
              @reason = reason
              @remarks = remarks
            end
          end

          # inner class for member: Complete
          # {}Complete
          #   remarks - (any)
          class Complete
            attr_accessor :remarks

            def initialize(remarks = nil)
              @remarks = remarks
            end
          end

          # inner class for member: Terminate
          # {}Terminate
          #   reason - Sevis::StudentTerminationReasonType
          #   otherRemarks - (any)
          #   remarks - (any)
          class Terminate
            attr_accessor :reason
            attr_accessor :otherRemarks
            attr_accessor :remarks

            def initialize(reason = nil, otherRemarks = nil, remarks = nil)
              @reason = reason
              @otherRemarks = otherRemarks
              @remarks = remarks
            end
          end

          attr_accessor :cancel
          attr_accessor :complete
          attr_accessor :terminate
          attr_accessor :verify

          def initialize(cancel = nil, complete = nil, terminate = nil, verify = nil)
            @cancel = cancel
            @complete = complete
            @terminate = terminate
            @verify = verify
          end
        end

        attr_accessor :userDefinedA
        attr_accessor :userDefinedB
        attr_accessor :authDropBelowFC
        attr_accessor :cPTEmployment
        attr_accessor :dependent
        attr_accessor :disciplinaryAction
        attr_accessor :educationLevel
        attr_accessor :financialInfo
        attr_accessor :offCampusEmployment
        attr_accessor :oPTEmployment
        attr_accessor :oPTEmployer
        attr_accessor :personalInfo
        attr_accessor :program
        attr_accessor :registration
        attr_accessor :reprint
        attr_accessor :request
        attr_accessor :status

        def __xmlattr
          @__xmlattr ||= {}
        end

        def xmlattr_sevisID
          __xmlattr[AttrSevisID]
        end

        def xmlattr_sevisID=(value)
          __xmlattr[AttrSevisID] = value
        end

        def xmlattr_requestID
          __xmlattr[AttrRequestID]
        end

        def xmlattr_requestID=(value)
          __xmlattr[AttrRequestID] = value
        end

        def xmlattr_userID
          __xmlattr[AttrUserID]
        end

        def xmlattr_userID=(value)
          __xmlattr[AttrUserID] = value
        end

        def xmlattr_statusCode
          __xmlattr[AttrStatusCode]
        end

        def xmlattr_statusCode=(value)
          __xmlattr[AttrStatusCode] = value
        end

        def initialize(userDefinedA = nil, userDefinedB = nil, authDropBelowFC = nil, cPTEmployment = nil, dependent = nil, disciplinaryAction = nil, educationLevel = nil, financialInfo = nil, offCampusEmployment = nil, oPTEmployment = nil, oPTEmployer = nil, personalInfo = nil, program = nil, registration = nil, reprint = nil, request = nil, status = nil)
          @userDefinedA = userDefinedA
          @userDefinedB = userDefinedB
          @authDropBelowFC = authDropBelowFC
          @cPTEmployment = cPTEmployment
          @dependent = dependent
          @disciplinaryAction = disciplinaryAction
          @educationLevel = educationLevel
          @financialInfo = financialInfo
          @offCampusEmployment = offCampusEmployment
          @oPTEmployment = oPTEmployment
          @oPTEmployer = oPTEmployer
          @personalInfo = personalInfo
          @program = program
          @registration = registration
          @reprint = reprint
          @request = request
          @status = status
          @__xmlattr = {}
        end
      end
    end

    attr_accessor :batchHeader
    attr_accessor :createStudent
    attr_accessor :updateStudent

    def initialize(batchHeader = nil, createStudent = nil, updateStudent = nil)
      @batchHeader = batchHeader
      @createStudent = createStudent
      @updateStudent = updateStudent
    end
  end

# {}StudentPersonType
#   userDefinedA - (any)
#   userDefinedB - (any)
#   personalInfo - Sevis::StudentPersonType::PersonalInfo
#   issueReason - Sevis::StudentCreationReason
#   uSAddress - Sevis::USAddrDoctorType
#   mailingAddress - Sevis::USAddrDoctorType
#   foreignAddress - Sevis::ForeignAddrType
#   educationalInfo - Sevis::EducationalInfoType
#   financialInfo - Sevis::FinancialType
#   createDependent - Sevis::StudentPersonType::CreateDependent
#   remarks - (any)
  class StudentPersonType

    # inner class for member: PersonalInfo
    # {}PersonalInfo
    #   fullName - Sevis::NameType
    #   birthDate - (any)
    #   gender - Sevis::GenderCodeType
    #   birthCountryCode - Sevis::BirthCntryCodeType
    #   citizenshipStatus - Sevis::CitizenshipStatusType
    #   citizenshipCountryCode - Sevis::CntryCodeWithoutType
    #   email - (any)
    #   commuter - (any)
    #   visaType - Sevis::StudentVisaCodeType
    #   telephone - Sevis::StudentPersonType::PersonalInfo::Telephone
    class PersonalInfo < NonImgBioTypeRequired

      # inner class for member: Telephone
      # {}Telephone
      #   telephoneExemptInd - Sevis::IndicatorTypeYN
      #   phone - Sevis::TelephoneType
      class Telephone
        attr_accessor :telephoneExemptInd
        attr_accessor :phone

        def initialize(telephoneExemptInd = nil, phone = nil)
          @telephoneExemptInd = telephoneExemptInd
          @phone = phone
        end
      end

      attr_accessor :fullName
      attr_accessor :birth_date
      attr_accessor :gender
      attr_accessor :birth_country_code
      attr_accessor :citizenship_status
      attr_accessor :citizenship_country_code
      attr_accessor :email
      attr_accessor :commuter
      attr_accessor :visa_type
      attr_accessor :telephone
      attr_accessor :telephone_ext

      def initialize(fullName = nil, birth_date = nil, gender = nil, birth_country_ode = nil, citizenship_status = nil, citizenship_country_code = nil, email = nil, commuter = nil, visa_type = nil, telephone = nil.telephone_ext = nil)
        @fullName = fullName
        @birth_date = birth_date
        @gender = gender
        @birth_country_code = birth_country_code
        @citizenship_status = citizenship_status
        @citizenship_country_code = citizenship_country_code
        @email = email
        @commuter = commuter
        @visaType = visa_type
        @telephone = telephone
        @telephone_ext = telephone_ext
      end
    end

    # inner class for member: CreateDependent
    # {}CreateDependent
    class CreateDependent < ::Array

      # {}Dependent
      #   fullName - Sevis::NameType
      #   birthDate - (any)
      #   gender - Sevis::GenderCodeType
      #   birthCountryCode - Sevis::BirthCntryCodeType
      #   citizenshipStatus - Sevis::CitizenshipStatusType
      #   citizenshipCountryCode - Sevis::CntryCodeWithoutType
      #   email - (any)
      #   visaType - Sevis::DependentFMVisaType
      #   relationship - Sevis::DependentCodeType
      #   remarks - (any)
      #   userDefinedA - (any)
      #   userDefinedB - (any)
      class Dependent < NonImgBioType
        attr_accessor :fullName
        attr_accessor :birthDate
        attr_accessor :gender
        attr_accessor :birthCountryCode
        attr_accessor :citizenshipStatus
        attr_accessor :citizenshipCountryCode
        attr_accessor :email
        attr_accessor :visaType
        attr_accessor :relationship
        attr_accessor :remarks
        attr_accessor :userDefinedA
        attr_accessor :userDefinedB

        def initialize(fullName = nil, birthDate = nil, gender = nil, birthCountryCode = nil, citizenshipStatus = nil, citizenshipCountryCode = nil, email = nil, visaType = nil, relationship = nil, remarks = nil, userDefinedA = nil, userDefinedB = nil)
          @fullName = fullName
          @birthDate = birthDate
          @gender = gender
          @birthCountryCode = birthCountryCode
          @citizenshipStatus = citizenshipStatus
          @citizenshipCountryCode = citizenshipCountryCode
          @email = email
          @visaType = visaType
          @relationship = relationship
          @remarks = remarks
          @userDefinedA = userDefinedA
          @userDefinedB = userDefinedB
        end
      end
    end

    attr_accessor :userDefinedA
    attr_accessor :userDefinedB
    attr_accessor :personalInfo
    attr_accessor :issueReason
    attr_accessor :uSAddress
    attr_accessor :mailingAddress
    attr_accessor :foreignAddress
    attr_accessor :educationalInfo
    attr_accessor :financialInfo
    attr_accessor :createDependent
    attr_accessor :remarks

    def initialize(userDefinedA = nil, userDefinedB = nil, personalInfo = nil, issueReason = nil, uSAddress = nil, mailingAddress = nil, foreignAddress = nil, educationalInfo = nil, financialInfo = nil, createDependent = nil, remarks = nil)
      @userDefinedA = userDefinedA
      @userDefinedB = userDefinedB
      @personalInfo = personalInfo
      @issueReason = issueReason
      @uSAddress = uSAddress
      @mailingAddress = mailingAddress
      @foreignAddress = foreignAddress
      @educationalInfo = educationalInfo
      @financialInfo = financialInfo
      @createDependent = createDependent
      @remarks = remarks
    end
  end

# {}TelephoneType
#   uSNumber - (any)
#   foreign - Sevis::TelephoneType::Foreign
  class TelephoneType

    # inner class for member: Foreign
    # {}Foreign
    #   countryNumber - SOAP::SOAPString
    #   phoneNumber - SOAP::SOAPString
    class Foreign
      attr_accessor :countryNumber
      attr_accessor :phoneNumber

      def initialize(countryNumber = nil, phoneNumber = nil)
        @countryNumber = countryNumber
        @phoneNumber = phoneNumber
      end
    end

    attr_accessor :uSNumber
    attr_accessor :foreign

    def initialize(uSNumber = nil, foreign = nil)
      @uSNumber = uSNumber
      @foreign = foreign
    end
  end

# {}USTelephoneType
#   uSNumber - (any)
  class USTelephoneType
    attr_accessor :uSNumber

    def initialize(uSNumber = nil)
      @uSNumber = uSNumber
    end
  end

# {}UpdateEmployerType
#   employerName - SOAP::SOAPString
#   employerAddress - Sevis::USAddrDoctorType
#   employerEIN - (any)
#   selfEmployed - (any)
#   courseRelevance - (any)
#   fullPartTimeIndicator - Sevis::EmploymentTimeType
#   startDate - (any)
#   endDate - (any)
#   supervisorFirstName - SOAP::SOAPString
#   supervisorLastName - SOAP::SOAPString
#   supervisorPhone - (any)
#   supervisorPhoneExt - (any)
#   supervisorEmail - (any)
#   studentsJobTitle - SOAP::SOAPString
  class UpdateEmployerType
    attr_accessor :employerName
    attr_accessor :employerAddress
    attr_accessor :employerEIN
    attr_accessor :selfEmployed
    attr_accessor :courseRelevance
    attr_accessor :fullPartTimeIndicator
    attr_accessor :startDate
    attr_accessor :endDate
    attr_accessor :supervisorFirstName
    attr_accessor :supervisorLastName
    attr_accessor :supervisorPhone
    attr_accessor :supervisorPhoneExt
    attr_accessor :supervisorEmail
    attr_accessor :studentsJobTitle

    def initialize(employerName = nil, employerAddress = nil, employerEIN = nil, selfEmployed = nil, courseRelevance = nil, fullPartTimeIndicator = nil, startDate = nil, endDate = nil, supervisorFirstName = nil, supervisorLastName = nil, supervisorPhone = nil, supervisorPhoneExt = nil, supervisorEmail = nil, studentsJobTitle = nil)
      @employerName = employerName
      @employerAddress = employerAddress
      @employerEIN = employerEIN
      @selfEmployed = selfEmployed
      @courseRelevance = courseRelevance
      @fullPartTimeIndicator = fullPartTimeIndicator
      @startDate = startDate
      @endDate = endDate
      @supervisorFirstName = supervisorFirstName
      @supervisorLastName = supervisorLastName
      @supervisorPhone = supervisorPhone
      @supervisorPhoneExt = supervisorPhoneExt
      @supervisorEmail = supervisorEmail
      @studentsJobTitle = studentsJobTitle
    end
  end

# {http://www.ice.gov/xmlschema/sevisbatch/Common}BatchHeaderType
#   batchID - (any)
#   orgID - (any)
  class BatchHeaderType
    attr_accessor :batchID
    attr_accessor :orgID

    def initialize(batchID = nil, orgID = nil)
      @batchID = batchID
      @orgID = orgID
    end
  end

# {http://www.ice.gov/xmlschema/sevisbatch/Common}DriverLicenseNullableType
#   number - SOAP::SOAPString
#   state - (any)
  class DriverLicenseNullableType
    attr_accessor :number
    attr_accessor :state

    def initialize(number = nil, state = nil)
      @number = number
      @state = state
    end
  end

# {http://www.ice.gov/xmlschema/sevisbatch/Common}DriverLicenseType
#   number - SOAP::SOAPString
#   state - Sevis::StateCodeType
  class DriverLicenseType
    attr_accessor :number
    attr_accessor :state

    def initialize(number = nil, state = nil)
      @number = number
      @state = state
    end
  end

# {http://www.ice.gov/xmlschema/sevisbatch/Common}EmptyType
  class EmptyType
    def initialize
    end
  end

# {http://www.ice.gov/xmlschema/sevisbatch/Common}ForeignAddrNullableType
#   address1 - SOAP::SOAPString
#   address2 - SOAP::SOAPString
#   city - SOAP::SOAPString
#   province - SOAP::SOAPString
#   countryCode - Sevis::CntryCodeWithoutType
#   postalCode - SOAP::SOAPString
  class ForeignAddrNullableType
    attr_accessor :address1
    attr_accessor :address2
    attr_accessor :city
    attr_accessor :province
    attr_accessor :countryCode
    attr_accessor :postalCode

    def initialize(address1 = nil, address2 = nil, city = nil, province = nil, countryCode = nil, postalCode = nil)
      @address1 = address1
      @address2 = address2
      @city = city
      @province = province
      @countryCode = countryCode
      @postalCode = postalCode
    end
  end

# {http://www.ice.gov/xmlschema/sevisbatch/Common}ForeignAddrType
#   address1 - SOAP::SOAPString
#   address2 - SOAP::SOAPString
#   city - SOAP::SOAPString
#   province - SOAP::SOAPString
#   countryCode - Sevis::CntryCodeWithoutType
#   postalCode - SOAP::SOAPString
  class ForeignAddrType
    attr_accessor :address1
    attr_accessor :address2
    attr_accessor :city
    attr_accessor :province
    attr_accessor :countryCode
    attr_accessor :postalCode

    def initialize(address1 = nil, address2 = nil, city = nil, province = nil, countryCode = nil, postalCode = nil)
      @address1 = address1
      @address2 = address2
      @city = city
      @province = province
      @countryCode = countryCode
      @postalCode = postalCode
    end
  end

# {http://www.ice.gov/xmlschema/sevisbatch/Common}NameNullableType
#   lastName - SOAP::SOAPString
#   firstName - SOAP::SOAPString
#   passportName - SOAP::SOAPString
#   preferredName - SOAP::SOAPString
#   suffix - (any)
  class NameNullableType
    attr_accessor :lastName
    attr_accessor :firstName
    attr_accessor :passportName
    attr_accessor :preferredName
    attr_accessor :suffix

    def initialize(lastName = nil, firstName = nil, passportName = nil, preferredName = nil, suffix = nil)
      @lastName = lastName
      @firstName = firstName
      @passportName = passportName
      @preferredName = preferredName
      @suffix = suffix
    end
  end

# {http://www.ice.gov/xmlschema/sevisbatch/Common}NameType
#   lastName - SOAP::SOAPString
#   firstName - SOAP::SOAPString
#   passportName - SOAP::SOAPString
#   preferredName - SOAP::SOAPString
#   suffix - Sevis::NameSuffixCodeType
  class NameType
    attr_accessor :lastName
    attr_accessor :firstName
    attr_accessor :passportName
    attr_accessor :preferredName
    attr_accessor :suffix

    def initialize(lastName = nil, firstName = nil, passportName = nil, preferredName = nil, suffix = nil)
      @lastName = lastName
      @firstName = firstName
      @passportName = passportName
      @preferredName = preferredName
      @suffix = suffix
    end
  end

# {http://www.ice.gov/xmlschema/sevisbatch/Common}TravelNullableType
#   passportNumber - SOAP::SOAPString
#   passportIssuingCntry - (any)
#   passportExpDate - (any)
#   visaNumber - SOAP::SOAPString
#   visaIssuingCntry - (any)
#   visaIssueDate - (any)
#   visaExpDate - (any)
#   portOfEntry - (any)
#   dateOfEntry - (any)
  class TravelNullableType
    attr_accessor :passportNumber
    attr_accessor :passportIssuingCntry
    attr_accessor :passportExpDate
    attr_accessor :visaNumber
    attr_accessor :visaIssuingCntry
    attr_accessor :visaIssueDate
    attr_accessor :visaExpDate
    attr_accessor :portOfEntry
    attr_accessor :dateOfEntry

    def initialize(passportNumber = nil, passportIssuingCntry = nil, passportExpDate = nil, visaNumber = nil, visaIssuingCntry = nil, visaIssueDate = nil, visaExpDate = nil, portOfEntry = nil, dateOfEntry = nil)
      @passportNumber = passportNumber
      @passportIssuingCntry = passportIssuingCntry
      @passportExpDate = passportExpDate
      @visaNumber = visaNumber
      @visaIssuingCntry = visaIssuingCntry
      @visaIssueDate = visaIssueDate
      @visaExpDate = visaExpDate
      @portOfEntry = portOfEntry
      @dateOfEntry = dateOfEntry
    end
  end

# {http://www.ice.gov/xmlschema/sevisbatch/Common}TravelType
#   passportNumber - SOAP::SOAPString
#   passportIssuingCntry - Sevis::CntryCodeWithCloseDateType
#   passportExpDate - (any)
#   visaNumber - SOAP::SOAPString
#   visaIssuingCntry - Sevis::VisaPostCodeType
#   visaIssueDate - (any)
#   visaExpDate - (any)
#   portOfEntry - Sevis::PoeCodeType
#   dateOfEntry - (any)
  class TravelType
    attr_accessor :passportNumber
    attr_accessor :passportIssuingCntry
    attr_accessor :passportExpDate
    attr_accessor :visaNumber
    attr_accessor :visaIssuingCntry
    attr_accessor :visaIssueDate
    attr_accessor :visaExpDate
    attr_accessor :portOfEntry
    attr_accessor :dateOfEntry

    def initialize(passportNumber = nil, passportIssuingCntry = nil, passportExpDate = nil, visaNumber = nil, visaIssuingCntry = nil, visaIssueDate = nil, visaExpDate = nil, portOfEntry = nil, dateOfEntry = nil)
      @passportNumber = passportNumber
      @passportIssuingCntry = passportIssuingCntry
      @passportExpDate = passportExpDate
      @visaNumber = visaNumber
      @visaIssuingCntry = visaIssuingCntry
      @visaIssueDate = visaIssueDate
      @visaExpDate = visaExpDate
      @portOfEntry = portOfEntry
      @dateOfEntry = dateOfEntry
    end
  end

# {http://www.ice.gov/xmlschema/sevisbatch/Common}SEVISResponse
#   xmlattr_orgID - (any)
#   xmlattr_batchID - SOAP::SOAPString
#   xmlattr_resultCode - SOAP::SOAPString
#   xmlattr_dateTimeStamp - SOAP::SOAPDateTime
  class SEVISResponse
    AttrBatchID = XSD::QName.new(nil, "batchID")
    AttrDateTimeStamp = XSD::QName.new(nil, "dateTimeStamp")
    AttrOrgID = XSD::QName.new(nil, "orgID")
    AttrResultCode = XSD::QName.new(nil, "resultCode")

    def __xmlattr
      @__xmlattr ||= {}
    end

    def xmlattr_orgID
      __xmlattr[AttrOrgID]
    end

    def xmlattr_orgID=(value)
      __xmlattr[AttrOrgID] = value
    end

    def xmlattr_batchID
      __xmlattr[AttrBatchID]
    end

    def xmlattr_batchID=(value)
      __xmlattr[AttrBatchID] = value
    end

    def xmlattr_resultCode
      __xmlattr[AttrResultCode]
    end

    def xmlattr_resultCode=(value)
      __xmlattr[AttrResultCode] = value
    end

    def xmlattr_dateTimeStamp
      __xmlattr[AttrDateTimeStamp]
    end

    def xmlattr_dateTimeStamp=(value)
      __xmlattr[AttrDateTimeStamp] = value
    end

    def initialize
      @__xmlattr = {}
    end
  end

# {http://www.ice.gov/xmlschema/sevisbatch/Common}USAddressNullableType
#   address1 - SOAP::SOAPString
#   address2 - SOAP::SOAPString
#   city - SOAP::SOAPString
#   state - Sevis::StateCodeType
#   postalCode - (any)
#   postalRoutingCode - (any)
  class USAddressNullableType
    attr_accessor :address1
    attr_accessor :address2
    attr_accessor :city
    attr_accessor :state
    attr_accessor :postalCode
    attr_accessor :postalRoutingCode

    def initialize(address1 = nil, address2 = nil, city = nil, state = nil, postalCode = nil, postalRoutingCode = nil)
      @address1 = address1
      @address2 = address2
      @city = city
      @state = state
      @postalCode = postalCode
      @postalRoutingCode = postalRoutingCode
    end
  end

# {http://www.ice.gov/xmlschema/sevisbatch/Common}USAddressCommuterNullableType
#   address1 - SOAP::SOAPString
#   address2 - SOAP::SOAPString
#   city - SOAP::SOAPString
#   state - (any)
#   postalCode - (any)
#   postalRoutingCode - (any)
  class USAddressCommuterNullableType
    attr_accessor :address1
    attr_accessor :address2
    attr_accessor :city
    attr_accessor :state
    attr_accessor :postalCode
    attr_accessor :postalRoutingCode

    def initialize(address1 = nil, address2 = nil, city = nil, state = nil, postalCode = nil, postalRoutingCode = nil)
      @address1 = address1
      @address2 = address2
      @city = city
      @state = state
      @postalCode = postalCode
      @postalRoutingCode = postalRoutingCode
    end
  end

# {http://www.ice.gov/xmlschema/sevisbatch/Common}USAddressOptionalType
#   address1 - SOAP::SOAPString
#   address2 - SOAP::SOAPString
#   city - SOAP::SOAPString
#   state - (any)
#   postalCode - (any)
#   postalRoutingCode - (any)
  class USAddressOptionalType
    attr_accessor :address1
    attr_accessor :address2
    attr_accessor :city
    attr_accessor :state
    attr_accessor :postalCode
    attr_accessor :postalRoutingCode

    def initialize(address1 = nil, address2 = nil, city = nil, state = nil, postalCode = nil, postalRoutingCode = nil)
      @address1 = address1
      @address2 = address2
      @city = city
      @state = state
      @postalCode = postalCode
      @postalRoutingCode = postalRoutingCode
    end
  end

# {http://www.ice.gov/xmlschema/sevisbatch/Common}USAddressType
#   address1 - SOAP::SOAPString
#   address2 - SOAP::SOAPString
#   city - SOAP::SOAPString
#   state - Sevis::StateCodeType
#   postalCode - (any)
#   postalRoutingCode - (any)
  class USAddressType
    attr_accessor :address1
    attr_accessor :address2
    attr_accessor :city
    attr_accessor :state
    attr_accessor :postalCode
    attr_accessor :postalRoutingCode

    def initialize(address1 = nil, address2 = nil, city = nil, state = nil, postalCode = nil, postalRoutingCode = nil)
      @address1 = address1
      @address2 = address2
      @city = city
      @state = state
      @postalCode = postalCode
      @postalRoutingCode = postalRoutingCode
    end
  end

# {http://www.ice.gov/xmlschema/sevisbatch/Common}USAddrDoctorType
#   address1 - SOAP::SOAPString
#   address2 - SOAP::SOAPString
#   city - SOAP::SOAPString
#   state - Sevis::StateCodeType
#   postalCode - (any)
#   explanationCode - SOAP::SOAPString
#   explanation - SOAP::SOAPString
  class USAddrDoctorType
    attr_accessor :address1
    attr_accessor :address2
    attr_accessor :city
    attr_accessor :state
    attr_accessor :postalCode
    attr_accessor :explanationCode
    attr_accessor :explanation

    def initialize(address1 = nil, address2 = nil, city = nil, state = nil, postalCode = nil, explanationCode = nil, explanation = nil)
      @address1 = address1
      @address2 = address2
      @city = city
      @state = state
      @postalCode = postalCode
      @explanationCode = explanationCode
      @explanation = explanation
    end
  end

# {http://www.ice.gov/xmlschema/sevisbatch/Common}USAddrDoctorResponseType
#   address1 - SOAP::SOAPString
#   address2 - SOAP::SOAPString
#   city - SOAP::SOAPString
#   state - Sevis::StateCodeType
#   postalCode - SOAP::SOAPString
  class USAddrDoctorResponseType
    attr_accessor :address1
    attr_accessor :address2
    attr_accessor :city
    attr_accessor :state
    attr_accessor :postalCode

    def initialize(address1 = nil, address2 = nil, city = nil, state = nil, postalCode = nil)
      @address1 = address1
      @address2 = address2
      @city = city
      @state = state
      @postalCode = postalCode
    end
  end

# {http://www.ice.gov/xmlschema/sevisbatch/Table}CapGapExtensionType
  class CapGapExtensionType < ::String
    C = new("C")
    F = new("F")
    T = new("T")
  end

# {http://www.ice.gov/xmlschema/sevisbatch/Table}DateNullableType
#  any of table:emptyStringType table:DateType
  class DateNullableType < ::String
  end

# {http://www.ice.gov/xmlschema/sevisbatch/Table}DateTimeNullableType
#  any of table:emptyStringType table:DateTimeType
  class DateTimeNullableType < ::String
  end

# {http://www.ice.gov/xmlschema/sevisbatch/Table}OPTCompletionType
  class OPTCompletionType < ::String
    C_01 = new("01")
    C_02 = new("02")
  end

# {http://www.ice.gov/xmlschema/sevisbatch/Table}PassFailNullableType
#  any of table:emptyStringType table:PassFailType
  class PassFailNullableType < ::String
  end

# {http://www.ice.gov/xmlschema/sevisbatch/Table}IndicatorYesNoNullableType
#  any of table:emptyStringType table:IndicatorYesNoType
  class IndicatorYesNoNullableType < ::String
  end

# {http://www.ice.gov/xmlschema/sevisbatch/Table}IndicatorTypeYN
  class IndicatorTypeYN < ::String
    N = new("N")
    Y = new("Y")
  end

# {http://www.ice.gov/xmlschema/sevisbatch/Table}IndicatorTypeYNE
  class IndicatorTypeYNE < ::String
    E = new("E")
    N = new("N")
    Y = new("Y")
  end

# {http://www.ice.gov/xmlschema/sevisbatch/Table}IndicatorTypeYNNullableType
#  any of table:emptyStringType table:IndicatorTypeYN
  class IndicatorTypeYNNullableType < ::String
  end

# {http://www.ice.gov/xmlschema/sevisbatch/Table}TrueIndicator
  class TrueIndicator < ::String
    C_1 = new("1")
    True = new("true")
  end

# {http://www.ice.gov/xmlschema/sevisbatch/Table}TrueValue
  class TrueValue < ::String
    True = new("true")
  end

# {http://www.ice.gov/xmlschema/sevisbatch/Table}TrueIndicatorNullableType
#  any of table:emptyStringType table:TrueIndicator
  class TrueIndicatorNullableType < ::String
  end

# {http://www.ice.gov/xmlschema/sevisbatch/Table}USPostalRoutingNullableType
#  any of table:emptyStringType table:USPostalRoutingType
  class USPostalRoutingNullableType < ::String
  end

# {http://www.ice.gov/xmlschema/sevisbatch/Table}USPostalTypeNullableType
#  any of table:emptyStringType table:USPostalType
  class USPostalTypeNullableType < ::String
  end

# {http://www.ice.gov/xmlschema/sevisbatch/Table}MonetaryNullableType
#  any of table:emptyStringType table:MonetaryType
  class MonetaryNullableType < ::String
  end

# {http://www.ice.gov/xmlschema/sevisbatch/Table}SSNNullableType
#  any of table:emptyStringType table:SSNType
  class SSNNullableType < ::String
  end

# {http://www.ice.gov/xmlschema/sevisbatch/Table}TaxIDNullableType
#  any of table:emptyStringType table:TaxIDType
  class TaxIDNullableType < ::String
  end

# {http://www.ice.gov/xmlschema/sevisbatch/Table}emptyEnumerationType
  class EmptyEnumerationType < ::String
    C_ = new("")
  end

# {http://www.ice.gov/xmlschema/sevisbatch/Table}GovAgencyCodeNullableType
#  any of table:emptyEnumerationType table:GovAgencyCodeType
  class GovAgencyCodeNullableType < ::String
  end

# {http://www.ice.gov/xmlschema/sevisbatch/Table}GovAgencyCodeType
  class GovAgencyCodeType < ::String
    ACT = new("ACT")
    AID = new("AID")
    BBG = new("BBG")
    DOC = new("DOC")
    DOD = new("DOD")
    DOE = new("DOE")
    DOED = new("DOED")
    DOI = new("DOI")
    DOJ = new("DOJ")
    DOL = new("DOL")
    DOS = new("DOS")
    DOT = new("DOT")
    EPA = new("EPA")
    EXIM = new("EXIM")
    GAO = new("GAO")
    HHS = new("HHS")
    HMC = new("HMC")
    HUD = new("HUD")
    LOC = new("LOC")
    NASA = new("NASA")
    NDH = new("NDH")
    NEA = new("NEA")
    NSF = new("NSF")
    OTHER = new("OTHER")
    SI = new("SI")
    TREAS = new("TREAS")
    USDA = new("USDA")
    USIP = new("USIP")
    VA = new("VA")
  end

# {http://www.ice.gov/xmlschema/sevisbatch/Table}PoeCodeNullableType
#  any of table:emptyStringType table:PoeCodeType
  class PoeCodeNullableType < ::String
  end

# {http://www.ice.gov/xmlschema/sevisbatch/Table}PoeCodeType
  class PoeCodeType < ::String
    ABG = new("ABG")
    ABQ = new("ABQ")
    ABS = new("ABS")
    ADT = new("ADT")
    AGA = new("AGA")
    AGN = new("AGN")
    ALB = new("ALB")
    ALC = new("ALC")
    AMB = new("AMB")
    ANC = new("ANC")
    AND = new("AND")
    ANT = new("ANT")
    ARB = new("ARB")
    AST = new("AST")
    ATL = new("ATL")
    AUS = new("AUS")
    BAL = new("BAL")
    BAU = new("BAU")
    BBM = new("BBM")
    BEB = new("BEB")
    BEE = new("BEE")
    BEL = new("BEL")
    BGM = new("BGM")
    BLA = new("BLA")
    BOA = new("BOA")
    BOS = new("BOS")
    BRG = new("BRG")
    BRO = new("BRO")
    BTN = new("BTN")
    BWA = new("BWA")
    BWM = new("BWM")
    BYO = new("BYO")
    CAL = new("CAL")
    CHA = new("CHA")
    CHF = new("CHF")
    CHI = new("CHI")
    CHL = new("CHL")
    CHM = new("CHM")
    CHR = new("CHR")
    CHT = new("CHT")
    CIN = new("CIN")
    CLE = new("CLE")
    CLG = new("CLG")
    CLM = new("CLM")
    CLS = new("CLS")
    CLT = new("CLT")
    CNA = new("CNA")
    CNJ = new("CNJ")
    COB = new("COB")
    COL = new("COL")
    COO = new("COO")
    COW = new("COW")
    CRP = new("CRP")
    CRU = new("CRU")
    CRY = new("CRY")
    DAC = new("DAC")
    DAL = new("DAL")
    DCB = new("DCB")
    DCT = new("DCT")
    DEN = new("DEN")
    DER = new("DER")
    DET = new("DET")
    DLB = new("DLB")
    DLR = new("DLR")
    DLV = new("DLV")
    DNS = new("DNS")
    DOU = new("DOU")
    DTH = new("DTH")
    DUL = new("DUL")
    DVD = new("DVD")
    DVL = new("DVL")
    EAS = new("EAS")
    EDA = new("EDA")
    EGP = new("EGP")
    EPI = new("EPI")
    EPM = new("EPM")
    ERC = new("ERC")
    EST = new("EST")
    FAB = new("FAB")
    FAL = new("FAL")
    FBA = new("FBA")
    FER = new("FER")
    FMY = new("FMY")
    FOR = new("FOR")
    FRB = new("FRB")
    FRT = new("FRT")
    FTC = new("FTC")
    FTF = new("FTF")
    FTH = new("FTH")
    FTK = new("FTK")
    FWA = new("FWA")
    GAL = new("GAL")
    GPM = new("GPM")
    GRR = new("GRR")
    GUL = new("GUL")
    HAM = new("HAM")
    HAR = new("HAR")
    HEL = new("HEL")
    HHW = new("HHW")
    HID = new("HID")
    HIG = new("HIG")
    HML = new("HML")
    HNN = new("HNN")
    HNS = new("HNS")
    HOU = new("HOU")
    HTM = new("HTM")
    INP = new("INP")
    INT = new("INT")
    IVP = new("IVP")
    JAC = new("JAC")
    JKM = new("JKM")
    KAN = new("KAN")
    KET = new("KET")
    KEY = new("KEY")
    KOA = new("KOA")
    LAN = new("LAN")
    LAR = new("LAR")
    LAU = new("LAU")
    LCB = new("LCB")
    LIM = new("LIM")
    LKC = new("LKC")
    LLB = new("LLB")
    LOI = new("LOI")
    LON = new("LON")
    LOS = new("LOS")
    LOU = new("LOU")
    LSE = new("LSE")
    LUB = new("LUB")
    LUK = new("LUK")
    LVG = new("LVG")
    LYN = new("LYN")
    MAD = new("MAD")
    MAG = new("MAG")
    MAI = new("MAI")
    MAP = new("MAP")
    MAS = new("MAS")
    MAY = new("MAY")
    MEM = new("MEM")
    MET = new("MET")
    MGM = new("MGM")
    MIA = new("MIA")
    MIL = new("MIL")
    MND = new("MND")
    MOB = new("MOB")
    MON = new("MON")
    MOO = new("MOO")
    MOR = new("MOR")
    MRC = new("MRC")
    MSP = new("MSP")
    MTC = new("MTC")
    NAC = new("NAC")
    NAS = new("NAS")
    NEC = new("NEC")
    NEW = new("NEW")
    NIA = new("NIA")
    NIG = new("NIG")
    NOG = new("NOG")
    NOL = new("NOL")
    NOM = new("NOM")
    NOO = new("NOO")
    NOR = new("NOR")
    NOY = new("NOY")
    NPT = new("NPT")
    NRG = new("NRG")
    NRN = new("NRN")
    NRT = new("NRT")
    NSV = new("NSV")
    NYC = new("NYC")
    OGD = new("OGD")
    OKC = new("OKC")
    OMA = new("OMA")
    OPH = new("OPH")
    ORI = new("ORI")
    ORL = new("ORL")
    ORO = new("ORO")
    OTM = new("OTM")
    OTT = new("OTT")
    PAN = new("PAN")
    PAR = new("PAR")
    PBB = new("PBB")
    PCF = new("PCF")
    PDN = new("PDN")
    PEM = new("PEM")
    PEV = new("PEV")
    PGR = new("PGR")
    PHI = new("PHI")
    PHO = new("PHO")
    PHR = new("PHR")
    PHU = new("PHU")
    PHY = new("PHY")
    PIB = new("PIB")
    PIE = new("PIE")
    PIN = new("PIN")
    PIT = new("PIT")
    PIV = new("PIV")
    PKC = new("PKC")
    PNG = new("PNG")
    PNH = new("PNH")
    POM = new("POM")
    PON = new("PON")
    POO = new("POO")
    POR = new("POR")
    PRE = new("PRE")
    PRO = new("PRO")
    PTL = new("PTL")
    PTR = new("PTR")
    RAY = new("RAY")
    RDU = new("RDU")
    REN = new("REN")
    RIF = new("RIF")
    RIO = new("RIO")
    ROM = new("ROM")
    ROO = new("ROO")
    ROS = new("ROS")
    ROU = new("ROU")
    SAJ = new("SAJ")
    SAR = new("SAR")
    SAS = new("SAS")
    SAU = new("SAU")
    SAV = new("SAV")
    SCO = new("SCO")
    SDP = new("SDP")
    SDY = new("SDY")
    SEA = new("SEA")
    SET = new("SET")
    SFB = new("SFB")
    SFR = new("SFR")
    SHR = new("SHR")
    SJO = new("SJO")
    SKA = new("SKA")
    SLC = new("SLC")
    SLU = new("SLU")
    SNA = new("SNA")
    SND = new("SND")
    SNJ = new("SNJ")
    SNN = new("SNN")
    SPA = new("SPA")
    SPE = new("SPE")
    SPM = new("SPM")
    SPO = new("SPO")
    SRL = new("SRL")
    SSB = new("SSB")
    SSM = new("SSM")
    STL = new("STL")
    STR = new("STR")
    STT = new("STT")
    SUM = new("SUM")
    SWE = new("SWE")
    SYS = new("SYS")
    TAC = new("TAC")
    TAM = new("TAM")
    TEC = new("TEC")
    THO = new("THO")
    TOL = new("TOL")
    TOR = new("TOR")
    TRO = new("TRO")
    TUC = new("TUC")
    TUR = new("TUR")
    VCB = new("VCB")
    VCV = new("VCV")
    VIC = new("VIC")
    VNB = new("VNB")
    WAL = new("WAL")
    WAR = new("WAR")
    WAS = new("WAS")
    WBE = new("WBE")
    WCM = new("WCM")
    WHI = new("WHI")
    WHM = new("WHM")
    WHO = new("WHO")
    WIL = new("WIL")
    WIN = new("WIN")
    WND = new("WND")
    WPB = new("WPB")
    YSL = new("YSL")
    YUI = new("YUI")
  end

# {http://www.ice.gov/xmlschema/sevisbatch/Table}ProgSubjectCodeBlankType
  class ProgSubjectCodeBlankType < ::String
    C_000000 = new("00.0000")
  end

# {http://www.ice.gov/xmlschema/sevisbatch/Table}ProgSubjectCodeNullableType
#  any of table:emptyEnumerationType table:ProgSubjectCodeType
  class ProgSubjectCodeNullableType < ::String
  end

# {http://www.ice.gov/xmlschema/sevisbatch/Table}ProgSubjectCodeStudentType
#  any of table:ProgSubjectCodeBlankType table:ProgSubjectCodeType
  class ProgSubjectCodeStudentType < ::String
  end

# {http://www.ice.gov/xmlschema/sevisbatch/Table}ProgSubjectCodeType
  class ProgSubjectCodeType < ::String
    C_010000 = new("01.0000")
    C_010101 = new("01.0101")
    C_010102 = new("01.0102")
    C_010103 = new("01.0103")
    C_010104 = new("01.0104")
    C_010105 = new("01.0105")
    C_010106 = new("01.0106")
    C_010199 = new("01.0199")
    C_010201 = new("01.0201")
    C_010204 = new("01.0204")
    C_010205 = new("01.0205")
    C_010299 = new("01.0299")
    C_010301 = new("01.0301")
    C_010302 = new("01.0302")
    C_010303 = new("01.0303")
    C_010304 = new("01.0304")
    C_010306 = new("01.0306")
    C_010307 = new("01.0307")
    C_010308 = new("01.0308")
    C_010309 = new("01.0309")
    C_010399 = new("01.0399")
    C_010401 = new("01.0401")
    C_010504 = new("01.0504")
    C_010505 = new("01.0505")
    C_010507 = new("01.0507")
    C_010508 = new("01.0508")
    C_010599 = new("01.0599")
    C_010601 = new("01.0601")
    C_010603 = new("01.0603")
    C_010604 = new("01.0604")
    C_010605 = new("01.0605")
    C_010606 = new("01.0606")
    C_010607 = new("01.0607")
    C_010608 = new("01.0608")
    C_010699 = new("01.0699")
    C_010701 = new("01.0701")
    C_010801 = new("01.0801")
    C_010802 = new("01.0802")
    C_010899 = new("01.0899")
    C_010901 = new("01.0901")
    C_010902 = new("01.0902")
    C_010903 = new("01.0903")
    C_010904 = new("01.0904")
    C_010905 = new("01.0905")
    C_010906 = new("01.0906")
    C_010907 = new("01.0907")
    C_010999 = new("01.0999")
    C_011001 = new("01.1001")
    C_011002 = new("01.1002")
    C_011099 = new("01.1099")
    C_011101 = new("01.1101")
    C_011102 = new("01.1102")
    C_011103 = new("01.1103")
    C_011104 = new("01.1104")
    C_011105 = new("01.1105")
    C_011106 = new("01.1106")
    C_011199 = new("01.1199")
    C_011201 = new("01.1201")
    C_011202 = new("01.1202")
    C_011203 = new("01.1203")
    C_011299 = new("01.1299")
    C_019999 = new("01.9999")
    C_030101 = new("03.0101")
    C_030103 = new("03.0103")
    C_030104 = new("03.0104")
    C_030199 = new("03.0199")
    C_030201 = new("03.0201")
    C_030204 = new("03.0204")
    C_030205 = new("03.0205")
    C_030206 = new("03.0206")
    C_030207 = new("03.0207")
    C_030208 = new("03.0208")
    C_030299 = new("03.0299")
    C_030301 = new("03.0301")
    C_030501 = new("03.0501")
    C_030502 = new("03.0502")
    C_030506 = new("03.0506")
    C_030508 = new("03.0508")
    C_030509 = new("03.0509")
    C_030510 = new("03.0510")
    C_030511 = new("03.0511")
    C_030599 = new("03.0599")
    C_030601 = new("03.0601")
    C_039999 = new("03.9999")
    C_040201 = new("04.0201")
    C_040301 = new("04.0301")
    C_040401 = new("04.0401")
    C_040501 = new("04.0501")
    C_040601 = new("04.0601")
    C_040801 = new("04.0801")
    C_040901 = new("04.0901")
    C_040902 = new("04.0902")
    C_040999 = new("04.0999")
    C_041001 = new("04.1001")
    C_049999 = new("04.9999")
    C_050101 = new("05.0101")
    C_050102 = new("05.0102")
    C_050103 = new("05.0103")
    C_050104 = new("05.0104")
    C_050105 = new("05.0105")
    C_050106 = new("05.0106")
    C_050107 = new("05.0107")
    C_050108 = new("05.0108")
    C_050109 = new("05.0109")
    C_050110 = new("05.0110")
    C_050111 = new("05.0111")
    C_050112 = new("05.0112")
    C_050113 = new("05.0113")
    C_050114 = new("05.0114")
    C_050115 = new("05.0115")
    C_050116 = new("05.0116")
    C_050117 = new("05.0117")
    C_050118 = new("05.0118")
    C_050119 = new("05.0119")
    C_050120 = new("05.0120")
    C_050121 = new("05.0121")
    C_050122 = new("05.0122")
    C_050123 = new("05.0123")
    C_050124 = new("05.0124")
    C_050125 = new("05.0125")
    C_050126 = new("05.0126")
    C_050127 = new("05.0127")
    C_050128 = new("05.0128")
    C_050129 = new("05.0129")
    C_050130 = new("05.0130")
    C_050131 = new("05.0131")
    C_050132 = new("05.0132")
    C_050133 = new("05.0133")
    C_050134 = new("05.0134")
    C_050199 = new("05.0199")
    C_050200 = new("05.0200")
    C_050201 = new("05.0201")
    C_050202 = new("05.0202")
    C_050203 = new("05.0203")
    C_050206 = new("05.0206")
    C_050207 = new("05.0207")
    C_050208 = new("05.0208")
    C_050209 = new("05.0209")
    C_050210 = new("05.0210")
    C_050211 = new("05.0211")
    C_050299 = new("05.0299")
    C_090100 = new("09.0100")
    C_090101 = new("09.0101")
    C_090102 = new("09.0102")
    C_090199 = new("09.0199")
    C_090401 = new("09.0401")
    C_090402 = new("09.0402")
    C_090404 = new("09.0404")
    C_090499 = new("09.0499")
    C_090701 = new("09.0701")
    C_090702 = new("09.0702")
    C_090799 = new("09.0799")
    C_090900 = new("09.0900")
    C_090901 = new("09.0901")
    C_090902 = new("09.0902")
    C_090903 = new("09.0903")
    C_090904 = new("09.0904")
    C_090905 = new("09.0905")
    C_090906 = new("09.0906")
    C_090907 = new("09.0907")
    C_090908 = new("09.0908")
    C_090999 = new("09.0999")
    C_091001 = new("09.1001")
    C_099999 = new("09.9999")
    C_100105 = new("10.0105")
    C_100201 = new("10.0201")
    C_100202 = new("10.0202")
    C_100203 = new("10.0203")
    C_100299 = new("10.0299")
    C_100301 = new("10.0301")
    C_100302 = new("10.0302")
    C_100303 = new("10.0303")
    C_100304 = new("10.0304")
    C_100305 = new("10.0305")
    C_100306 = new("10.0306")
    C_100307 = new("10.0307")
    C_100308 = new("10.0308")
    C_100399 = new("10.0399")
    C_109999 = new("10.9999")
    C_110101 = new("11.0101")
    C_110102 = new("11.0102")
    C_110103 = new("11.0103")
    C_110104 = new("11.0104")
    C_110199 = new("11.0199")
    C_110201 = new("11.0201")
    C_110202 = new("11.0202")
    C_110203 = new("11.0203")
    C_110299 = new("11.0299")
    C_110301 = new("11.0301")
    C_110401 = new("11.0401")
    C_110501 = new("11.0501")
    C_110601 = new("11.0601")
    C_110602 = new("11.0602")
    C_110699 = new("11.0699")
    C_110701 = new("11.0701")
    C_110801 = new("11.0801")
    C_110802 = new("11.0802")
    C_110803 = new("11.0803")
    C_110804 = new("11.0804")
    C_110899 = new("11.0899")
    C_110901 = new("11.0901")
    C_111001 = new("11.1001")
    C_111002 = new("11.1002")
    C_111003 = new("11.1003")
    C_111004 = new("11.1004")
    C_111005 = new("11.1005")
    C_111006 = new("11.1006")
    C_111099 = new("11.1099")
    C_119999 = new("11.9999")
    C_120301 = new("12.0301")
    C_120302 = new("12.0302")
    C_120303 = new("12.0303")
    C_120399 = new("12.0399")
    C_120401 = new("12.0401")
    C_120402 = new("12.0402")
    C_120404 = new("12.0404")
    C_120406 = new("12.0406")
    C_120407 = new("12.0407")
    C_120408 = new("12.0408")
    C_120409 = new("12.0409")
    C_120410 = new("12.0410")
    C_120411 = new("12.0411")
    C_120412 = new("12.0412")
    C_120413 = new("12.0413")
    C_120414 = new("12.0414")
    C_120499 = new("12.0499")
    C_120500 = new("12.0500")
    C_120501 = new("12.0501")
    C_120502 = new("12.0502")
    C_120503 = new("12.0503")
    C_120504 = new("12.0504")
    C_120505 = new("12.0505")
    C_120506 = new("12.0506")
    C_120507 = new("12.0507")
    C_120508 = new("12.0508")
    C_120509 = new("12.0509")
    C_120510 = new("12.0510")
    C_120599 = new("12.0599")
    C_129999 = new("12.9999")
    C_130101 = new("13.0101")
    C_130201 = new("13.0201")
    C_130202 = new("13.0202")
    C_130203 = new("13.0203")
    C_130299 = new("13.0299")
    C_130301 = new("13.0301")
    C_130401 = new("13.0401")
    C_130402 = new("13.0402")
    C_130403 = new("13.0403")
    C_130404 = new("13.0404")
    C_130406 = new("13.0406")
    C_130407 = new("13.0407")
    C_130408 = new("13.0408")
    C_130409 = new("13.0409")
    C_130410 = new("13.0410")
    C_130411 = new("13.0411")
    C_130499 = new("13.0499")
    C_130501 = new("13.0501")
    C_130601 = new("13.0601")
    C_130603 = new("13.0603")
    C_130604 = new("13.0604")
    C_130607 = new("13.0607")
    C_130699 = new("13.0699")
    C_130701 = new("13.0701")
    C_130901 = new("13.0901")
    C_131001 = new("13.1001")
    C_131003 = new("13.1003")
    C_131004 = new("13.1004")
    C_131005 = new("13.1005")
    C_131006 = new("13.1006")
    C_131007 = new("13.1007")
    C_131008 = new("13.1008")
    C_131009 = new("13.1009")
    C_131011 = new("13.1011")
    C_131012 = new("13.1012")
    C_131013 = new("13.1013")
    C_131014 = new("13.1014")
    C_131015 = new("13.1015")
    C_131016 = new("13.1016")
    C_131017 = new("13.1017")
    C_131018 = new("13.1018")
    C_131019 = new("13.1019")
    C_131099 = new("13.1099")
    C_131101 = new("13.1101")
    C_131102 = new("13.1102")
    C_131199 = new("13.1199")
    C_131201 = new("13.1201")
    C_131202 = new("13.1202")
    C_131203 = new("13.1203")
    C_131205 = new("13.1205")
    C_131206 = new("13.1206")
    C_131207 = new("13.1207")
    C_131208 = new("13.1208")
    C_131209 = new("13.1209")
    C_131210 = new("13.1210")
    C_131299 = new("13.1299")
    C_131301 = new("13.1301")
    C_131302 = new("13.1302")
    C_131303 = new("13.1303")
    C_131304 = new("13.1304")
    C_131305 = new("13.1305")
    C_131306 = new("13.1306")
    C_131307 = new("13.1307")
    C_131308 = new("13.1308")
    C_131309 = new("13.1309")
    C_131310 = new("13.1310")
    C_131311 = new("13.1311")
    C_131312 = new("13.1312")
    C_131314 = new("13.1314")
    C_131315 = new("13.1315")
    C_131316 = new("13.1316")
    C_131317 = new("13.1317")
    C_131318 = new("13.1318")
    C_131319 = new("13.1319")
    C_131320 = new("13.1320")
    C_131321 = new("13.1321")
    C_131322 = new("13.1322")
    C_131323 = new("13.1323")
    C_131324 = new("13.1324")
    C_131325 = new("13.1325")
    C_131326 = new("13.1326")
    C_131327 = new("13.1327")
    C_131328 = new("13.1328")
    C_131329 = new("13.1329")
    C_131330 = new("13.1330")
    C_131331 = new("13.1331")
    C_131332 = new("13.1332")
    C_131333 = new("13.1333")
    C_131334 = new("13.1334")
    C_131335 = new("13.1335")
    C_131337 = new("13.1337")
    C_131338 = new("13.1338")
    C_131399 = new("13.1399")
    C_131401 = new("13.1401")
    C_131402 = new("13.1402")
    C_131499 = new("13.1499")
    C_131501 = new("13.1501")
    C_131502 = new("13.1502")
    C_131599 = new("13.1599")
    C_139999 = new("13.9999")
    C_140101 = new("14.0101")
    C_140102 = new("14.0102")
    C_140201 = new("14.0201")
    C_140301 = new("14.0301")
    C_140401 = new("14.0401")
    C_140501 = new("14.0501")
    C_140601 = new("14.0601")
    C_140701 = new("14.0701")
    C_140702 = new("14.0702")
    C_140799 = new("14.0799")
    C_140801 = new("14.0801")
    C_140802 = new("14.0802")
    C_140803 = new("14.0803")
    C_140804 = new("14.0804")
    C_140805 = new("14.0805")
    C_140899 = new("14.0899")
    C_140901 = new("14.0901")
    C_140902 = new("14.0902")
    C_140903 = new("14.0903")
    C_140999 = new("14.0999")
    C_141001 = new("14.1001")
    C_141003 = new("14.1003")
    C_141004 = new("14.1004")
    C_141099 = new("14.1099")
    C_141101 = new("14.1101")
    C_141201 = new("14.1201")
    C_141301 = new("14.1301")
    C_141401 = new("14.1401")
    C_141801 = new("14.1801")
    C_141901 = new("14.1901")
    C_142001 = new("14.2001")
    C_142101 = new("14.2101")
    C_142201 = new("14.2201")
    C_142301 = new("14.2301")
    C_142401 = new("14.2401")
    C_142501 = new("14.2501")
    C_142701 = new("14.2701")
    C_142801 = new("14.2801")
    C_143201 = new("14.3201")
    C_143301 = new("14.3301")
    C_143401 = new("14.3401")
    C_143501 = new("14.3501")
    C_143601 = new("14.3601")
    C_143701 = new("14.3701")
    C_143801 = new("14.3801")
    C_143901 = new("14.3901")
    C_144001 = new("14.4001")
    C_144101 = new("14.4101")
    C_144201 = new("14.4201")
    C_144301 = new("14.4301")
    C_144401 = new("14.4401")
    C_144501 = new("14.4501")
    C_149999 = new("14.9999")
    C_150000 = new("15.0000")
    C_150101 = new("15.0101")
    C_150201 = new("15.0201")
    C_150303 = new("15.0303")
    C_150304 = new("15.0304")
    C_150305 = new("15.0305")
    C_150306 = new("15.0306")
    C_150399 = new("15.0399")
    C_150401 = new("15.0401")
    C_150403 = new("15.0403")
    C_150404 = new("15.0404")
    C_150405 = new("15.0405")
    C_150406 = new("15.0406")
    C_150499 = new("15.0499")
    C_150501 = new("15.0501")
    C_150503 = new("15.0503")
    C_150505 = new("15.0505")
    C_150506 = new("15.0506")
    C_150507 = new("15.0507")
    C_150508 = new("15.0508")
    C_150599 = new("15.0599")
    C_150607 = new("15.0607")
    C_150611 = new("15.0611")
    C_150612 = new("15.0612")
    C_150613 = new("15.0613")
    C_150614 = new("15.0614")
    C_150615 = new("15.0615")
    C_150616 = new("15.0616")
    C_150699 = new("15.0699")
    C_150701 = new("15.0701")
    C_150702 = new("15.0702")
    C_150703 = new("15.0703")
    C_150704 = new("15.0704")
    C_150799 = new("15.0799")
    C_150801 = new("15.0801")
    C_150803 = new("15.0803")
    C_150805 = new("15.0805")
    C_150899 = new("15.0899")
    C_150901 = new("15.0901")
    C_150903 = new("15.0903")
    C_150999 = new("15.0999")
    C_151001 = new("15.1001")
    C_151102 = new("15.1102")
    C_151103 = new("15.1103")
    C_151199 = new("15.1199")
    C_151201 = new("15.1201")
    C_151202 = new("15.1202")
    C_151203 = new("15.1203")
    C_151204 = new("15.1204")
    C_151299 = new("15.1299")
    C_151301 = new("15.1301")
    C_151302 = new("15.1302")
    C_151303 = new("15.1303")
    C_151304 = new("15.1304")
    C_151305 = new("15.1305")
    C_151306 = new("15.1306")
    C_151399 = new("15.1399")
    C_151401 = new("15.1401")
    C_151501 = new("15.1501")
    C_151502 = new("15.1502")
    C_151503 = new("15.1503")
    C_151599 = new("15.1599")
    C_151601 = new("15.1601")
    C_159999 = new("15.9999")
    C_160101 = new("16.0101")
    C_160102 = new("16.0102")
    C_160103 = new("16.0103")
    C_160104 = new("16.0104")
    C_160105 = new("16.0105")
    C_160199 = new("16.0199")
    C_160201 = new("16.0201")
    C_160300 = new("16.0300")
    C_160301 = new("16.0301")
    C_160302 = new("16.0302")
    C_160303 = new("16.0303")
    C_160304 = new("16.0304")
    C_160399 = new("16.0399")
    C_160400 = new("16.0400")
    C_160401 = new("16.0401")
    C_160402 = new("16.0402")
    C_160404 = new("16.0404")
    C_160405 = new("16.0405")
    C_160406 = new("16.0406")
    C_160407 = new("16.0407")
    C_160408 = new("16.0408")
    C_160409 = new("16.0409")
    C_160410 = new("16.0410")
    C_160499 = new("16.0499")
    C_160500 = new("16.0500")
    C_160501 = new("16.0501")
    C_160502 = new("16.0502")
    C_160503 = new("16.0503")
    C_160504 = new("16.0504")
    C_160505 = new("16.0505")
    C_160506 = new("16.0506")
    C_160599 = new("16.0599")
    C_160601 = new("16.0601")
    C_160700 = new("16.0700")
    C_160701 = new("16.0701")
    C_160702 = new("16.0702")
    C_160704 = new("16.0704")
    C_160705 = new("16.0705")
    C_160706 = new("16.0706")
    C_160707 = new("16.0707")
    C_160799 = new("16.0799")
    C_160801 = new("16.0801")
    C_160900 = new("16.0900")
    C_160901 = new("16.0901")
    C_160902 = new("16.0902")
    C_160904 = new("16.0904")
    C_160905 = new("16.0905")
    C_160906 = new("16.0906")
    C_160907 = new("16.0907")
    C_160908 = new("16.0908")
    C_160999 = new("16.0999")
    C_161001 = new("16.1001")
    C_161100 = new("16.1100")
    C_161101 = new("16.1101")
    C_161102 = new("16.1102")
    C_161103 = new("16.1103")
    C_161199 = new("16.1199")
    C_161200 = new("16.1200")
    C_161202 = new("16.1202")
    C_161203 = new("16.1203")
    C_161299 = new("16.1299")
    C_161301 = new("16.1301")
    C_161400 = new("16.1400")
    C_161401 = new("16.1401")
    C_161402 = new("16.1402")
    C_161403 = new("16.1403")
    C_161404 = new("16.1404")
    C_161405 = new("16.1405")
    C_161406 = new("16.1406")
    C_161407 = new("16.1407")
    C_161408 = new("16.1408")
    C_161499 = new("16.1499")
    C_161501 = new("16.1501")
    C_161502 = new("16.1502")
    C_161503 = new("16.1503")
    C_161504 = new("16.1504")
    C_161599 = new("16.1599")
    C_161601 = new("16.1601")
    C_161602 = new("16.1602")
    C_161603 = new("16.1603")
    C_161699 = new("16.1699")
    C_169999 = new("16.9999")
    C_190000 = new("19.0000")
    C_190101 = new("19.0101")
    C_190201 = new("19.0201")
    C_190202 = new("19.0202")
    C_190203 = new("19.0203")
    C_190299 = new("19.0299")
    C_190401 = new("19.0401")
    C_190402 = new("19.0402")
    C_190403 = new("19.0403")
    C_190499 = new("19.0499")
    C_190501 = new("19.0501")
    C_190504 = new("19.0504")
    C_190505 = new("19.0505")
    C_190599 = new("19.0599")
    C_190601 = new("19.0601")
    C_190604 = new("19.0604")
    C_190605 = new("19.0605")
    C_190699 = new("19.0699")
    C_190701 = new("19.0701")
    C_190702 = new("19.0702")
    C_190704 = new("19.0704")
    C_190706 = new("19.0706")
    C_190707 = new("19.0707")
    C_190708 = new("19.0708")
    C_190709 = new("19.0709")
    C_190710 = new("19.0710")
    C_190799 = new("19.0799")
    C_190901 = new("19.0901")
    C_190902 = new("19.0902")
    C_190904 = new("19.0904")
    C_190905 = new("19.0905")
    C_190906 = new("19.0906")
    C_190999 = new("19.0999")
    C_199999 = new("19.9999")
    C_220000 = new("22.0000")
    C_220001 = new("22.0001")
    C_220101 = new("22.0101")
    C_220201 = new("22.0201")
    C_220202 = new("22.0202")
    C_220203 = new("22.0203")
    C_220204 = new("22.0204")
    C_220205 = new("22.0205")
    C_220206 = new("22.0206")
    C_220207 = new("22.0207")
    C_220208 = new("22.0208")
    C_220209 = new("22.0209")
    C_220210 = new("22.0210")
    C_220211 = new("22.0211")
    C_220212 = new("22.0212")
    C_220299 = new("22.0299")
    C_220301 = new("22.0301")
    C_220302 = new("22.0302")
    C_220303 = new("22.0303")
    C_220399 = new("22.0399")
    C_229999 = new("22.9999")
    C_230101 = new("23.0101")
    C_231301 = new("23.1301")
    C_231302 = new("23.1302")
    C_231303 = new("23.1303")
    C_231304 = new("23.1304")
    C_231399 = new("23.1399")
    C_231401 = new("23.1401")
    C_231402 = new("23.1402")
    C_231403 = new("23.1403")
    C_231404 = new("23.1404")
    C_231405 = new("23.1405")
    C_231499 = new("23.1499")
    C_239999 = new("23.9999")
    C_240101 = new("24.0101")
    C_240102 = new("24.0102")
    C_240103 = new("24.0103")
    C_240199 = new("24.0199")
    C_250101 = new("25.0101")
    C_250102 = new("25.0102")
    C_250103 = new("25.0103")
    C_250199 = new("25.0199")
    C_250301 = new("25.0301")
    C_259999 = new("25.9999")
    C_260101 = new("26.0101")
    C_260102 = new("26.0102")
    C_260202 = new("26.0202")
    C_260203 = new("26.0203")
    C_260204 = new("26.0204")
    C_260205 = new("26.0205")
    C_260206 = new("26.0206")
    C_260207 = new("26.0207")
    C_260208 = new("26.0208")
    C_260209 = new("26.0209")
    C_260210 = new("26.0210")
    C_260299 = new("26.0299")
    C_260301 = new("26.0301")
    C_260305 = new("26.0305")
    C_260307 = new("26.0307")
    C_260308 = new("26.0308")
    C_260399 = new("26.0399")
    C_260401 = new("26.0401")
    C_260403 = new("26.0403")
    C_260404 = new("26.0404")
    C_260406 = new("26.0406")
    C_260407 = new("26.0407")
    C_260499 = new("26.0499")
    C_260502 = new("26.0502")
    C_260503 = new("26.0503")
    C_260504 = new("26.0504")
    C_260505 = new("26.0505")
    C_260506 = new("26.0506")
    C_260507 = new("26.0507")
    C_260508 = new("26.0508")
    C_260599 = new("26.0599")
    C_260701 = new("26.0701")
    C_260702 = new("26.0702")
    C_260707 = new("26.0707")
    C_260708 = new("26.0708")
    C_260709 = new("26.0709")
    C_260799 = new("26.0799")
    C_260801 = new("26.0801")
    C_260802 = new("26.0802")
    C_260803 = new("26.0803")
    C_260804 = new("26.0804")
    C_260805 = new("26.0805")
    C_260806 = new("26.0806")
    C_260807 = new("26.0807")
    C_260899 = new("26.0899")
    C_260901 = new("26.0901")
    C_260902 = new("26.0902")
    C_260903 = new("26.0903")
    C_260904 = new("26.0904")
    C_260905 = new("26.0905")
    C_260907 = new("26.0907")
    C_260908 = new("26.0908")
    C_260909 = new("26.0909")
    C_260910 = new("26.0910")
    C_260911 = new("26.0911")
    C_260912 = new("26.0912")
    C_260999 = new("26.0999")
    C_261001 = new("26.1001")
    C_261002 = new("26.1002")
    C_261003 = new("26.1003")
    C_261004 = new("26.1004")
    C_261005 = new("26.1005")
    C_261006 = new("26.1006")
    C_261007 = new("26.1007")
    C_261099 = new("26.1099")
    C_261101 = new("26.1101")
    C_261102 = new("26.1102")
    C_261103 = new("26.1103")
    C_261104 = new("26.1104")
    C_261199 = new("26.1199")
    C_261201 = new("26.1201")
    C_261301 = new("26.1301")
    C_261302 = new("26.1302")
    C_261303 = new("26.1303")
    C_261304 = new("26.1304")
    C_261305 = new("26.1305")
    C_261306 = new("26.1306")
    C_261307 = new("26.1307")
    C_261308 = new("26.1308")
    C_261309 = new("26.1309")
    C_261310 = new("26.1310")
    C_261399 = new("26.1399")
    C_261401 = new("26.1401")
    C_261501 = new("26.1501")
    C_261502 = new("26.1502")
    C_261503 = new("26.1503")
    C_261504 = new("26.1504")
    C_261599 = new("26.1599")
    C_269999 = new("26.9999")
    C_270101 = new("27.0101")
    C_270102 = new("27.0102")
    C_270103 = new("27.0103")
    C_270104 = new("27.0104")
    C_270105 = new("27.0105")
    C_270199 = new("27.0199")
    C_270301 = new("27.0301")
    C_270303 = new("27.0303")
    C_270304 = new("27.0304")
    C_270305 = new("27.0305")
    C_270306 = new("27.0306")
    C_270399 = new("27.0399")
    C_270501 = new("27.0501")
    C_270502 = new("27.0502")
    C_270503 = new("27.0503")
    C_270599 = new("27.0599")
    C_279999 = new("27.9999")
    C_280101 = new("28.0101")
    C_280199 = new("28.0199")
    C_280301 = new("28.0301")
    C_280399 = new("28.0399")
    C_280401 = new("28.0401")
    C_280499 = new("28.0499")
    C_280501 = new("28.0501")
    C_280502 = new("28.0502")
    C_280503 = new("28.0503")
    C_280504 = new("28.0504")
    C_280505 = new("28.0505")
    C_280506 = new("28.0506")
    C_280599 = new("28.0599")
    C_280601 = new("28.0601")
    C_280602 = new("28.0602")
    C_280603 = new("28.0603")
    C_280604 = new("28.0604")
    C_280605 = new("28.0605")
    C_280699 = new("28.0699")
    C_280701 = new("28.0701")
    C_280702 = new("28.0702")
    C_280703 = new("28.0703")
    C_280799 = new("28.0799")
    C_289999 = new("28.9999")
    C_290201 = new("29.0201")
    C_290202 = new("29.0202")
    C_290203 = new("29.0203")
    C_290204 = new("29.0204")
    C_290205 = new("29.0205")
    C_290206 = new("29.0206")
    C_290207 = new("29.0207")
    C_290299 = new("29.0299")
    C_290301 = new("29.0301")
    C_290302 = new("29.0302")
    C_290303 = new("29.0303")
    C_290304 = new("29.0304")
    C_290305 = new("29.0305")
    C_290306 = new("29.0306")
    C_290307 = new("29.0307")
    C_290399 = new("29.0399")
    C_290401 = new("29.0401")
    C_290402 = new("29.0402")
    C_290403 = new("29.0403")
    C_290404 = new("29.0404")
    C_290405 = new("29.0405")
    C_290406 = new("29.0406")
    C_290407 = new("29.0407")
    C_290408 = new("29.0408")
    C_290409 = new("29.0409")
    C_290499 = new("29.0499")
    C_299999 = new("29.9999")
    C_300000 = new("30.0000")
    C_300101 = new("30.0101")
    C_300501 = new("30.0501")
    C_300601 = new("30.0601")
    C_300801 = new("30.0801")
    C_301001 = new("30.1001")
    C_301101 = new("30.1101")
    C_301201 = new("30.1201")
    C_301202 = new("30.1202")
    C_301299 = new("30.1299")
    C_301301 = new("30.1301")
    C_301401 = new("30.1401")
    C_301501 = new("30.1501")
    C_301601 = new("30.1601")
    C_301701 = new("30.1701")
    C_301801 = new("30.1801")
    C_301901 = new("30.1901")
    C_302001 = new("30.2001")
    C_302101 = new("30.2101")
    C_302201 = new("30.2201")
    C_302202 = new("30.2202")
    C_302301 = new("30.2301")
    C_302501 = new("30.2501")
    C_302601 = new("30.2601")
    C_302701 = new("30.2701")
    C_302801 = new("30.2801")
    C_302901 = new("30.2901")
    C_303001 = new("30.3001")
    C_303101 = new("30.3101")
    C_303201 = new("30.3201")
    C_303301 = new("30.3301")
    C_309999 = new("30.9999")
    C_310101 = new("31.0101")
    C_310301 = new("31.0301")
    C_310302 = new("31.0302")
    C_310399 = new("31.0399")
    C_310501 = new("31.0501")
    C_310504 = new("31.0504")
    C_310505 = new("31.0505")
    C_310507 = new("31.0507")
    C_310508 = new("31.0508")
    C_310599 = new("31.0599")
    C_310601 = new("31.0601")
    C_319999 = new("31.9999")
    C_320101 = new("32.0101")
    C_320104 = new("32.0104")
    C_320105 = new("32.0105")
    C_320107 = new("32.0107")
    C_320108 = new("32.0108")
    C_320109 = new("32.0109")
    C_320110 = new("32.0110")
    C_320111 = new("32.0111")
    C_320199 = new("32.0199")
    C_330101 = new("33.0101")
    C_330102 = new("33.0102")
    C_330103 = new("33.0103")
    C_330104 = new("33.0104")
    C_330105 = new("33.0105")
    C_330199 = new("33.0199")
    C_340102 = new("34.0102")
    C_340103 = new("34.0103")
    C_340104 = new("34.0104")
    C_340199 = new("34.0199")
    C_350101 = new("35.0101")
    C_350102 = new("35.0102")
    C_350103 = new("35.0103")
    C_350199 = new("35.0199")
    C_360101 = new("36.0101")
    C_360102 = new("36.0102")
    C_360103 = new("36.0103")
    C_360105 = new("36.0105")
    C_360106 = new("36.0106")
    C_360107 = new("36.0107")
    C_360108 = new("36.0108")
    C_360109 = new("36.0109")
    C_360110 = new("36.0110")
    C_360111 = new("36.0111")
    C_360112 = new("36.0112")
    C_360113 = new("36.0113")
    C_360114 = new("36.0114")
    C_360115 = new("36.0115")
    C_360116 = new("36.0116")
    C_360117 = new("36.0117")
    C_360118 = new("36.0118")
    C_360119 = new("36.0119")
    C_360199 = new("36.0199")
    C_370101 = new("37.0101")
    C_370102 = new("37.0102")
    C_370103 = new("37.0103")
    C_370104 = new("37.0104")
    C_370199 = new("37.0199")
    C_380001 = new("38.0001")
    C_380101 = new("38.0101")
    C_380102 = new("38.0102")
    C_380103 = new("38.0103")
    C_380104 = new("38.0104")
    C_380199 = new("38.0199")
    C_380201 = new("38.0201")
    C_380202 = new("38.0202")
    C_380203 = new("38.0203")
    C_380204 = new("38.0204")
    C_380205 = new("38.0205")
    C_380206 = new("38.0206")
    C_380299 = new("38.0299")
    C_389999 = new("38.9999")
    C_390201 = new("39.0201")
    C_390301 = new("39.0301")
    C_390401 = new("39.0401")
    C_390501 = new("39.0501")
    C_390601 = new("39.0601")
    C_390602 = new("39.0602")
    C_390604 = new("39.0604")
    C_390605 = new("39.0605")
    C_390606 = new("39.0606")
    C_390699 = new("39.0699")
    C_390701 = new("39.0701")
    C_390702 = new("39.0702")
    C_390703 = new("39.0703")
    C_390704 = new("39.0704")
    C_390705 = new("39.0705")
    C_390799 = new("39.0799")
    C_399999 = new("39.9999")
    C_400101 = new("40.0101")
    C_400201 = new("40.0201")
    C_400202 = new("40.0202")
    C_400203 = new("40.0203")
    C_400299 = new("40.0299")
    C_400401 = new("40.0401")
    C_400402 = new("40.0402")
    C_400403 = new("40.0403")
    C_400404 = new("40.0404")
    C_400499 = new("40.0499")
    C_400501 = new("40.0501")
    C_400502 = new("40.0502")
    C_400503 = new("40.0503")
    C_400504 = new("40.0504")
    C_400506 = new("40.0506")
    C_400507 = new("40.0507")
    C_400508 = new("40.0508")
    C_400509 = new("40.0509")
    C_400510 = new("40.0510")
    C_400511 = new("40.0511")
    C_400599 = new("40.0599")
    C_400601 = new("40.0601")
    C_400602 = new("40.0602")
    C_400603 = new("40.0603")
    C_400604 = new("40.0604")
    C_400605 = new("40.0605")
    C_400606 = new("40.0606")
    C_400607 = new("40.0607")
    C_400699 = new("40.0699")
    C_400801 = new("40.0801")
    C_400802 = new("40.0802")
    C_400804 = new("40.0804")
    C_400805 = new("40.0805")
    C_400806 = new("40.0806")
    C_400807 = new("40.0807")
    C_400808 = new("40.0808")
    C_400809 = new("40.0809")
    C_400810 = new("40.0810")
    C_400899 = new("40.0899")
    C_401001 = new("40.1001")
    C_401002 = new("40.1002")
    C_401099 = new("40.1099")
    C_409999 = new("40.9999")
    C_410000 = new("41.0000")
    C_410101 = new("41.0101")
    C_410204 = new("41.0204")
    C_410205 = new("41.0205")
    C_410299 = new("41.0299")
    C_410301 = new("41.0301")
    C_410303 = new("41.0303")
    C_410399 = new("41.0399")
    C_419999 = new("41.9999")
    C_420101 = new("42.0101")
    C_422701 = new("42.2701")
    C_422702 = new("42.2702")
    C_422703 = new("42.2703")
    C_422704 = new("42.2704")
    C_422705 = new("42.2705")
    C_422706 = new("42.2706")
    C_422707 = new("42.2707")
    C_422708 = new("42.2708")
    C_422709 = new("42.2709")
    C_422799 = new("42.2799")
    C_422801 = new("42.2801")
    C_422802 = new("42.2802")
    C_422803 = new("42.2803")
    C_422804 = new("42.2804")
    C_422805 = new("42.2805")
    C_422806 = new("42.2806")
    C_422807 = new("42.2807")
    C_422808 = new("42.2808")
    C_422809 = new("42.2809")
    C_422810 = new("42.2810")
    C_422811 = new("42.2811")
    C_422812 = new("42.2812")
    C_422813 = new("42.2813")
    C_422814 = new("42.2814")
    C_422899 = new("42.2899")
    C_429999 = new("42.9999")
    C_430102 = new("43.0102")
    C_430103 = new("43.0103")
    C_430104 = new("43.0104")
    C_430106 = new("43.0106")
    C_430107 = new("43.0107")
    C_430109 = new("43.0109")
    C_430110 = new("43.0110")
    C_430111 = new("43.0111")
    C_430112 = new("43.0112")
    C_430113 = new("43.0113")
    C_430114 = new("43.0114")
    C_430115 = new("43.0115")
    C_430116 = new("43.0116")
    C_430117 = new("43.0117")
    C_430118 = new("43.0118")
    C_430119 = new("43.0119")
    C_430120 = new("43.0120")
    C_430121 = new("43.0121")
    C_430122 = new("43.0122")
    C_430123 = new("43.0123")
    C_430199 = new("43.0199")
    C_430201 = new("43.0201")
    C_430202 = new("43.0202")
    C_430203 = new("43.0203")
    C_430204 = new("43.0204")
    C_430205 = new("43.0205")
    C_430206 = new("43.0206")
    C_430299 = new("43.0299")
    C_430301 = new("43.0301")
    C_430302 = new("43.0302")
    C_430303 = new("43.0303")
    C_430304 = new("43.0304")
    C_430399 = new("43.0399")
    C_439999 = new("43.9999")
    C_440000 = new("44.0000")
    C_440201 = new("44.0201")
    C_440401 = new("44.0401")
    C_440501 = new("44.0501")
    C_440502 = new("44.0502")
    C_440503 = new("44.0503")
    C_440504 = new("44.0504")
    C_440599 = new("44.0599")
    C_440701 = new("44.0701")
    C_440702 = new("44.0702")
    C_440799 = new("44.0799")
    C_449999 = new("44.9999")
    C_450101 = new("45.0101")
    C_450102 = new("45.0102")
    C_450201 = new("45.0201")
    C_450202 = new("45.0202")
    C_450203 = new("45.0203")
    C_450204 = new("45.0204")
    C_450299 = new("45.0299")
    C_450301 = new("45.0301")
    C_450401 = new("45.0401")
    C_450501 = new("45.0501")
    C_450601 = new("45.0601")
    C_450602 = new("45.0602")
    C_450603 = new("45.0603")
    C_450604 = new("45.0604")
    C_450605 = new("45.0605")
    C_450699 = new("45.0699")
    C_450701 = new("45.0701")
    C_450702 = new("45.0702")
    C_450799 = new("45.0799")
    C_450901 = new("45.0901")
    C_450902 = new("45.0902")
    C_450999 = new("45.0999")
    C_451001 = new("45.1001")
    C_451002 = new("45.1002")
    C_451003 = new("45.1003")
    C_451004 = new("45.1004")
    C_451099 = new("45.1099")
    C_451101 = new("45.1101")
    C_451201 = new("45.1201")
    C_451301 = new("45.1301")
    C_451401 = new("45.1401")
    C_459999 = new("45.9999")
    C_460000 = new("46.0000")
    C_460101 = new("46.0101")
    C_460201 = new("46.0201")
    C_460301 = new("46.0301")
    C_460302 = new("46.0302")
    C_460303 = new("46.0303")
    C_460399 = new("46.0399")
    C_460401 = new("46.0401")
    C_460402 = new("46.0402")
    C_460403 = new("46.0403")
    C_460404 = new("46.0404")
    C_460406 = new("46.0406")
    C_460408 = new("46.0408")
    C_460410 = new("46.0410")
    C_460411 = new("46.0411")
    C_460412 = new("46.0412")
    C_460413 = new("46.0413")
    C_460414 = new("46.0414")
    C_460415 = new("46.0415")
    C_460499 = new("46.0499")
    C_460502 = new("46.0502")
    C_460503 = new("46.0503")
    C_460504 = new("46.0504")
    C_460505 = new("46.0505")
    C_460599 = new("46.0599")
    C_469999 = new("46.9999")
    C_470000 = new("47.0000")
    C_470101 = new("47.0101")
    C_470102 = new("47.0102")
    C_470103 = new("47.0103")
    C_470104 = new("47.0104")
    C_470105 = new("47.0105")
    C_470106 = new("47.0106")
    C_470110 = new("47.0110")
    C_470199 = new("47.0199")
    C_470201 = new("47.0201")
    C_470302 = new("47.0302")
    C_470303 = new("47.0303")
    C_470399 = new("47.0399")
    C_470402 = new("47.0402")
    C_470403 = new("47.0403")
    C_470404 = new("47.0404")
    C_470408 = new("47.0408")
    C_470409 = new("47.0409")
    C_470499 = new("47.0499")
    C_470600 = new("47.0600")
    C_470603 = new("47.0603")
    C_470604 = new("47.0604")
    C_470605 = new("47.0605")
    C_470606 = new("47.0606")
    C_470607 = new("47.0607")
    C_470608 = new("47.0608")
    C_470609 = new("47.0609")
    C_470610 = new("47.0610")
    C_470611 = new("47.0611")
    C_470612 = new("47.0612")
    C_470613 = new("47.0613")
    C_470614 = new("47.0614")
    C_470615 = new("47.0615")
    C_470616 = new("47.0616")
    C_470617 = new("47.0617")
    C_470618 = new("47.0618")
    C_470699 = new("47.0699")
    C_479999 = new("47.9999")
    C_480000 = new("48.0000")
    C_480303 = new("48.0303")
    C_480304 = new("48.0304")
    C_480399 = new("48.0399")
    C_480501 = new("48.0501")
    C_480503 = new("48.0503")
    C_480506 = new("48.0506")
    C_480507 = new("48.0507")
    C_480508 = new("48.0508")
    C_480509 = new("48.0509")
    C_480510 = new("48.0510")
    C_480511 = new("48.0511")
    C_480599 = new("48.0599")
    C_480701 = new("48.0701")
    C_480702 = new("48.0702")
    C_480703 = new("48.0703")
    C_480799 = new("48.0799")
    C_480801 = new("48.0801")
    C_489999 = new("48.9999")
    C_490101 = new("49.0101")
    C_490102 = new("49.0102")
    C_490104 = new("49.0104")
    C_490105 = new("49.0105")
    C_490106 = new("49.0106")
    C_490108 = new("49.0108")
    C_490199 = new("49.0199")
    C_490202 = new("49.0202")
    C_490205 = new("49.0205")
    C_490206 = new("49.0206")
    C_490207 = new("49.0207")
    C_490208 = new("49.0208")
    C_490299 = new("49.0299")
    C_490303 = new("49.0303")
    C_490304 = new("49.0304")
    C_490309 = new("49.0309")
    C_490399 = new("49.0399")
    C_499999 = new("49.9999")
    C_500101 = new("50.0101")
    C_500102 = new("50.0102")
    C_500201 = new("50.0201")
    C_500301 = new("50.0301")
    C_500302 = new("50.0302")
    C_500399 = new("50.0399")
    C_500401 = new("50.0401")
    C_500402 = new("50.0402")
    C_500404 = new("50.0404")
    C_500406 = new("50.0406")
    C_500407 = new("50.0407")
    C_500408 = new("50.0408")
    C_500409 = new("50.0409")
    C_500410 = new("50.0410")
    C_500411 = new("50.0411")
    C_500499 = new("50.0499")
    C_500501 = new("50.0501")
    C_500502 = new("50.0502")
    C_500504 = new("50.0504")
    C_500505 = new("50.0505")
    C_500506 = new("50.0506")
    C_500507 = new("50.0507")
    C_500509 = new("50.0509")
    C_500510 = new("50.0510")
    C_500599 = new("50.0599")
    C_500601 = new("50.0601")
    C_500602 = new("50.0602")
    C_500605 = new("50.0605")
    C_500607 = new("50.0607")
    C_500699 = new("50.0699")
    C_500701 = new("50.0701")
    C_500702 = new("50.0702")
    C_500703 = new("50.0703")
    C_500705 = new("50.0705")
    C_500706 = new("50.0706")
    C_500708 = new("50.0708")
    C_500709 = new("50.0709")
    C_500710 = new("50.0710")
    C_500711 = new("50.0711")
    C_500712 = new("50.0712")
    C_500713 = new("50.0713")
    C_500799 = new("50.0799")
    C_500901 = new("50.0901")
    C_500902 = new("50.0902")
    C_500903 = new("50.0903")
    C_500904 = new("50.0904")
    C_500905 = new("50.0905")
    C_500906 = new("50.0906")
    C_500907 = new("50.0907")
    C_500908 = new("50.0908")
    C_500910 = new("50.0910")
    C_500911 = new("50.0911")
    C_500912 = new("50.0912")
    C_500913 = new("50.0913")
    C_500914 = new("50.0914")
    C_500915 = new("50.0915")
    C_500916 = new("50.0916")
    C_500999 = new("50.0999")
    C_501001 = new("50.1001")
    C_501002 = new("50.1002")
    C_501003 = new("50.1003")
    C_501004 = new("50.1004")
    C_501099 = new("50.1099")
    C_509999 = new("50.9999")
    C_510000 = new("51.0000")
    C_510001 = new("51.0001")
    C_510101 = new("51.0101")
    C_510201 = new("51.0201")
    C_510202 = new("51.0202")
    C_510203 = new("51.0203")
    C_510204 = new("51.0204")
    C_510299 = new("51.0299")
    C_510401 = new("51.0401")
    C_510501 = new("51.0501")
    C_510502 = new("51.0502")
    C_510503 = new("51.0503")
    C_510504 = new("51.0504")
    C_510505 = new("51.0505")
    C_510506 = new("51.0506")
    C_510507 = new("51.0507")
    C_510508 = new("51.0508")
    C_510509 = new("51.0509")
    C_510510 = new("51.0510")
    C_510511 = new("51.0511")
    C_510599 = new("51.0599")
    C_510601 = new("51.0601")
    C_510602 = new("51.0602")
    C_510603 = new("51.0603")
    C_510699 = new("51.0699")
    C_510701 = new("51.0701")
    C_510702 = new("51.0702")
    C_510703 = new("51.0703")
    C_510704 = new("51.0704")
    C_510705 = new("51.0705")
    C_510706 = new("51.0706")
    C_510707 = new("51.0707")
    C_510708 = new("51.0708")
    C_510709 = new("51.0709")
    C_510710 = new("51.0710")
    C_510711 = new("51.0711")
    C_510712 = new("51.0712")
    C_510713 = new("51.0713")
    C_510714 = new("51.0714")
    C_510715 = new("51.0715")
    C_510716 = new("51.0716")
    C_510717 = new("51.0717")
    C_510718 = new("51.0718")
    C_510719 = new("51.0719")
    C_510799 = new("51.0799")
    C_510801 = new("51.0801")
    C_510802 = new("51.0802")
    C_510803 = new("51.0803")
    C_510805 = new("51.0805")
    C_510806 = new("51.0806")
    C_510808 = new("51.0808")
    C_510809 = new("51.0809")
    C_510810 = new("51.0810")
    C_510811 = new("51.0811")
    C_510812 = new("51.0812")
    C_510813 = new("51.0813")
    C_510814 = new("51.0814")
    C_510815 = new("51.0815")
    C_510816 = new("51.0816")
    C_510899 = new("51.0899")
    C_510901 = new("51.0901")
    C_510902 = new("51.0902")
    C_510903 = new("51.0903")
    C_510904 = new("51.0904")
    C_510905 = new("51.0905")
    C_510906 = new("51.0906")
    C_510907 = new("51.0907")
    C_510908 = new("51.0908")
    C_510909 = new("51.0909")
    C_510910 = new("51.0910")
    C_510911 = new("51.0911")
    C_510912 = new("51.0912")
    C_510913 = new("51.0913")
    C_510914 = new("51.0914")
    C_510915 = new("51.0915")
    C_510916 = new("51.0916")
    C_510917 = new("51.0917")
    C_510918 = new("51.0918")
    C_510919 = new("51.0919")
    C_510920 = new("51.0920")
    C_510999 = new("51.0999")
    C_511001 = new("51.1001")
    C_511002 = new("51.1002")
    C_511003 = new("51.1003")
    C_511004 = new("51.1004")
    C_511005 = new("51.1005")
    C_511006 = new("51.1006")
    C_511007 = new("51.1007")
    C_511008 = new("51.1008")
    C_511009 = new("51.1009")
    C_511010 = new("51.1010")
    C_511011 = new("51.1011")
    C_511012 = new("51.1012")
    C_511099 = new("51.1099")
    C_511101 = new("51.1101")
    C_511102 = new("51.1102")
    C_511103 = new("51.1103")
    C_511104 = new("51.1104")
    C_511105 = new("51.1105")
    C_511106 = new("51.1106")
    C_511107 = new("51.1107")
    C_511108 = new("51.1108")
    C_511109 = new("51.1109")
    C_511199 = new("51.1199")
    C_511201 = new("51.1201")
    C_511401 = new("51.1401")
    C_511501 = new("51.1501")
    C_511502 = new("51.1502")
    C_511503 = new("51.1503")
    C_511504 = new("51.1504")
    C_511505 = new("51.1505")
    C_511506 = new("51.1506")
    C_511507 = new("51.1507")
    C_511508 = new("51.1508")
    C_511509 = new("51.1509")
    C_511599 = new("51.1599")
    C_511701 = new("51.1701")
    C_511801 = new("51.1801")
    C_511802 = new("51.1802")
    C_511803 = new("51.1803")
    C_511804 = new("51.1804")
    C_511899 = new("51.1899")
    C_511901 = new("51.1901")
    C_512001 = new("51.2001")
    C_512002 = new("51.2002")
    C_512003 = new("51.2003")
    C_512004 = new("51.2004")
    C_512005 = new("51.2005")
    C_512006 = new("51.2006")
    C_512007 = new("51.2007")
    C_512008 = new("51.2008")
    C_512009 = new("51.2009")
    C_512010 = new("51.2010")
    C_512011 = new("51.2011")
    C_512099 = new("51.2099")
    C_512101 = new("51.2101")
    C_512201 = new("51.2201")
    C_512202 = new("51.2202")
    C_512205 = new("51.2205")
    C_512206 = new("51.2206")
    C_512207 = new("51.2207")
    C_512208 = new("51.2208")
    C_512209 = new("51.2209")
    C_512210 = new("51.2210")
    C_512211 = new("51.2211")
    C_512212 = new("51.2212")
    C_512299 = new("51.2299")
    C_512301 = new("51.2301")
    C_512302 = new("51.2302")
    C_512305 = new("51.2305")
    C_512306 = new("51.2306")
    C_512307 = new("51.2307")
    C_512308 = new("51.2308")
    C_512309 = new("51.2309")
    C_512310 = new("51.2310")
    C_512311 = new("51.2311")
    C_512312 = new("51.2312")
    C_512313 = new("51.2313")
    C_512314 = new("51.2314")
    C_512399 = new("51.2399")
    C_512401 = new("51.2401")
    C_512501 = new("51.2501")
    C_512502 = new("51.2502")
    C_512503 = new("51.2503")
    C_512504 = new("51.2504")
    C_512505 = new("51.2505")
    C_512506 = new("51.2506")
    C_512507 = new("51.2507")
    C_512508 = new("51.2508")
    C_512509 = new("51.2509")
    C_512510 = new("51.2510")
    C_512511 = new("51.2511")
    C_512599 = new("51.2599")
    C_512601 = new("51.2601")
    C_512602 = new("51.2602")
    C_512603 = new("51.2603")
    C_512604 = new("51.2604")
    C_512699 = new("51.2699")
    C_512703 = new("51.2703")
    C_512706 = new("51.2706")
    C_512799 = new("51.2799")
    C_513101 = new("51.3101")
    C_513102 = new("51.3102")
    C_513103 = new("51.3103")
    C_513104 = new("51.3104")
    C_513199 = new("51.3199")
    C_513201 = new("51.3201")
    C_513300 = new("51.3300")
    C_513301 = new("51.3301")
    C_513302 = new("51.3302")
    C_513303 = new("51.3303")
    C_513304 = new("51.3304")
    C_513305 = new("51.3305")
    C_513306 = new("51.3306")
    C_513399 = new("51.3399")
    C_513401 = new("51.3401")
    C_513499 = new("51.3499")
    C_513501 = new("51.3501")
    C_513502 = new("51.3502")
    C_513503 = new("51.3503")
    C_513599 = new("51.3599")
    C_513601 = new("51.3601")
    C_513602 = new("51.3602")
    C_513603 = new("51.3603")
    C_513699 = new("51.3699")
    C_513701 = new("51.3701")
    C_513702 = new("51.3702")
    C_513703 = new("51.3703")
    C_513704 = new("51.3704")
    C_513799 = new("51.3799")
    C_513801 = new("51.3801")
    C_513802 = new("51.3802")
    C_513803 = new("51.3803")
    C_513804 = new("51.3804")
    C_513805 = new("51.3805")
    C_513806 = new("51.3806")
    C_513807 = new("51.3807")
    C_513808 = new("51.3808")
    C_513809 = new("51.3809")
    C_513810 = new("51.3810")
    C_513811 = new("51.3811")
    C_513812 = new("51.3812")
    C_513813 = new("51.3813")
    C_513814 = new("51.3814")
    C_513815 = new("51.3815")
    C_513816 = new("51.3816")
    C_513817 = new("51.3817")
    C_513818 = new("51.3818")
    C_513819 = new("51.3819")
    C_513820 = new("51.3820")
    C_513821 = new("51.3821")
    C_513822 = new("51.3822")
    C_513899 = new("51.3899")
    C_513901 = new("51.3901")
    C_513902 = new("51.3902")
    C_513999 = new("51.3999")
    C_519999 = new("51.9999")
    C_520101 = new("52.0101")
    C_520201 = new("52.0201")
    C_520202 = new("52.0202")
    C_520203 = new("52.0203")
    C_520204 = new("52.0204")
    C_520205 = new("52.0205")
    C_520206 = new("52.0206")
    C_520207 = new("52.0207")
    C_520208 = new("52.0208")
    C_520209 = new("52.0209")
    C_520210 = new("52.0210")
    C_520211 = new("52.0211")
    C_520212 = new("52.0212")
    C_520213 = new("52.0213")
    C_520299 = new("52.0299")
    C_520301 = new("52.0301")
    C_520302 = new("52.0302")
    C_520303 = new("52.0303")
    C_520304 = new("52.0304")
    C_520305 = new("52.0305")
    C_520399 = new("52.0399")
    C_520401 = new("52.0401")
    C_520402 = new("52.0402")
    C_520406 = new("52.0406")
    C_520407 = new("52.0407")
    C_520408 = new("52.0408")
    C_520409 = new("52.0409")
    C_520410 = new("52.0410")
    C_520411 = new("52.0411")
    C_520499 = new("52.0499")
    C_520501 = new("52.0501")
    C_520601 = new("52.0601")
    C_520701 = new("52.0701")
    C_520702 = new("52.0702")
    C_520703 = new("52.0703")
    C_520799 = new("52.0799")
    C_520801 = new("52.0801")
    C_520803 = new("52.0803")
    C_520804 = new("52.0804")
    C_520806 = new("52.0806")
    C_520807 = new("52.0807")
    C_520808 = new("52.0808")
    C_520809 = new("52.0809")
    C_520899 = new("52.0899")
    C_520901 = new("52.0901")
    C_520903 = new("52.0903")
    C_520904 = new("52.0904")
    C_520905 = new("52.0905")
    C_520906 = new("52.0906")
    C_520907 = new("52.0907")
    C_520908 = new("52.0908")
    C_520909 = new("52.0909")
    C_520999 = new("52.0999")
    C_521001 = new("52.1001")
    C_521002 = new("52.1002")
    C_521003 = new("52.1003")
    C_521004 = new("52.1004")
    C_521005 = new("52.1005")
    C_521099 = new("52.1099")
    C_521101 = new("52.1101")
    C_521201 = new("52.1201")
    C_521206 = new("52.1206")
    C_521207 = new("52.1207")
    C_521299 = new("52.1299")
    C_521301 = new("52.1301")
    C_521302 = new("52.1302")
    C_521304 = new("52.1304")
    C_521399 = new("52.1399")
    C_521401 = new("52.1401")
    C_521402 = new("52.1402")
    C_521403 = new("52.1403")
    C_521499 = new("52.1499")
    C_521501 = new("52.1501")
    C_521601 = new("52.1601")
    C_521701 = new("52.1701")
    C_521801 = new("52.1801")
    C_521802 = new("52.1802")
    C_521803 = new("52.1803")
    C_521804 = new("52.1804")
    C_521899 = new("52.1899")
    C_521901 = new("52.1901")
    C_521902 = new("52.1902")
    C_521903 = new("52.1903")
    C_521904 = new("52.1904")
    C_521905 = new("52.1905")
    C_521906 = new("52.1906")
    C_521907 = new("52.1907")
    C_521908 = new("52.1908")
    C_521909 = new("52.1909")
    C_521910 = new("52.1910")
    C_521999 = new("52.1999")
    C_522001 = new("52.2001")
    C_522101 = new("52.2101")
    C_529999 = new("52.9999")
    C_530101 = new("53.0101")
    C_530102 = new("53.0102")
    C_530103 = new("53.0103")
    C_530104 = new("53.0104")
    C_530105 = new("53.0105")
    C_530199 = new("53.0199")
    C_530201 = new("53.0201")
    C_530202 = new("53.0202")
    C_530203 = new("53.0203")
    C_530299 = new("53.0299")
    C_540101 = new("54.0101")
    C_540102 = new("54.0102")
    C_540103 = new("54.0103")
    C_540104 = new("54.0104")
    C_540105 = new("54.0105")
    C_540106 = new("54.0106")
    C_540107 = new("54.0107")
    C_540108 = new("54.0108")
    C_540199 = new("54.0199")
    C_600101 = new("60.0101")
    C_600102 = new("60.0102")
    C_600103 = new("60.0103")
    C_600104 = new("60.0104")
    C_600105 = new("60.0105")
    C_600106 = new("60.0106")
    C_600107 = new("60.0107")
    C_600108 = new("60.0108")
    C_600109 = new("60.0109")
    C_600199 = new("60.0199")
    C_600301 = new("60.0301")
    C_600302 = new("60.0302")
    C_600303 = new("60.0303")
    C_600304 = new("60.0304")
    C_600305 = new("60.0305")
    C_600306 = new("60.0306")
    C_600307 = new("60.0307")
    C_600308 = new("60.0308")
    C_600309 = new("60.0309")
    C_600310 = new("60.0310")
    C_600311 = new("60.0311")
    C_600312 = new("60.0312")
    C_600313 = new("60.0313")
    C_600314 = new("60.0314")
    C_600315 = new("60.0315")
    C_600316 = new("60.0316")
    C_600317 = new("60.0317")
    C_600318 = new("60.0318")
    C_600319 = new("60.0319")
    C_600320 = new("60.0320")
    C_600399 = new("60.0399")
    C_600401 = new("60.0401")
    C_600402 = new("60.0402")
    C_600403 = new("60.0403")
    C_600404 = new("60.0404")
    C_600405 = new("60.0405")
    C_600406 = new("60.0406")
    C_600407 = new("60.0407")
    C_600408 = new("60.0408")
    C_600409 = new("60.0409")
    C_600410 = new("60.0410")
    C_600411 = new("60.0411")
    C_600412 = new("60.0412")
    C_600413 = new("60.0413")
    C_600414 = new("60.0414")
    C_600415 = new("60.0415")
    C_600416 = new("60.0416")
    C_600417 = new("60.0417")
    C_600418 = new("60.0418")
    C_600419 = new("60.0419")
    C_600420 = new("60.0420")
    C_600421 = new("60.0421")
    C_600422 = new("60.0422")
    C_600423 = new("60.0423")
    C_600424 = new("60.0424")
    C_600425 = new("60.0425")
    C_600426 = new("60.0426")
    C_600427 = new("60.0427")
    C_600428 = new("60.0428")
    C_600429 = new("60.0429")
    C_600430 = new("60.0430")
    C_600431 = new("60.0431")
    C_600432 = new("60.0432")
    C_600433 = new("60.0433")
    C_600434 = new("60.0434")
    C_600499 = new("60.0499")
    C_600501 = new("60.0501")
    C_600502 = new("60.0502")
    C_600503 = new("60.0503")
    C_600504 = new("60.0504")
    C_600505 = new("60.0505")
    C_600506 = new("60.0506")
    C_600507 = new("60.0507")
    C_600508 = new("60.0508")
    C_600509 = new("60.0509")
    C_600510 = new("60.0510")
    C_600511 = new("60.0511")
    C_600512 = new("60.0512")
    C_600513 = new("60.0513")
    C_600514 = new("60.0514")
    C_600515 = new("60.0515")
    C_600516 = new("60.0516")
    C_600517 = new("60.0517")
    C_600518 = new("60.0518")
    C_600519 = new("60.0519")
    C_600520 = new("60.0520")
    C_600521 = new("60.0521")
    C_600522 = new("60.0522")
    C_600523 = new("60.0523")
    C_600524 = new("60.0524")
    C_600525 = new("60.0525")
    C_600526 = new("60.0526")
    C_600527 = new("60.0527")
    C_600528 = new("60.0528")
    C_600529 = new("60.0529")
    C_600530 = new("60.0530")
    C_600531 = new("60.0531")
    C_600532 = new("60.0532")
    C_600533 = new("60.0533")
    C_600534 = new("60.0534")
    C_600535 = new("60.0535")
    C_600536 = new("60.0536")
    C_600537 = new("60.0537")
    C_600538 = new("60.0538")
    C_600539 = new("60.0539")
    C_600540 = new("60.0540")
    C_600541 = new("60.0541")
    C_600542 = new("60.0542")
    C_600543 = new("60.0543")
    C_600544 = new("60.0544")
    C_600545 = new("60.0545")
    C_600546 = new("60.0546")
    C_600547 = new("60.0547")
    C_600548 = new("60.0548")
    C_600549 = new("60.0549")
    C_600550 = new("60.0550")
    C_600551 = new("60.0551")
    C_600552 = new("60.0552")
    C_600553 = new("60.0553")
    C_600554 = new("60.0554")
    C_600555 = new("60.0555")
    C_600556 = new("60.0556")
    C_600557 = new("60.0557")
    C_600558 = new("60.0558")
    C_600559 = new("60.0559")
    C_600560 = new("60.0560")
    C_600561 = new("60.0561")
    C_600562 = new("60.0562")
    C_600563 = new("60.0563")
    C_600564 = new("60.0564")
    C_600565 = new("60.0565")
    C_600566 = new("60.0566")
    C_600567 = new("60.0567")
    C_600568 = new("60.0568")
    C_600569 = new("60.0569")
    C_600570 = new("60.0570")
    C_600571 = new("60.0571")
    C_600572 = new("60.0572")
    C_600573 = new("60.0573")
    C_600574 = new("60.0574")
    C_600575 = new("60.0575")
    C_600576 = new("60.0576")
    C_600577 = new("60.0577")
    C_600578 = new("60.0578")
    C_600579 = new("60.0579")
    C_600580 = new("60.0580")
    C_600581 = new("60.0581")
    C_600582 = new("60.0582")
    C_600583 = new("60.0583")
    C_600584 = new("60.0584")
    C_600599 = new("60.0599")
    C_600601 = new("60.0601")
    C_600602 = new("60.0602")
    C_900101 = new("90.0101")
  end

# {http://www.ice.gov/xmlschema/sevisbatch/Table}CntryCodeWithoutNullableType
#  any of table:emptyEnumerationType table:CntryCodeWithoutType
  class CntryCodeWithoutNullableType < ::String
  end

# {http://www.ice.gov/xmlschema/sevisbatch/Table}CntryCodeWithoutType
  class CntryCodeWithoutType < ::String
    AA = new("AA")
    AC = new("AC")
    AE = new("AE")
    AF = new("AF")
    AG = new("AG")
    AJ = new("AJ")
    AL = new("AL")
    AM = new("AM")
    AN = new("AN")
    AO = new("AO")
    AR = new("AR")
    AS = new("AS")
    AT = new("AT")
    AU = new("AU")
    AV = new("AV")
    AX = new("AX")
    BA = new("BA")
    BB = new("BB")
    BC = new("BC")
    BD = new("BD")
    BE = new("BE")
    BF = new("BF")
    BG = new("BG")
    BH = new("BH")
    BK = new("BK")
    BL = new("BL")
    BM = new("BM")
    BN = new("BN")
    BO = new("BO")
    BP = new("BP")
    BR = new("BR")
    BS = new("BS")
    BT = new("BT")
    BU = new("BU")
    BV = new("BV")
    BX = new("BX")
    BY = new("BY")
    CA = new("CA")
    CB = new("CB")
    CD = new("CD")
    CE = new("CE")
    CF = new("CF")
    CG = new("CG")
    CH = new("CH")
    CI = new("CI")
    CJ = new("CJ")
    CK = new("CK")
    CM = new("CM")
    CN = new("CN")
    CO = new("CO")
    CR = new("CR")
    CS = new("CS")
    CT = new("CT")
    CU = new("CU")
    CV = new("CV")
    CW = new("CW")
    CY = new("CY")
    C_IO = new("IO")
    C_VM = new("VM")
    DA = new("DA")
    DJ = new("DJ")
    DO = new("DO")
    DR = new("DR")
    DX = new("DX")
    EC = new("EC")
    EG = new("EG")
    EI = new("EI")
    EK = new("EK")
    EN = new("EN")
    ER = new("ER")
    ES = new("ES")
    ET = new("ET")
    EU = new("EU")
    EZ = new("EZ")
    FG = new("FG")
    FI = new("FI")
    FJ = new("FJ")
    FK = new("FK")
    FM = new("FM")
    FO = new("FO")
    FP = new("FP")
    FR = new("FR")
    FS = new("FS")
    GA = new("GA")
    GB = new("GB")
    GG = new("GG")
    GH = new("GH")
    GI = new("GI")
    GJ = new("GJ")
    GK = new("GK")
    GL = new("GL")
    GM = new("GM")
    GO = new("GO")
    GP = new("GP")
    GR = new("GR")
    GT = new("GT")
    GV = new("GV")
    GY = new("GY")
    GZ = new("GZ")
    HA = new("HA")
    HK = new("HK")
    HM = new("HM")
    HO = new("HO")
    HR = new("HR")
    HU = new("HU")
    IC = new("IC")
    ID = new("ID")
    IM = new("IM")
    IN = new("IN")
    IP = new("IP")
    IR = new("IR")
    IS = new("IS")
    IT = new("IT")
    IV = new("IV")
    IZ = new("IZ")
    JA = new("JA")
    JE = new("JE")
    JM = new("JM")
    JN = new("JN")
    JO = new("JO")
    JU = new("JU")
    KE = new("KE")
    KG = new("KG")
    KN = new("KN")
    KR = new("KR")
    KS = new("KS")
    KT = new("KT")
    KU = new("KU")
    KV = new("KV")
    KZ = new("KZ")
    LA = new("LA")
    LE = new("LE")
    LG = new("LG")
    LH = new("LH")
    LI = new("LI")
    LO = new("LO")
    LS = new("LS")
    LT = new("LT")
    LU = new("LU")
    LY = new("LY")
    MA = new("MA")
    MB = new("MB")
    MC = new("MC")
    MD = new("MD")
    MF = new("MF")
    MG = new("MG")
    MH = new("MH")
    MI = new("MI")
    MJ = new("MJ")
    MK = new("MK")
    ML = new("ML")
    MN = new("MN")
    MO = new("MO")
    MP = new("MP")
    MR = new("MR")
    MT = new("MT")
    MU = new("MU")
    MV = new("MV")
    MX = new("MX")
    MY = new("MY")
    MZ = new("MZ")
    NC = new("NC")
    NE = new("NE")
    NF = new("NF")
    NG = new("NG")
    NH = new("NH")
    NI = new("NI")
    NL = new("NL")
    NN = new("NN")
    NO = new("NO")
    NP = new("NP")
    NR = new("NR")
    NS = new("NS")
    NU = new("NU")
    NZ = new("NZ")
    OD = new("OD")
    PA = new("PA")
    PC = new("PC")
    PE = new("PE")
    PF = new("PF")
    PG = new("PG")
    PJ = new("PJ")
    PK = new("PK")
    PL = new("PL")
    PM = new("PM")
    PO = new("PO")
    PP = new("PP")
    PS = new("PS")
    PU = new("PU")
    QA = new("QA")
    RE = new("RE")
    RI = new("RI")
    RM = new("RM")
    RN = new("RN")
    RO = new("RO")
    RP = new("RP")
    RS = new("RS")
    RW = new("RW")
    SA = new("SA")
    SB = new("SB")
    SC = new("SC")
    SE = new("SE")
    SF = new("SF")
    SG = new("SG")
    SH = new("SH")
    SI = new("SI")
    SL = new("SL")
    SM = new("SM")
    SN = new("SN")
    SO = new("SO")
    SP = new("SP")
    ST = new("ST")
    SU = new("SU")
    SV = new("SV")
    SW = new("SW")
    SX = new("SX")
    SY = new("SY")
    SZ = new("SZ")
    TB = new("TB")
    TD = new("TD")
    TE = new("TE")
    TH = new("TH")
    TI = new("TI")
    TK = new("TK")
    TL = new("TL")
    TN = new("TN")
    TO = new("TO")
    TP = new("TP")
    TS = new("TS")
    TT = new("TT")
    TU = new("TU")
    TV = new("TV")
    TW = new("TW")
    TX = new("TX")
    TZ = new("TZ")
    U2 = new("U2")
    U3 = new("U3")
    U5 = new("U5")
    UC = new("UC")
    UG = new("UG")
    UK = new("UK")
    UP = new("UP")
    UV = new("UV")
    UY = new("UY")
    UZ = new("UZ")
    VC = new("VC")
    VE = new("VE")
    VI = new("VI")
    VT = new("VT")
    WA = new("WA")
    WE = new("WE")
    WF = new("WF")
    WI = new("WI")
    WS = new("WS")
    WZ = new("WZ")
    YM = new("YM")
    ZA = new("ZA")
    ZI = new("ZI")
  end

# {http://www.ice.gov/xmlschema/sevisbatch/Table}CntryCodeWithCloseDateNullableType
#  any of table:emptyStringType table:CntryCodeWithCloseDateType
  class CntryCodeWithCloseDateNullableType < ::String
  end

# {http://www.ice.gov/xmlschema/sevisbatch/Table}CntryCodeWithCloseDateType
  class CntryCodeWithCloseDateType < ::String
    AA = new("AA")
    AC = new("AC")
    AE = new("AE")
    AF = new("AF")
    AG = new("AG")
    AJ = new("AJ")
    AL = new("AL")
    AM = new("AM")
    AN = new("AN")
    AO = new("AO")
    AR = new("AR")
    AS = new("AS")
    AT = new("AT")
    AU = new("AU")
    AV = new("AV")
    AX = new("AX")
    AY = new("AY")
    BA = new("BA")
    BB = new("BB")
    BC = new("BC")
    BD = new("BD")
    BE = new("BE")
    BF = new("BF")
    BG = new("BG")
    BH = new("BH")
    BK = new("BK")
    BL = new("BL")
    BM = new("BM")
    BN = new("BN")
    BO = new("BO")
    BP = new("BP")
    BR = new("BR")
    BS = new("BS")
    BT = new("BT")
    BU = new("BU")
    BV = new("BV")
    BX = new("BX")
    BY = new("BY")
    BZ = new("BZ")
    CA = new("CA")
    CB = new("CB")
    CD = new("CD")
    CE = new("CE")
    CF = new("CF")
    CG = new("CG")
    CH = new("CH")
    CI = new("CI")
    CJ = new("CJ")
    CK = new("CK")
    CL = new("CL")
    CM = new("CM")
    CN = new("CN")
    CO = new("CO")
    CR = new("CR")
    CS = new("CS")
    CT = new("CT")
    CU = new("CU")
    CV = new("CV")
    CW = new("CW")
    CY = new("CY")
    CZ = new("CZ")
    C_GC = new("GC")
    C_IO = new("IO")
    C_VM = new("VM")
    DA = new("DA")
    DJ = new("DJ")
    DO = new("DO")
    DR = new("DR")
    DX = new("DX")
    EC = new("EC")
    EG = new("EG")
    EI = new("EI")
    EK = new("EK")
    EN = new("EN")
    EQ = new("EQ")
    ER = new("ER")
    ES = new("ES")
    ET = new("ET")
    EU = new("EU")
    EZ = new("EZ")
    FG = new("FG")
    FI = new("FI")
    FJ = new("FJ")
    FK = new("FK")
    FM = new("FM")
    FO = new("FO")
    FP = new("FP")
    FR = new("FR")
    FS = new("FS")
    FT = new("FT")
    GA = new("GA")
    GB = new("GB")
    GE = new("GE")
    GG = new("GG")
    GH = new("GH")
    GI = new("GI")
    GJ = new("GJ")
    GK = new("GK")
    GL = new("GL")
    GM = new("GM")
    GN = new("GN")
    GO = new("GO")
    GP = new("GP")
    GR = new("GR")
    GS = new("GS")
    GT = new("GT")
    GV = new("GV")
    GY = new("GY")
    GZ = new("GZ")
    HA = new("HA")
    HK = new("HK")
    HM = new("HM")
    HO = new("HO")
    HR = new("HR")
    HU = new("HU")
    IC = new("IC")
    ID = new("ID")
    IM = new("IM")
    IN = new("IN")
    IP = new("IP")
    IQ = new("IQ")
    IR = new("IR")
    IS = new("IS")
    IT = new("IT")
    IU = new("IU")
    IV = new("IV")
    IW = new("IW")
    IY = new("IY")
    IZ = new("IZ")
    JA = new("JA")
    JE = new("JE")
    JM = new("JM")
    JN = new("JN")
    JO = new("JO")
    JS = new("JS")
    JU = new("JU")
    KE = new("KE")
    KG = new("KG")
    KN = new("KN")
    KR = new("KR")
    KS = new("KS")
    KT = new("KT")
    KU = new("KU")
    KV = new("KV")
    KZ = new("KZ")
    LA = new("LA")
    LE = new("LE")
    LG = new("LG")
    LH = new("LH")
    LI = new("LI")
    LO = new("LO")
    LS = new("LS")
    LT = new("LT")
    LU = new("LU")
    LY = new("LY")
    MA = new("MA")
    MB = new("MB")
    MC = new("MC")
    MD = new("MD")
    ME = new("ME")
    MF = new("MF")
    MG = new("MG")
    MH = new("MH")
    MI = new("MI")
    MJ = new("MJ")
    MK = new("MK")
    ML = new("ML")
    MN = new("MN")
    MO = new("MO")
    MP = new("MP")
    MR = new("MR")
    MT = new("MT")
    MU = new("MU")
    MV = new("MV")
    MW = new("MW")
    MX = new("MX")
    MY = new("MY")
    MZ = new("MZ")
    NC = new("NC")
    NE = new("NE")
    NF = new("NF")
    NG = new("NG")
    NH = new("NH")
    NI = new("NI")
    NL = new("NL")
    NN = new("NN")
    NO = new("NO")
    NP = new("NP")
    NR = new("NR")
    NS = new("NS")
    NT = new("NT")
    NU = new("NU")
    NZ = new("NZ")
    OD = new("OD")
    PA = new("PA")
    PC = new("PC")
    PE = new("PE")
    PF = new("PF")
    PG = new("PG")
    PJ = new("PJ")
    PK = new("PK")
    PL = new("PL")
    PM = new("PM")
    PO = new("PO")
    PP = new("PP")
    PQ = new("PQ")
    PS = new("PS")
    PT = new("PT")
    PU = new("PU")
    QA = new("QA")
    RB = new("RB")
    RE = new("RE")
    RH = new("RH")
    RI = new("RI")
    RM = new("RM")
    RN = new("RN")
    RO = new("RO")
    RP = new("RP")
    RS = new("RS")
    RW = new("RW")
    SA = new("SA")
    SB = new("SB")
    SC = new("SC")
    SE = new("SE")
    SF = new("SF")
    SG = new("SG")
    SH = new("SH")
    SI = new("SI")
    SK = new("SK")
    SL = new("SL")
    SM = new("SM")
    SN = new("SN")
    SO = new("SO")
    SP = new("SP")
    SQ = new("SQ")
    SR = new("SR")
    SS = new("SS")
    ST = new("ST")
    SU = new("SU")
    SV = new("SV")
    SW = new("SW")
    SX = new("SX")
    SY = new("SY")
    SZ = new("SZ")
    TB = new("TB")
    TD = new("TD")
    TE = new("TE")
    TH = new("TH")
    TI = new("TI")
    TK = new("TK")
    TL = new("TL")
    TN = new("TN")
    TO = new("TO")
    TP = new("TP")
    TQ = new("TQ")
    TS = new("TS")
    TT = new("TT")
    TU = new("TU")
    TV = new("TV")
    TW = new("TW")
    TX = new("TX")
    TZ = new("TZ")
    U2 = new("U2")
    U3 = new("U3")
    U5 = new("U5")
    UC = new("UC")
    UG = new("UG")
    UK = new("UK")
    UP = new("UP")
    UR = new("UR")
    UV = new("UV")
    UY = new("UY")
    UZ = new("UZ")
    VC = new("VC")
    VE = new("VE")
    VI = new("VI")
    VN = new("VN")
    VS = new("VS")
    VT = new("VT")
    WA = new("WA")
    WE = new("WE")
    WF = new("WF")
    WI = new("WI")
    WS = new("WS")
    WZ = new("WZ")
    YE = new("YE")
    YI = new("YI")
    YM = new("YM")
    YO = new("YO")
    YQ = new("YQ")
    YS = new("YS")
    ZA = new("ZA")
    ZI = new("ZI")
  end

# {http://www.ice.gov/xmlschema/sevisbatch/Table}VisaPostCodeNullableType
#  any of table:emptyStringType table:VisaPostCodeType
  class VisaPostCodeNullableType < ::String
  end

# {http://www.ice.gov/xmlschema/sevisbatch/Table}VisaPostCodeType
  class VisaPostCodeType < ::String
    ABD = new("ABD")
    ABJ = new("ABJ")
    ACC = new("ACC")
    ACK = new("ACK")
    ADD = new("ADD")
    AKD = new("AKD")
    ALG = new("ALG")
    AMM = new("AMM")
    AMS = new("AMS")
    ANK = new("ANK")
    ANT = new("ANT")
    ASM = new("ASM")
    ASN = new("ASN")
    AST = new("AST")
    ATA = new("ATA")
    ATH = new("ATH")
    BAM = new("BAM")
    BAN = new("BAN")
    BCH = new("BCH")
    BDP = new("BDP")
    BEJ = new("BEJ")
    BEN = new("BEN")
    BGH = new("BGH")
    BGI = new("BGI")
    BGN = new("BGN")
    BGT = new("BGT")
    BKK = new("BKK")
    BKU = new("BKU")
    BLF = new("BLF")
    BLG = new("BLG")
    BLZ = new("BLZ")
    BMB = new("BMB")
    BNK = new("BNK")
    BNS = new("BNS")
    BRA = new("BRA")
    BRL = new("BRL")
    BRS = new("BRS")
    BRT = new("BRT")
    BSB = new("BSB")
    BTS = new("BTS")
    BUJ = new("BUJ")
    CDJ = new("CDJ")
    CHE = new("CHE")
    CHN = new("CHN")
    CHS = new("CHS")
    CLC = new("CLC")
    CLG = new("CLG")
    CLM = new("CLM")
    CNB = new("CNB")
    COT = new("COT")
    CPN = new("CPN")
    CPT = new("CPT")
    CRO = new("CRO")
    CRS = new("CRS")
    CRY = new("CRY")
    CSB = new("CSB")
    DBL = new("DBL")
    DHK = new("DHK")
    DJI = new("DJI")
    DKR = new("DKR")
    DMS = new("DMS")
    DOH = new("DOH")
    DRB = new("DRB")
    DRS = new("DRS")
    DUB = new("DUB")
    FRN = new("FRN")
    GAB = new("GAB")
    GDL = new("GDL")
    GEO = new("GEO")
    GTM = new("GTM")
    GUZ = new("GUZ")
    GYQ = new("GYQ")
    HAN = new("HAN")
    HAV = new("HAV")
    HCM = new("HCM")
    HER = new("HER")
    HLF = new("HLF")
    HLS = new("HLS")
    HML = new("HML")
    HNK = new("HNK")
    HRE = new("HRE")
    ISL = new("ISL")
    IST = new("IST")
    JAK = new("JAK")
    JDD = new("JDD")
    JHN = new("JHN")
    JRS = new("JRS")
    KBO = new("KBO")
    KDU = new("KDU")
    KEV = new("KEV")
    KGL = new("KGL")
    KIN = new("KIN")
    KLL = new("KLL")
    KMP = new("KMP")
    KNG = new("KNG")
    KOL = new("KOL")
    KOR = new("KOR")
    KRK = new("KRK")
    KWT = new("KWT")
    LGS = new("LGS")
    LIB = new("LIB")
    LIL = new("LIL")
    LJU = new("LJU")
    LMA = new("LMA")
    LND = new("LND")
    LOM = new("LOM")
    LPZ = new("LPZ")
    LSB = new("LSB")
    LUA = new("LUA")
    LUS = new("LUS")
    LXM = new("LXM")
    MAJ = new("MAJ")
    MAP = new("MAP")
    MAS = new("MAS")
    MBA = new("MBA")
    MDD = new("MDD")
    MDR = new("MDR")
    MER = new("MER")
    MEX = new("MEX")
    MLB = new("MLB")
    MLN = new("MLN")
    MNA = new("MNA")
    MNG = new("MNG")
    MNL = new("MNL")
    MOS = new("MOS")
    MRL = new("MRL")
    MRV = new("MRV")
    MSK = new("MSK")
    MST = new("MST")
    MTL = new("MTL")
    MTM = new("MTM")
    MTR = new("MTR")
    MTV = new("MTV")
    NCS = new("NCS")
    NDJ = new("NDJ")
    NGL = new("NGL")
    NHA = new("NHA")
    NMY = new("NMY")
    NPL = new("NPL")
    NRB = new("NRB")
    NSS = new("NSS")
    NUK = new("NUK")
    NVL = new("NVL")
    NWD = new("NWD")
    OSL = new("OSL")
    OTT = new("OTT")
    OUG = new("OUG")
    PDM = new("PDM")
    PHP = new("PHP")
    PNM = new("PNM")
    PRA = new("PRA")
    PRG = new("PRG")
    PRM = new("PRM")
    PRS = new("PRS")
    PRT = new("PRT")
    PTD = new("PTD")
    PTL = new("PTL")
    PTM = new("PTM")
    PTP = new("PTP")
    PTS = new("PTS")
    QBC = new("QBC")
    QTO = new("QTO")
    RCF = new("RCF")
    RDJ = new("RDJ")
    RGA = new("RGA")
    RID = new("RID")
    RKJ = new("RKJ")
    RME = new("RME")
    RNG = new("RNG")
    SAA = new("SAA")
    SAR = new("SAR")
    SDO = new("SDO")
    SEO = new("SEO")
    SGP = new("SGP")
    SHG = new("SHG")
    SKO = new("SKO")
    SNJ = new("SNJ")
    SNS = new("SNS")
    SNT = new("SNT")
    SNY = new("SNY")
    SOF = new("SOF")
    SPL = new("SPL")
    SPT = new("SPT")
    SRB = new("SRB")
    STK = new("STK")
    SUV = new("SUV")
    SYD = new("SYD")
    TAI = new("TAI")
    TAL = new("TAL")
    TBL = new("TBL")
    TGG = new("TGG")
    THT = new("THT")
    TIA = new("TIA")
    TJN = new("TJN")
    TKY = new("TKY")
    TLV = new("TLV")
    TNS = new("TNS")
    TRT = new("TRT")
    ULN = new("ULN")
    VAC = new("VAC")
    VIL = new("VIL")
    VLA = new("VLA")
    VLL = new("VLL")
    VNN = new("VNN")
    VNT = new("VNT")
    WHK = new("WHK")
    WRW = new("WRW")
    YDE = new("YDE")
    YEK = new("YEK")
    YRV = new("YRV")
    ZGB = new("ZGB")
  end

# {http://www.ice.gov/xmlschema/sevisbatch/Table}BirthCntryCodeType
  class BirthCntryCodeType < ::String
    AA = new("AA")
    AC = new("AC")
    AE = new("AE")
    AF = new("AF")
    AG = new("AG")
    AJ = new("AJ")
    AL = new("AL")
    AM = new("AM")
    AN = new("AN")
    AO = new("AO")
    AQ = new("AQ")
    AR = new("AR")
    AS = new("AS")
    AT = new("AT")
    AU = new("AU")
    AV = new("AV")
    AX = new("AX")
    AY = new("AY")
    BA = new("BA")
    BB = new("BB")
    BC = new("BC")
    BD = new("BD")
    BE = new("BE")
    BF = new("BF")
    BG = new("BG")
    BH = new("BH")
    BK = new("BK")
    BL = new("BL")
    BM = new("BM")
    BN = new("BN")
    BO = new("BO")
    BP = new("BP")
    BQ = new("BQ")
    BR = new("BR")
    BS = new("BS")
    BT = new("BT")
    BU = new("BU")
    BV = new("BV")
    BX = new("BX")
    BY = new("BY")
    BZ = new("BZ")
    CA = new("CA")
    CB = new("CB")
    CD = new("CD")
    CE = new("CE")
    CF = new("CF")
    CG = new("CG")
    CH = new("CH")
    CI = new("CI")
    CJ = new("CJ")
    CK = new("CK")
    CL = new("CL")
    CM = new("CM")
    CN = new("CN")
    CO = new("CO")
    CQ = new("CQ")
    CR = new("CR")
    CS = new("CS")
    CT = new("CT")
    CU = new("CU")
    CV = new("CV")
    CW = new("CW")
    CY = new("CY")
    CZ = new("CZ")
    C_GC = new("GC")
    C_IO = new("IO")
    C_VM = new("VM")
    DA = new("DA")
    DJ = new("DJ")
    DO = new("DO")
    DQ = new("DQ")
    DR = new("DR")
    DX = new("DX")
    EC = new("EC")
    EG = new("EG")
    EI = new("EI")
    EK = new("EK")
    EN = new("EN")
    EQ = new("EQ")
    ER = new("ER")
    ES = new("ES")
    ET = new("ET")
    EU = new("EU")
    EZ = new("EZ")
    FG = new("FG")
    FI = new("FI")
    FJ = new("FJ")
    FK = new("FK")
    FM = new("FM")
    FO = new("FO")
    FP = new("FP")
    FQ = new("FQ")
    FR = new("FR")
    FS = new("FS")
    FT = new("FT")
    GA = new("GA")
    GB = new("GB")
    GE = new("GE")
    GG = new("GG")
    GH = new("GH")
    GI = new("GI")
    GJ = new("GJ")
    GK = new("GK")
    GL = new("GL")
    GM = new("GM")
    GN = new("GN")
    GO = new("GO")
    GP = new("GP")
    GQ = new("GQ")
    GR = new("GR")
    GS = new("GS")
    GT = new("GT")
    GV = new("GV")
    GY = new("GY")
    GZ = new("GZ")
    HA = new("HA")
    HK = new("HK")
    HM = new("HM")
    HO = new("HO")
    HQ = new("HQ")
    HR = new("HR")
    HU = new("HU")
    IC = new("IC")
    ID = new("ID")
    IM = new("IM")
    IN = new("IN")
    IP = new("IP")
    IQ = new("IQ")
    IR = new("IR")
    IS = new("IS")
    IT = new("IT")
    IU = new("IU")
    IV = new("IV")
    IW = new("IW")
    IY = new("IY")
    IZ = new("IZ")
    JA = new("JA")
    JE = new("JE")
    JM = new("JM")
    JN = new("JN")
    JO = new("JO")
    JQ = new("JQ")
    JS = new("JS")
    JU = new("JU")
    KE = new("KE")
    KG = new("KG")
    KN = new("KN")
    KQ = new("KQ")
    KR = new("KR")
    KS = new("KS")
    KT = new("KT")
    KU = new("KU")
    KV = new("KV")
    KZ = new("KZ")
    LA = new("LA")
    LE = new("LE")
    LG = new("LG")
    LH = new("LH")
    LI = new("LI")
    LO = new("LO")
    LQ = new("LQ")
    LS = new("LS")
    LT = new("LT")
    LU = new("LU")
    LY = new("LY")
    MA = new("MA")
    MB = new("MB")
    MC = new("MC")
    MD = new("MD")
    ME = new("ME")
    MF = new("MF")
    MG = new("MG")
    MH = new("MH")
    MI = new("MI")
    MJ = new("MJ")
    MK = new("MK")
    ML = new("ML")
    MN = new("MN")
    MO = new("MO")
    MP = new("MP")
    MQ = new("MQ")
    MR = new("MR")
    MT = new("MT")
    MU = new("MU")
    MV = new("MV")
    MW = new("MW")
    MX = new("MX")
    MY = new("MY")
    MZ = new("MZ")
    NC = new("NC")
    NE = new("NE")
    NF = new("NF")
    NG = new("NG")
    NH = new("NH")
    NI = new("NI")
    NL = new("NL")
    NN = new("NN")
    NO = new("NO")
    NP = new("NP")
    NR = new("NR")
    NS = new("NS")
    NT = new("NT")
    NU = new("NU")
    NZ = new("NZ")
    OD = new("OD")
    PA = new("PA")
    PC = new("PC")
    PE = new("PE")
    PF = new("PF")
    PG = new("PG")
    PJ = new("PJ")
    PK = new("PK")
    PL = new("PL")
    PM = new("PM")
    PO = new("PO")
    PP = new("PP")
    PQ = new("PQ")
    PS = new("PS")
    PT = new("PT")
    PU = new("PU")
    QA = new("QA")
    RE = new("RE")
    RH = new("RH")
    RI = new("RI")
    RM = new("RM")
    RN = new("RN")
    RO = new("RO")
    RP = new("RP")
    RQ = new("RQ")
    RS = new("RS")
    RW = new("RW")
    SA = new("SA")
    SB = new("SB")
    SC = new("SC")
    SE = new("SE")
    SF = new("SF")
    SG = new("SG")
    SH = new("SH")
    SI = new("SI")
    SK = new("SK")
    SL = new("SL")
    SM = new("SM")
    SN = new("SN")
    SO = new("SO")
    SP = new("SP")
    SQ = new("SQ")
    SR = new("SR")
    SS = new("SS")
    ST = new("ST")
    SU = new("SU")
    SV = new("SV")
    SW = new("SW")
    SX = new("SX")
    SY = new("SY")
    SZ = new("SZ")
    TB = new("TB")
    TD = new("TD")
    TE = new("TE")
    TH = new("TH")
    TI = new("TI")
    TK = new("TK")
    TL = new("TL")
    TN = new("TN")
    TO = new("TO")
    TP = new("TP")
    TQ = new("TQ")
    TS = new("TS")
    TT = new("TT")
    TU = new("TU")
    TV = new("TV")
    TW = new("TW")
    TX = new("TX")
    TZ = new("TZ")
    U2 = new("U2")
    U3 = new("U3")
    U5 = new("U5")
    UC = new("UC")
    UG = new("UG")
    UK = new("UK")
    UP = new("UP")
    UR = new("UR")
    US = new("US")
    UV = new("UV")
    UY = new("UY")
    UZ = new("UZ")
    VC = new("VC")
    VE = new("VE")
    VI = new("VI")
    VN = new("VN")
    VQ = new("VQ")
    VS = new("VS")
    VT = new("VT")
    WA = new("WA")
    WE = new("WE")
    WF = new("WF")
    WI = new("WI")
    WQ = new("WQ")
    WS = new("WS")
    WZ = new("WZ")
    YE = new("YE")
    YI = new("YI")
    YM = new("YM")
    YO = new("YO")
    YQ = new("YQ")
    YS = new("YS")
    ZA = new("ZA")
    ZI = new("ZI")
  end

# {http://www.ice.gov/xmlschema/sevisbatch/Table}StateCodeNullableType
#  any of table:emptyEnumerationType table:StateCodeType
  class StateCodeNullableType < ::String
  end

# {http://www.ice.gov/xmlschema/sevisbatch/Table}StateCodeType
  class StateCodeType < ::String
    AK = new("AK")
    AL = new("AL")
    AR = new("AR")
    AS = new("AS")
    AZ = new("AZ")
    CA = new("CA")
    CO = new("CO")
    CT = new("CT")
    DC = new("DC")
    DE = new("DE")
    FL = new("FL")
    FM = new("FM")
    GA = new("GA")
    GU = new("GU")
    HI = new("HI")
    IA = new("IA")
    ID = new("ID")
    IL = new("IL")
    IN = new("IN")
    KS = new("KS")
    KY = new("KY")
    LA = new("LA")
    MA = new("MA")
    MD = new("MD")
    ME = new("ME")
    MH = new("MH")
    MI = new("MI")
    MN = new("MN")
    MO = new("MO")
    MP = new("MP")
    MS = new("MS")
    MT = new("MT")
    NC = new("NC")
    ND = new("ND")
    NE = new("NE")
    NH = new("NH")
    NJ = new("NJ")
    NM = new("NM")
    NV = new("NV")
    NY = new("NY")
    OH = new("OH")
    OK = new("OK")
    OR = new("OR")
    PA = new("PA")
    PR = new("PR")
    PW = new("PW")
    RI = new("RI")
    SC = new("SC")
    SD = new("SD")
    TN = new("TN")
    TX = new("TX")
    UM = new("UM")
    UT = new("UT")
    VA = new("VA")
    VI = new("VI")
    VT = new("VT")
    WA = new("WA")
    WI = new("WI")
    WV = new("WV")
    WY = new("WY")
  end

# {http://www.ice.gov/xmlschema/sevisbatch/Table}DropBlwfullType
  class DropBlwfullType < ::String
    C_01 = new("01")
    C_02 = new("02")
    C_03 = new("03")
    C_04 = new("04")
    C_05 = new("05")
    C_06 = new("06")
    C_07 = new("07")
  end

# {http://www.ice.gov/xmlschema/sevisbatch/Table}GenderCodeType
  class GenderCodeType < ::String
    F = new("F")
    M = new("M")
    U = new("U")
  end

# {http://www.ice.gov/xmlschema/sevisbatch/Table}EVGenderCodeType
  class EVGenderCodeType < ::String
    F = new("F")
    M = new("M")
  end

# {http://www.ice.gov/xmlschema/sevisbatch/Table}DependentFMVisaType
  class DependentFMVisaType < ::String
    C_04 = new("04")
    C_05 = new("05")
  end

# {http://www.ice.gov/xmlschema/sevisbatch/Table}StudentVisaCodeType
  class StudentVisaCodeType < ::String
    C_01 = new("01")
    C_02 = new("02")
  end

# {http://www.ice.gov/xmlschema/sevisbatch/Table}EduLevelCodeType
  class EduLevelCodeType < ::String
    C_01 = new("01")
    C_02 = new("02")
    C_03 = new("03")
    C_04 = new("04")
    C_05 = new("05")
    C_06 = new("06")
    C_07 = new("07")
    C_08 = new("08")
    C_09 = new("09")
    C_10 = new("10")
    C_11 = new("11")
  end

# {http://www.ice.gov/xmlschema/sevisbatch/Table}DependentCodeType
  class DependentCodeType < ::String
    C_01 = new("01")
    C_02 = new("02")
  end

# {http://www.ice.gov/xmlschema/sevisbatch/Table}EmploymentCodeType
  class EmploymentCodeType < ::String
    C_01 = new("01")
    C_02 = new("02")
    C_03 = new("03")
  end

# {http://www.ice.gov/xmlschema/sevisbatch/Table}OffCampusEmploymentCodeType
  class OffCampusEmploymentCodeType < ::String
    C_01 = new("01")
    C_02 = new("02")
    C_03 = new("03")
  end

# {http://www.ice.gov/xmlschema/sevisbatch/Table}EmploymentTimeType
  class EmploymentTimeType < ::String
    C_01 = new("01")
    C_02 = new("02")
  end

# {http://www.ice.gov/xmlschema/sevisbatch/Table}StudentReprintRequestReasonType
  class StudentReprintRequestReasonType < ::String
    C_01 = new("01")
    C_02 = new("02")
    C_03 = new("03")
    C_04 = new("04")
    C_50 = new("50")
    C_53 = new("53")
  end

# {http://www.ice.gov/xmlschema/sevisbatch/Table}StudentTerminationReasonType
  class StudentTerminationReasonType < ::String
    C_01 = new("01")
    C_02 = new("02")
    C_03 = new("03")
    C_04 = new("04")
    C_05 = new("05")
    C_08 = new("08")
    C_09 = new("09")
    C_10 = new("10")
    C_11 = new("11")
    C_13 = new("13")
    C_14 = new("14")
    C_15 = new("15")
    C_16 = new("16")
    C_17 = new("17")
    C_18 = new("18")
    C_19 = new("19")
    C_20 = new("20")
    C_21 = new("21")
    C_22 = new("22")
    C_23 = new("23")
    C_25 = new("25")
  end

# {http://www.ice.gov/xmlschema/sevisbatch/Table}DependentTerminationReasonType
  class DependentTerminationReasonType < ::String
    C_02 = new("02")
    C_03 = new("03")
    C_04 = new("04")
    C_05 = new("05")
    C_06 = new("06")
    C_09 = new("09")
    C_10 = new("10")
  end

# {http://www.ice.gov/xmlschema/sevisbatch/Table}NameSuffixCodeType
  class NameSuffixCodeType < ::String
    I = new("I")
    II = new("II")
    III = new("III")
    IV = new("IV")
    Jr = new("Jr.")
    Sr = new("Sr.")
  end

# {http://www.ice.gov/xmlschema/sevisbatch/Table}EVVisaCodeType
  class EVVisaCodeType < ::String
    C_03 = new("03")
  end

# {http://www.ice.gov/xmlschema/sevisbatch/Table}EVReprintRequestReasonType
  class EVReprintRequestReasonType < ::String
    C_05 = new("05")
    C_12 = new("12")
    C_13 = new("13")
    C_14 = new("14")
  end

# {http://www.ice.gov/xmlschema/sevisbatch/Table}EVCreateReasonType
  class EVCreateReasonType < ::String
    NEW = new("NEW")
  end

# {http://www.ice.gov/xmlschema/sevisbatch/Table}EVCategoryCodeType
  class EVCategoryCodeType < ::String
    C_03 = new("03")
    C_04 = new("04")
    C_05 = new("05")
    C_06 = new("06")
    C_07 = new("07")
    C_08 = new("08")
    C_09 = new("09")
    C_10 = new("10")
    C_11 = new("11")
    C_12 = new("12")
    C_13 = new("13")
    C_14 = new("14")
    C_15 = new("15")
    C_1A = new("1A")
    C_1B = new("1B")
    C_1C = new("1C")
    C_1D = new("1D")
    C_1E = new("1E")
    C_1F = new("1F")
    C_1G = new("1G")
    C_2A = new("2A")
    C_2B = new("2B")
  end

# {http://www.ice.gov/xmlschema/sevisbatch/Table}EVOccupationCategoryCodeType
  class EVOccupationCategoryCodeType < ::String
    C_01 = new("01")
    C_02 = new("02")
    C_03 = new("03")
    C_04 = new("04")
    C_05 = new("05")
    C_06 = new("06")
    C_07 = new("07")
    C_08 = new("08")
    C_09 = new("09")
    C_10 = new("10")
    C_11 = new("11")
    C_12 = new("12")
    C_99 = new("99")
  end

# {http://www.ice.gov/xmlschema/sevisbatch/Table}InternationalOrgCodeNullableType
#  any of table:emptyEnumerationType table:InternationalOrgCodeType
  class InternationalOrgCodeNullableType < ::String
  end

# {http://www.ice.gov/xmlschema/sevisbatch/Table}InternationalOrgCodeType
  class InternationalOrgCodeType < ::String
    ECA = new("ECA")
    ECE = new("ECE")
    ECLA = new("ECLA")
    ECOSOC = new("ECOSOC")
    EEC = new("EEC")
    ESCAP = new("ESCAP")
    FAO = new("FAO")
    IAEA = new("IAEA")
    ICAO = new("ICAO")
    ILO = new("ILO")
    IMF = new("IMF")
    IMO = new("IMO")
    ITU = new("ITU")
    NATO = new("NATO")
    OAS = new("OAS")
    OAU = new("OAU")
    OECD = new("OECD")
    OTHER = new("OTHER")
    PAHO = new("PAHO")
    UN = new("UN")
    UNCTAD = new("UNCTAD")
    UNDP = new("UNDP")
    UNESCO = new("UNESCO")
    UNICEF = new("UNICEF")
    UNIDO = new("UNIDO")
    WB = new("WB")
    WHO = new("WHO")
    WMO = new("WMO")
  end

# {http://www.ice.gov/xmlschema/sevisbatch/Table}EVPositionCodeType
  class EVPositionCodeType < ::String
    C_100 = new("100")
    C_110 = new("110")
    C_111 = new("111")
    C_112 = new("112")
    C_113 = new("113")
    C_114 = new("114")
    C_115 = new("115")
    C_116 = new("116")
    C_117 = new("117")
    C_118 = new("118")
    C_119 = new("119")
    C_120 = new("120")
    C_121 = new("121")
    C_122 = new("122")
    C_123 = new("123")
    C_124 = new("124")
    C_125 = new("125")
    C_126 = new("126")
    C_127 = new("127")
    C_128 = new("128")
    C_129 = new("129")
    C_130 = new("130")
    C_131 = new("131")
    C_132 = new("132")
    C_133 = new("133")
    C_134 = new("134")
    C_135 = new("135")
    C_136 = new("136")
    C_137 = new("137")
    C_138 = new("138")
    C_139 = new("139")
    C_140 = new("140")
    C_141 = new("141")
    C_142 = new("142")
    C_143 = new("143")
    C_200 = new("200")
    C_210 = new("210")
    C_211 = new("211")
    C_212 = new("212")
    C_213 = new("213")
    C_214 = new("214")
    C_215 = new("215")
    C_216 = new("216")
    C_217 = new("217")
    C_218 = new("218")
    C_219 = new("219")
    C_220 = new("220")
    C_221 = new("221")
    C_222 = new("222")
    C_223 = new("223")
    C_229 = new("229")
    C_230 = new("230")
    C_231 = new("231")
    C_239 = new("239")
    C_240 = new("240")
    C_241 = new("241")
    C_242 = new("242")
    C_249 = new("249")
    C_300 = new("300")
    C_310 = new("310")
    C_311 = new("311")
    C_312 = new("312")
    C_313 = new("313")
    C_314 = new("314")
    C_315 = new("315")
    C_319 = new("319")
    C_320 = new("320")
    C_321 = new("321")
    C_322 = new("322")
    C_323 = new("323")
    C_329 = new("329")
    C_330 = new("330")
    C_331 = new("331")
    C_332 = new("332")
    C_334 = new("334")
    C_335 = new("335")
    C_339 = new("339")
    C_340 = new("340")
    C_341 = new("341")
    C_342 = new("342")
    C_343 = new("343")
    C_344 = new("344")
    C_345 = new("345")
    C_349 = new("349")
    C_350 = new("350")
    C_351 = new("351")
    C_352 = new("352")
    C_353 = new("353")
    C_400 = new("400")
    C_410 = new("410")
    C_411 = new("411")
    C_412 = new("412")
    C_413 = new("413")
    C_414 = new("414")
    C_415 = new("415")
    C_419 = new("419")
    C_420 = new("420")
    C_421 = new("421")
    C_422 = new("422")
    C_429 = new("429")
    C_500 = new("500")
    C_510 = new("510")
    C_511 = new("511")
    C_512 = new("512")
    C_513 = new("513")
    C_520 = new("520")
    C_521 = new("521")
    C_522 = new("522")
    C_523 = new("523")
    C_529 = new("529")
    C_530 = new("530")
    C_531 = new("531")
    C_539 = new("539")
    C_540 = new("540")
    C_541 = new("541")
    C_542 = new("542")
    C_600 = new("600")
    C_610 = new("610")
    C_611 = new("611")
    C_612 = new("612")
    C_613 = new("613")
    C_619 = new("619")
    C_620 = new("620")
    C_621 = new("621")
    C_622 = new("622")
    C_623 = new("623")
    C_629 = new("629")
    C_630 = new("630")
    C_631 = new("631")
    C_639 = new("639")
    C_700 = new("700")
    C_710 = new("710")
    C_720 = new("720")
    C_730 = new("730")
    C_790 = new("790")
    C_800 = new("800")
    C_900 = new("900")
  end

# {http://www.ice.gov/xmlschema/sevisbatch/Table}MatriculationType
  class MatriculationType < ::String
    A = new("A")
    B = new("B")
    D = new("D")
    M = new("M")
  end

# {http://www.ice.gov/xmlschema/sevisbatch/Table}EVInfractionCodeType
  class EVInfractionCodeType < ::String
    EXT = new("EXT")
    OTH = new("OTH")
    REC = new("REC")
  end

# {http://www.ice.gov/xmlschema/sevisbatch/Table}EVTerminationReasonType
  class EVTerminationReasonType < ::String
    CONVIC = new("CONVIC")
    DISCIP = new("DISCIP")
    ENGEMP = new("ENGEMP")
    FALACT = new("FALACT")
    FALADD = new("FALADD")
    FALINS = new("FALINS")
    FALSTD = new("FALSTD")
    INVSUS = new("INVSUS")
    OTHER = new("OTHER")
    VIOEXV = new("VIOEXV")
    VIOSPN = new("VIOSPN")
  end

# {http://www.ice.gov/xmlschema/sevisbatch/Table}EVDepTerminationReasonType
  class EVDepTerminationReasonType < ::String
    C_01 = new("01")
    C_05 = new("05")
    C_09 = new("09")
  end

# {http://www.ice.gov/xmlschema/sevisbatch/Table}EVCompletionCodeType
  class EVCompletionCodeType < ::String
    APED = new("APED")
    CSHS = new("CSHS")
    DOE = new("DOE")
    IFS = new("IFS")
    MEHE = new("MEHE")
    MEHF = new("MEHF")
    OTHR = new("OTHR")
    POCE = new("POCE")
    WFP = new("WFP")
  end

# {http://www.ice.gov/xmlschema/sevisbatch/Table}DependentCompletionType
  class DependentCompletionType < ::String
    C_02 = new("02")
    C_04 = new("04")
    C_09 = new("09")
  end

# {http://www.ice.gov/xmlschema/sevisbatch/Table}StudentCreationReason
  class StudentCreationReason < ::String
    I = new("I")
    S = new("S")
  end

# {http://www.ice.gov/xmlschema/sevisbatch/Table}StudentCancelReasonType
  class StudentCancelReasonType < ::String
    C_01 = new("01")
    C_02 = new("02")
    C_03 = new("03")
    C_04 = new("04")
    C_05 = new("05")
    C_06 = new("06")
  end

# {http://www.ice.gov/xmlschema/sevisbatch/Table}DependentCancelReasonType
  class DependentCancelReasonType < ::String
    C_01 = new("01")
    C_02 = new("02")
  end

# {http://www.ice.gov/xmlschema/sevisbatch/Table}StatusCodeType
  class StatusCodeType < ::String
    ACTIVE = new("ACTIVE")
    INITIAL = new("INITIAL")
  end

# {http://www.ice.gov/xmlschema/sevisbatch/Table}EVPrintReasonType
  class EVPrintReasonType < ::String
    C_06 = new("06")
    C_08 = new("08")
  end

# {http://www.ice.gov/xmlschema/sevisbatch/Table}USBornReasonType
  class USBornReasonType < ::String
    C_01 = new("01")
    C_02 = new("02")
  end

# {http://www.ice.gov/xmlschema/sevisbatch/Table}USBornReasonNullableType
#  any of table:emptyStringType table:USBornReasonType
  class USBornReasonNullableType < ::String
  end

# {http://www.ice.gov/xmlschema/sevisbatch/Table}EVResidentialType
  class EVResidentialType < ::String
    BRD = new("BRD")
    HST = new("HST")
  end

# {http://www.ice.gov/xmlschema/sevisbatch/Table}SiteOfActivityType
  class SiteOfActivityType < ::String
    EXEMPT = new("EXEMPT")
    ONTRAVEL = new("ONTRAVEL")
    SEEKINGEMP = new("SEEKINGEMP")
    SOA = new("SOA")
  end

# {http://www.ice.gov/xmlschema/sevisbatch/Table}TippExemptProgram
  class TippExemptProgram < ::String
    IWT = new("IWT")
    KW = new("KW")
  end

# {http://www.ice.gov/xmlschema/sevisbatch/Table}AnnualRevenue
  class AnnualRevenue < ::String
    C_01 = new("01")
    C_02 = new("02")
    C_03 = new("03")
    C_04 = new("04")
  end

# {http://www.ice.gov/xmlschema/sevisbatch/Table}StipendFrequency
  class StipendFrequency < ::String
    C_01 = new("01")
    C_02 = new("02")
    C_03 = new("03")
    C_04 = new("04")
    C_05 = new("05")
  end

# {http://www.ice.gov/xmlschema/sevisbatch/Table}EVHostFamilyIndicator
  class EVHostFamilyIndicator < ::String
    ARRV = new("ARRV")
    PERM = new("PERM")
    TEMP = new("TEMP")
  end

# {http://www.ice.gov/xmlschema/sevisbatch/Table}CitizenshipStatusType
  class CitizenshipStatusType < ::String
    C_03 = new("03")
    C_04 = new("04")
  end

# {http://www.ice.gov/xmlschema/sevisbatch/Common}NameNullable
#  any of table:emptyStringType common:Name
  class NameNullable < ::String
  end

# {http://www.ice.gov/xmlschema/sevisbatch/Common}OrganizationIDType
#  any of common:ProgramNumberType common:SchoolCodeType
  class OrganizationIDType < ::String
  end

# {http://www.ice.gov/xmlschema/sevisbatch/Common}RemarksNullableType
#  any of table:emptyStringType common:RemarksType
  class RemarksNullableType < ::String
  end

# {http://www.ice.gov/xmlschema/sevisbatch/Common}RemarksNullable250Type
#  any of table:emptyStringType common:Remarks250Type
  class RemarksNullable250Type < ::String
  end

# {http://www.ice.gov/xmlschema/sevisbatch/Common}RemarksNullable300Type
#  any of table:emptyStringType common:Remarks300Type
  class RemarksNullable300Type < ::String
  end

# {}SEVISBatchCreateUpdateStudent
#   batchHeader - Sevis::BatchHeaderType
#   createStudent - Sevis::SEVISBatchCreateUpdateStudent::CreateStudent
#   updateStudent - Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent
#   xmlattr_userID - SOAP::SOAPString
  class SEVISBatchCreateUpdateStudent < SEVISStudentBatchType
    AttrUserID = XSD::QName.new(nil, "userID")

    # inner class for member: CreateStudent
    # {}CreateStudent
    class CreateStudent < ::Array

      # {}Student
      #   userDefinedA - (any)
      #   userDefinedB - (any)
      #   personalInfo - Sevis::SEVISBatchCreateUpdateStudent::CreateStudent::Student::PersonalInfo
      #   issueReason - Sevis::StudentCreationReason
      #   uSAddress - Sevis::USAddrDoctorType
      #   mailingAddress - Sevis::USAddrDoctorType
      #   foreignAddress - Sevis::ForeignAddrType
      #   educationalInfo - Sevis::EducationalInfoType
      #   financialInfo - Sevis::FinancialType
      #   createDependent - Sevis::SEVISBatchCreateUpdateStudent::CreateStudent::Student::CreateDependent
      #   remarks - (any)
      #   xmlattr_requestID - SOAP::SOAPString
      #   xmlattr_userID - SOAP::SOAPString
      #   xmlattr_printForm - SOAP::SOAPBoolean
      class Student < StudentPersonType
        AttrPrintForm = XSD::QName.new(nil, "printForm")
        AttrRequestID = XSD::QName.new(nil, "requestID")
        AttrUserID = XSD::QName.new(nil, "userID")

        # inner class for member: PersonalInfo
        # {}PersonalInfo
        #   fullName - Sevis::NameType
        #   birthDate - (any)
        #   gender - Sevis::GenderCodeType
        #   birthCountryCode - Sevis::BirthCntryCodeType
        #   citizenshipStatus - Sevis::CitizenshipStatusType
        #   citizenshipCountryCode - Sevis::CntryCodeWithoutType
        #   email - (any)
        #   commuter - (any)
        #   visaType - Sevis::StudentVisaCodeType
        #   telephone - Sevis::SEVISBatchCreateUpdateStudent::CreateStudent::Student::PersonalInfo::Telephone
        class PersonalInfo < NonImgBioTypeRequired

          # inner class for member: Telephone
          # {}Telephone
          #   telephoneExemptInd - Sevis::IndicatorTypeYN
          #   phone - Sevis::TelephoneType
          class Telephone
            attr_accessor :telephoneExemptInd
            attr_accessor :phone

            def initialize(telephoneExemptInd = nil, phone = nil)
              @telephoneExemptInd = telephoneExemptInd
              @phone = phone
            end
          end

          attr_accessor :fullName
          attr_accessor :birthDate
          attr_accessor :gender
          attr_accessor :birthCountryCode
          attr_accessor :citizenshipStatus
          attr_accessor :citizenshipCountryCode
          attr_accessor :email
          attr_accessor :commuter
          attr_accessor :visaType
          attr_accessor :telephone

          def initialize(fullName = nil, birthDate = nil, gender = nil, birthCountryCode = nil, citizenshipStatus = nil, citizenshipCountryCode = nil, email = nil, commuter = nil, visaType = nil, telephone = nil)
            @fullName = fullName
            @birthDate = birthDate
            @gender = gender
            @birthCountryCode = birthCountryCode
            @citizenshipStatus = citizenshipStatus
            @citizenshipCountryCode = citizenshipCountryCode
            @email = email
            @commuter = commuter
            @visaType = visaType
            @telephone = telephone
          end
        end

        # inner class for member: CreateDependent
        # {}CreateDependent
        class CreateDependent < ::Array

          # {}Dependent
          #   fullName - Sevis::NameType
          #   birthDate - (any)
          #   gender - Sevis::GenderCodeType
          #   birthCountryCode - Sevis::BirthCntryCodeType
          #   citizenshipStatus - Sevis::CitizenshipStatusType
          #   citizenshipCountryCode - Sevis::CntryCodeWithoutType
          #   email - (any)
          #   visaType - Sevis::DependentFMVisaType
          #   relationship - Sevis::DependentCodeType
          #   remarks - (any)
          #   userDefinedA - (any)
          #   userDefinedB - (any)
          class Dependent < NonImgBioType
            attr_accessor :fullName
            attr_accessor :birthDate
            attr_accessor :gender
            attr_accessor :birthCountryCode
            attr_accessor :citizenshipStatus
            attr_accessor :citizenshipCountryCode
            attr_accessor :email
            attr_accessor :visaType
            attr_accessor :relationship
            attr_accessor :remarks
            attr_accessor :userDefinedA
            attr_accessor :userDefinedB

            def initialize(fullName = nil, birthDate = nil, gender = nil, birthCountryCode = nil, citizenshipStatus = nil, citizenshipCountryCode = nil, email = nil, visaType = nil, relationship = nil, remarks = nil, userDefinedA = nil, userDefinedB = nil)
              @fullName = fullName
              @birthDate = birthDate
              @gender = gender
              @birthCountryCode = birthCountryCode
              @citizenshipStatus = citizenshipStatus
              @citizenshipCountryCode = citizenshipCountryCode
              @email = email
              @visaType = visaType
              @relationship = relationship
              @remarks = remarks
              @userDefinedA = userDefinedA
              @userDefinedB = userDefinedB
            end
          end
        end

        attr_accessor :userDefinedA
        attr_accessor :userDefinedB
        attr_accessor :personalInfo
        attr_accessor :issueReason
        attr_accessor :uSAddress
        attr_accessor :mailingAddress
        attr_accessor :foreignAddress
        attr_accessor :educationalInfo
        attr_accessor :financialInfo
        attr_accessor :createDependent
        attr_accessor :remarks

        def __xmlattr
          @__xmlattr ||= {}
        end

        def xmlattr_requestID
          __xmlattr[AttrRequestID]
        end

        def xmlattr_requestID=(value)
          __xmlattr[AttrRequestID] = value
        end

        def xmlattr_userID
          __xmlattr[AttrUserID]
        end

        def xmlattr_userID=(value)
          __xmlattr[AttrUserID] = value
        end

        def xmlattr_printForm
          __xmlattr[AttrPrintForm]
        end

        def xmlattr_printForm=(value)
          __xmlattr[AttrPrintForm] = value
        end

        def initialize(userDefinedA = nil, userDefinedB = nil, personalInfo = nil, issueReason = nil, uSAddress = nil, mailingAddress = nil, foreignAddress = nil, educationalInfo = nil, financialInfo = nil, createDependent = nil, remarks = nil)
          @userDefinedA = userDefinedA
          @userDefinedB = userDefinedB
          @personalInfo = personalInfo
          @issueReason = issueReason
          @uSAddress = uSAddress
          @mailingAddress = mailingAddress
          @foreignAddress = foreignAddress
          @educationalInfo = educationalInfo
          @financialInfo = financialInfo
          @createDependent = createDependent
          @remarks = remarks
          @__xmlattr = {}
        end
      end
    end

    # inner class for member: UpdateStudent
    # {}UpdateStudent
    class UpdateStudent < ::Array

      # {}Student
      #   userDefinedA - (any)
      #   userDefinedB - (any)
      #   authDropBelowFC - Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::AuthDropBelowFC
      #   cPTEmployment - Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::CPTEmployment
      #   dependent - Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::Dependent
      #   disciplinaryAction - Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::DisciplinaryAction
      #   educationLevel - Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::EducationLevel
      #   financialInfo - Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::FinancialInfo
      #   offCampusEmployment - Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::OffCampusEmployment
      #   oPTEmployment - Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::OPTEmployment
      #   oPTEmployer - Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::OPTEmployer
      #   personalInfo - Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::PersonalInfo
      #   program - Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::Program
      #   registration - Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::Registration
      #   reprint - Sevis::ReprintType
      #   request - Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::Request
      #   status - Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::Status
      #   xmlattr_sevisID - SOAP::SOAPString
      #   xmlattr_requestID - SOAP::SOAPString
      #   xmlattr_userID - SOAP::SOAPString
      #   xmlattr_statusCode - SOAP::SOAPString
      class Student
        AttrRequestID = XSD::QName.new(nil, "requestID")
        AttrSevisID = XSD::QName.new(nil, "sevisID")
        AttrStatusCode = XSD::QName.new(nil, "statusCode")
        AttrUserID = XSD::QName.new(nil, "userID")

        # inner class for member: AuthDropBelowFC
        # {}AuthDropBelowFC
        #   add - Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::AuthDropBelowFC::Add
        #   cancel - Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::AuthDropBelowFC::Cancel
        #   edit - Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::AuthDropBelowFC::Edit
        class AuthDropBelowFC

          # inner class for member: Add
          # {}Add
          #   reason - Sevis::DropBlwfullType
          #   startDate - (any)
          #   endDate - (any)
          #   remarks - (any)
          #   xmlattr_printForm - SOAP::SOAPBoolean
          class Add < AuthDropBelowType
            AttrPrintForm = XSD::QName.new(nil, "printForm")

            attr_accessor :reason
            attr_accessor :startDate
            attr_accessor :endDate
            attr_accessor :remarks

            def __xmlattr
              @__xmlattr ||= {}
            end

            def xmlattr_printForm
              __xmlattr[AttrPrintForm]
            end

            def xmlattr_printForm=(value)
              __xmlattr[AttrPrintForm] = value
            end

            def initialize(reason = nil, startDate = nil, endDate = nil, remarks = nil)
              @reason = reason
              @startDate = startDate
              @endDate = endDate
              @remarks = remarks
              @__xmlattr = {}
            end
          end

          # inner class for member: Cancel
          # {}Cancel
          #   reason - Sevis::DropBlwfullType
          #   startDate - (any)
          #   endDate - (any)
          #   xmlattr_printForm - SOAP::SOAPBoolean
          class Cancel
            AttrPrintForm = XSD::QName.new(nil, "printForm")

            attr_accessor :reason
            attr_accessor :startDate
            attr_accessor :endDate

            def __xmlattr
              @__xmlattr ||= {}
            end

            def xmlattr_printForm
              __xmlattr[AttrPrintForm]
            end

            def xmlattr_printForm=(value)
              __xmlattr[AttrPrintForm] = value
            end

            def initialize(reason = nil, startDate = nil, endDate = nil)
              @reason = reason
              @startDate = startDate
              @endDate = endDate
              @__xmlattr = {}
            end
          end

          # inner class for member: Edit
          # {}Edit
          #   reason - Sevis::DropBlwfullType
          #   startDate - (any)
          #   endDate - (any)
          #   remarks - (any)
          #   newReason - Sevis::DropBlwfullType
          #   newStartDate - (any)
          #   newEndDate - (any)
          #   xmlattr_printForm - SOAP::SOAPBoolean
          class Edit < AuthDropBelowType
            AttrPrintForm = XSD::QName.new(nil, "printForm")

            attr_accessor :reason
            attr_accessor :startDate
            attr_accessor :endDate
            attr_accessor :remarks
            attr_accessor :newReason
            attr_accessor :newStartDate
            attr_accessor :newEndDate

            def __xmlattr
              @__xmlattr ||= {}
            end

            def xmlattr_printForm
              __xmlattr[AttrPrintForm]
            end

            def xmlattr_printForm=(value)
              __xmlattr[AttrPrintForm] = value
            end

            def initialize(reason = nil, startDate = nil, endDate = nil, remarks = nil, newReason = nil, newStartDate = nil, newEndDate = nil)
              @reason = reason
              @startDate = startDate
              @endDate = endDate
              @remarks = remarks
              @newReason = newReason
              @newStartDate = newStartDate
              @newEndDate = newEndDate
              @__xmlattr = {}
            end
          end

          attr_accessor :add
          attr_accessor :cancel
          attr_accessor :edit

          def initialize(add = nil, cancel = nil, edit = nil)
            @add = add
            @cancel = cancel
            @edit = edit
          end
        end

        # inner class for member: CPTEmployment
        # {}CPTEmployment
        #   add - Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::CPTEmployment::Add
        #   cancel - Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::CPTEmployment::Cancel
        class CPTEmployment

          # inner class for member: Add
          # {}Add
          #   startDate - (any)
          #   endDate - (any)
          #   fullPartTimeIndicator - Sevis::EmploymentTimeType
          #   employerName - SOAP::SOAPString
          #   employerAddress - Sevis::USAddressType
          #   courseRelevance - (any)
          #   remarks - (any)
          #   xmlattr_printForm - SOAP::SOAPBoolean
          class Add < CPTEmploymentType
            AttrPrintForm = XSD::QName.new(nil, "printForm")

            attr_accessor :startDate
            attr_accessor :endDate
            attr_accessor :fullPartTimeIndicator
            attr_accessor :employerName
            attr_accessor :employerAddress
            attr_accessor :courseRelevance
            attr_accessor :remarks

            def __xmlattr
              @__xmlattr ||= {}
            end

            def xmlattr_printForm
              __xmlattr[AttrPrintForm]
            end

            def xmlattr_printForm=(value)
              __xmlattr[AttrPrintForm] = value
            end

            def initialize(startDate = nil, endDate = nil, fullPartTimeIndicator = nil, employerName = nil, employerAddress = nil, courseRelevance = nil, remarks = nil)
              @startDate = startDate
              @endDate = endDate
              @fullPartTimeIndicator = fullPartTimeIndicator
              @employerName = employerName
              @employerAddress = employerAddress
              @courseRelevance = courseRelevance
              @remarks = remarks
              @__xmlattr = {}
            end
          end

          # inner class for member: Cancel
          # {}Cancel
          #   startDate - (any)
          #   endDate - (any)
          #   fullPartTimeIndicator - Sevis::EmploymentTimeType
          #   employerName - SOAP::SOAPString
          #   xmlattr_printForm - SOAP::SOAPBoolean
          class Cancel < CPTEmploymentType
            AttrPrintForm = XSD::QName.new(nil, "printForm")

            attr_accessor :startDate
            attr_accessor :endDate
            attr_accessor :fullPartTimeIndicator
            attr_accessor :employerName

            def __xmlattr
              @__xmlattr ||= {}
            end

            def xmlattr_printForm
              __xmlattr[AttrPrintForm]
            end

            def xmlattr_printForm=(value)
              __xmlattr[AttrPrintForm] = value
            end

            def initialize(startDate = nil, endDate = nil, fullPartTimeIndicator = nil, employerName = nil)
              @startDate = startDate
              @endDate = endDate
              @fullPartTimeIndicator = fullPartTimeIndicator
              @employerName = employerName
              @__xmlattr = {}
            end
          end

          attr_accessor :add
          attr_accessor :cancel

          def initialize(add = nil, cancel = nil)
            @add = add
            @cancel = cancel
          end
        end

        # inner class for member: Dependent
        # {}Dependent
        #   userDefinedA - (any)
        #   userDefinedB - (any)
        #   add - Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::Dependent::Add
        #   cancel - Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::Dependent::Cancel
        #   edit - Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::Dependent::Edit
        #   reactivate - Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::Dependent::Reactivate
        #   reprint - Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::Dependent::Reprint
        #   terminate - Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::Dependent::Terminate
        class Dependent

          # inner class for member: Add
          # {}Add
          #   fullName - Sevis::NameType
          #   birthDate - (any)
          #   gender - Sevis::GenderCodeType
          #   birthCountryCode - Sevis::BirthCntryCodeType
          #   citizenshipStatus - Sevis::CitizenshipStatusType
          #   citizenshipCountryCode - Sevis::CntryCodeWithoutType
          #   email - (any)
          #   visaType - Sevis::DependentFMVisaType
          #   relationship - Sevis::DependentCodeType
          #   remarks - (any)
          #   xmlattr_printForm - SOAP::SOAPBoolean
          class Add < NonImgBioType
            AttrPrintForm = XSD::QName.new(nil, "printForm")

            attr_accessor :fullName
            attr_accessor :birthDate
            attr_accessor :gender
            attr_accessor :birthCountryCode
            attr_accessor :citizenshipStatus
            attr_accessor :citizenshipCountryCode
            attr_accessor :email
            attr_accessor :visaType
            attr_accessor :relationship
            attr_accessor :remarks

            def __xmlattr
              @__xmlattr ||= {}
            end

            def xmlattr_printForm
              __xmlattr[AttrPrintForm]
            end

            def xmlattr_printForm=(value)
              __xmlattr[AttrPrintForm] = value
            end

            def initialize(fullName = nil, birthDate = nil, gender = nil, birthCountryCode = nil, citizenshipStatus = nil, citizenshipCountryCode = nil, email = nil, visaType = nil, relationship = nil, remarks = nil)
              @fullName = fullName
              @birthDate = birthDate
              @gender = gender
              @birthCountryCode = birthCountryCode
              @citizenshipStatus = citizenshipStatus
              @citizenshipCountryCode = citizenshipCountryCode
              @email = email
              @visaType = visaType
              @relationship = relationship
              @remarks = remarks
              @__xmlattr = {}
            end
          end

          # inner class for member: Cancel
          # {}Cancel
          #   reason - Sevis::DependentCancelReasonType
          #   remarks - (any)
          #   xmlattr_dependentSevisID - SOAP::SOAPString
          class Cancel
            AttrDependentSevisID = XSD::QName.new(nil, "dependentSevisID")

            attr_accessor :reason
            attr_accessor :remarks

            def __xmlattr
              @__xmlattr ||= {}
            end

            def xmlattr_dependentSevisID
              __xmlattr[AttrDependentSevisID]
            end

            def xmlattr_dependentSevisID=(value)
              __xmlattr[AttrDependentSevisID] = value
            end

            def initialize(reason = nil, remarks = nil)
              @reason = reason
              @remarks = remarks
              @__xmlattr = {}
            end
          end

          # inner class for member: Edit
          # {}Edit
          #   fullName - Sevis::NameNullableType
          #   birthDate - (any)
          #   gender - Sevis::GenderCodeType
          #   birthCountryCode - Sevis::BirthCntryCodeType
          #   citizenshipStatus - Sevis::CitizenshipStatusType
          #   citizenshipCountryCode - (any)
          #   email - (any)
          #   relationship - Sevis::DependentCodeType
          #   remarks - (any)
          #   xmlattr_printForm - SOAP::SOAPBoolean
          #   xmlattr_dependentSevisID - SOAP::SOAPString
          class Edit
            AttrDependentSevisID = XSD::QName.new(nil, "dependentSevisID")
            AttrPrintForm = XSD::QName.new(nil, "printForm")

            attr_accessor :fullName
            attr_accessor :birthDate
            attr_accessor :gender
            attr_accessor :birthCountryCode
            attr_accessor :citizenshipStatus
            attr_accessor :citizenshipCountryCode
            attr_accessor :email
            attr_accessor :relationship
            attr_accessor :remarks

            def __xmlattr
              @__xmlattr ||= {}
            end

            def xmlattr_printForm
              __xmlattr[AttrPrintForm]
            end

            def xmlattr_printForm=(value)
              __xmlattr[AttrPrintForm] = value
            end

            def xmlattr_dependentSevisID
              __xmlattr[AttrDependentSevisID]
            end

            def xmlattr_dependentSevisID=(value)
              __xmlattr[AttrDependentSevisID] = value
            end

            def initialize(fullName = nil, birthDate = nil, gender = nil, birthCountryCode = nil, citizenshipStatus = nil, citizenshipCountryCode = nil, email = nil, relationship = nil, remarks = nil)
              @fullName = fullName
              @birthDate = birthDate
              @gender = gender
              @birthCountryCode = birthCountryCode
              @citizenshipStatus = citizenshipStatus
              @citizenshipCountryCode = citizenshipCountryCode
              @email = email
              @relationship = relationship
              @remarks = remarks
              @__xmlattr = {}
            end
          end

          # inner class for member: Reactivate
          # {}Reactivate
          #   xmlattr_printForm - SOAP::SOAPBoolean
          #   xmlattr_dependentSevisID - SOAP::SOAPString
          class Reactivate
            AttrDependentSevisID = XSD::QName.new(nil, "dependentSevisID")
            AttrPrintForm = XSD::QName.new(nil, "printForm")

            def __xmlattr
              @__xmlattr ||= {}
            end

            def xmlattr_printForm
              __xmlattr[AttrPrintForm]
            end

            def xmlattr_printForm=(value)
              __xmlattr[AttrPrintForm] = value
            end

            def xmlattr_dependentSevisID
              __xmlattr[AttrDependentSevisID]
            end

            def xmlattr_dependentSevisID=(value)
              __xmlattr[AttrDependentSevisID] = value
            end

            def initialize
              @__xmlattr = {}
            end
          end

          # inner class for member: Reprint
          # {}Reprint
          #   xmlattr_printForm - SOAP::SOAPBoolean
          #   xmlattr_dependentSevisID - SOAP::SOAPString
          class Reprint
            AttrDependentSevisID = XSD::QName.new(nil, "dependentSevisID")
            AttrPrintForm = XSD::QName.new(nil, "printForm")

            def __xmlattr
              @__xmlattr ||= {}
            end

            def xmlattr_printForm
              __xmlattr[AttrPrintForm]
            end

            def xmlattr_printForm=(value)
              __xmlattr[AttrPrintForm] = value
            end

            def xmlattr_dependentSevisID
              __xmlattr[AttrDependentSevisID]
            end

            def xmlattr_dependentSevisID=(value)
              __xmlattr[AttrDependentSevisID] = value
            end

            def initialize
              @__xmlattr = {}
            end
          end

          # inner class for member: Terminate
          # {}Terminate
          #   reason - Sevis::DependentTerminationReasonType
          #   otherRemarks - (any)
          #   remarks - (any)
          #   xmlattr_dependentSevisID - SOAP::SOAPString
          class Terminate
            AttrDependentSevisID = XSD::QName.new(nil, "dependentSevisID")

            attr_accessor :reason
            attr_accessor :otherRemarks
            attr_accessor :remarks

            def __xmlattr
              @__xmlattr ||= {}
            end

            def xmlattr_dependentSevisID
              __xmlattr[AttrDependentSevisID]
            end

            def xmlattr_dependentSevisID=(value)
              __xmlattr[AttrDependentSevisID] = value
            end

            def initialize(reason = nil, otherRemarks = nil, remarks = nil)
              @reason = reason
              @otherRemarks = otherRemarks
              @remarks = remarks
              @__xmlattr = {}
            end
          end

          attr_accessor :userDefinedA
          attr_accessor :userDefinedB
          attr_accessor :add
          attr_accessor :cancel
          attr_accessor :edit
          attr_accessor :reactivate
          attr_accessor :reprint
          attr_accessor :terminate

          def initialize(userDefinedA = nil, userDefinedB = nil, add = nil, cancel = nil, edit = nil, reactivate = nil, reprint = nil, terminate = nil)
            @userDefinedA = userDefinedA
            @userDefinedB = userDefinedB
            @add = add
            @cancel = cancel
            @edit = edit
            @reactivate = reactivate
            @reprint = reprint
            @terminate = terminate
          end
        end

        # inner class for member: DisciplinaryAction
        # {}DisciplinaryAction
        #   explanation - (any)
        class DisciplinaryAction
          attr_accessor :explanation

          def initialize(explanation = nil)
            @explanation = explanation
          end
        end

        # inner class for member: EducationLevel
        # {}EducationLevel
        #   cancel - Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::EducationLevel::Cancel
        #   change - Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::EducationLevel::Change
        class EducationLevel

          # inner class for member: Cancel
          # {}Cancel
          #   remarks - (any)
          class Cancel
            attr_accessor :remarks

            def initialize(remarks = nil)
              @remarks = remarks
            end
          end

          # inner class for member: Change
          # {}Change
          #   educationalInfo - Sevis::EducationalInfoType
          #   financialInfo - Sevis::FinancialType
          #   remarks - (any)
          #   xmlattr_printForm - SOAP::SOAPBoolean
          class Change
            AttrPrintForm = XSD::QName.new(nil, "printForm")

            attr_accessor :educationalInfo
            attr_accessor :financialInfo
            attr_accessor :remarks

            def __xmlattr
              @__xmlattr ||= {}
            end

            def xmlattr_printForm
              __xmlattr[AttrPrintForm]
            end

            def xmlattr_printForm=(value)
              __xmlattr[AttrPrintForm] = value
            end

            def initialize(educationalInfo = nil, financialInfo = nil, remarks = nil)
              @educationalInfo = educationalInfo
              @financialInfo = financialInfo
              @remarks = remarks
              @__xmlattr = {}
            end
          end

          attr_accessor :cancel
          attr_accessor :change

          def initialize(cancel = nil, change = nil)
            @cancel = cancel
            @change = change
          end
        end

        # inner class for member: FinancialInfo
        # {}FinancialInfo
        #   academicTerm - SOAP::SOAPString
        #   expense - Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::FinancialInfo::Expense
        #   funding - Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::FinancialInfo::Funding
        #   remarks - (any)
        #   xmlattr_printForm - SOAP::SOAPBoolean
        class FinancialInfo < FinancialNullableType
          AttrPrintForm = XSD::QName.new(nil, "printForm")

          # inner class for member: Expense
          # {}Expense
          #   tuition - (any)
          #   livingExpense - (any)
          #   dependentExp - (any)
          #   other - Sevis::FinancialAmountNullableType
          class Expense
            attr_accessor :tuition
            attr_accessor :livingExpense
            attr_accessor :dependentExp
            attr_accessor :other

            def initialize(tuition = nil, livingExpense = nil, dependentExp = nil, other = nil)
              @tuition = tuition
              @livingExpense = livingExpense
              @dependentExp = dependentExp
              @other = other
            end
          end

          # inner class for member: Funding
          # {}Funding
          #   personal - (any)
          #   school - Sevis::FinancialAmountNullableType
          #   other - Sevis::FinancialAmountNullableType
          #   employment - (any)
          class Funding
            attr_accessor :personal
            attr_accessor :school
            attr_accessor :other
            attr_accessor :employment

            def initialize(personal = nil, school = nil, other = nil, employment = nil)
              @personal = personal
              @school = school
              @other = other
              @employment = employment
            end
          end

          attr_accessor :academicTerm
          attr_accessor :expense
          attr_accessor :funding
          attr_accessor :remarks

          def __xmlattr
            @__xmlattr ||= {}
          end

          def xmlattr_printForm
            __xmlattr[AttrPrintForm]
          end

          def xmlattr_printForm=(value)
            __xmlattr[AttrPrintForm] = value
          end

          def initialize(academicTerm = nil, expense = nil, funding = nil, remarks = nil)
            @academicTerm = academicTerm
            @expense = expense
            @funding = funding
            @remarks = remarks
            @__xmlattr = {}
          end
        end

        # inner class for member: OffCampusEmployment
        # {}OffCampusEmployment
        #   add - Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::OffCampusEmployment::Add
        #   cancel - Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::OffCampusEmployment::Cancel
        #   edit - Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::OffCampusEmployment::Edit
        class OffCampusEmployment

          # inner class for member: Add
          # {}Add
          #   startDate - (any)
          #   endDate - (any)
          #   employmentType - Sevis::OffCampusEmploymentCodeType
          #   recommendation - (any)
          #   xmlattr_printForm - SOAP::SOAPBoolean
          class Add < OCEmploymentType
            AttrPrintForm = XSD::QName.new(nil, "printForm")

            attr_accessor :startDate
            attr_accessor :endDate
            attr_accessor :employmentType
            attr_accessor :recommendation

            def __xmlattr
              @__xmlattr ||= {}
            end

            def xmlattr_printForm
              __xmlattr[AttrPrintForm]
            end

            def xmlattr_printForm=(value)
              __xmlattr[AttrPrintForm] = value
            end

            def initialize(startDate = nil, endDate = nil, employmentType = nil, recommendation = nil)
              @startDate = startDate
              @endDate = endDate
              @employmentType = employmentType
              @recommendation = recommendation
              @__xmlattr = {}
            end
          end

          # inner class for member: Cancel
          # {}Cancel
          #   startDate - (any)
          #   endDate - (any)
          #   employmentType - Sevis::OffCampusEmploymentCodeType
          #   xmlattr_printForm - SOAP::SOAPBoolean
          class Cancel < OCEmploymentType
            AttrPrintForm = XSD::QName.new(nil, "printForm")

            attr_accessor :startDate
            attr_accessor :endDate
            attr_accessor :employmentType

            def __xmlattr
              @__xmlattr ||= {}
            end

            def xmlattr_printForm
              __xmlattr[AttrPrintForm]
            end

            def xmlattr_printForm=(value)
              __xmlattr[AttrPrintForm] = value
            end

            def initialize(startDate = nil, endDate = nil, employmentType = nil)
              @startDate = startDate
              @endDate = endDate
              @employmentType = employmentType
              @__xmlattr = {}
            end
          end

          # inner class for member: Edit
          # {}Edit
          #   startDate - (any)
          #   endDate - (any)
          #   employmentType - Sevis::OffCampusEmploymentCodeType
          #   newStartDate - (any)
          #   newEndDate - (any)
          #   newEmploymentType - Sevis::OffCampusEmploymentCodeType
          #   recommendation - (any)
          #   xmlattr_printForm - SOAP::SOAPBoolean
          class Edit < OCEmploymentType
            AttrPrintForm = XSD::QName.new(nil, "printForm")

            attr_accessor :startDate
            attr_accessor :endDate
            attr_accessor :employmentType
            attr_accessor :newStartDate
            attr_accessor :newEndDate
            attr_accessor :newEmploymentType
            attr_accessor :recommendation

            def __xmlattr
              @__xmlattr ||= {}
            end

            def xmlattr_printForm
              __xmlattr[AttrPrintForm]
            end

            def xmlattr_printForm=(value)
              __xmlattr[AttrPrintForm] = value
            end

            def initialize(startDate = nil, endDate = nil, employmentType = nil, newStartDate = nil, newEndDate = nil, newEmploymentType = nil, recommendation = nil)
              @startDate = startDate
              @endDate = endDate
              @employmentType = employmentType
              @newStartDate = newStartDate
              @newEndDate = newEndDate
              @newEmploymentType = newEmploymentType
              @recommendation = recommendation
              @__xmlattr = {}
            end
          end

          attr_accessor :add
          attr_accessor :cancel
          attr_accessor :edit

          def initialize(add = nil, cancel = nil, edit = nil)
            @add = add
            @cancel = cancel
            @edit = edit
          end
        end

        # inner class for member: OPTEmployment
        # {}OPTEmployment
        #   add - Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::OPTEmployment::Add
        #   cancel - Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::OPTEmployment::Cancel
        #   edit - Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::OPTEmployment::Edit
        #   extend - Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::OPTEmployment::Extend
        #   reportParticipation - Sevis::OPTEmploymentType
        class OPTEmployment

          # inner class for member: Add
          # {}Add
          #   startDate - (any)
          #   endDate - (any)
          #   fullPartTimeIndicator - Sevis::EmploymentTimeType
          #   academicYearMet - (any)
          #   completionType - Sevis::OPTCompletionType
          #   studentRemarks - (any)
          #   remarks - (any)
          #   employer - Sevis::Employer
          #   xmlattr_printForm - SOAP::SOAPBoolean
          class Add < OPTEmploymentType
            AttrPrintForm = XSD::QName.new(nil, "printForm")

            attr_accessor :startDate
            attr_accessor :endDate
            attr_accessor :fullPartTimeIndicator
            attr_accessor :academicYearMet
            attr_accessor :completionType
            attr_accessor :studentRemarks
            attr_accessor :remarks
            attr_accessor :employer

            def __xmlattr
              @__xmlattr ||= {}
            end

            def xmlattr_printForm
              __xmlattr[AttrPrintForm]
            end

            def xmlattr_printForm=(value)
              __xmlattr[AttrPrintForm] = value
            end

            def initialize(startDate = nil, endDate = nil, fullPartTimeIndicator = nil, academicYearMet = nil, completionType = nil, studentRemarks = nil, remarks = nil, employer = [])
              @startDate = startDate
              @endDate = endDate
              @fullPartTimeIndicator = fullPartTimeIndicator
              @academicYearMet = academicYearMet
              @completionType = completionType
              @studentRemarks = studentRemarks
              @remarks = remarks
              @employer = employer
              @__xmlattr = {}
            end
          end

          # inner class for member: Cancel
          # {}Cancel
          #   startDate - (any)
          #   endDate - (any)
          #   fullPartTimeIndicator - Sevis::EmploymentTimeType
          #   xmlattr_printForm - SOAP::SOAPBoolean
          class Cancel < OPTEmploymentType
            AttrPrintForm = XSD::QName.new(nil, "printForm")

            attr_accessor :startDate
            attr_accessor :endDate
            attr_accessor :fullPartTimeIndicator

            def __xmlattr
              @__xmlattr ||= {}
            end

            def xmlattr_printForm
              __xmlattr[AttrPrintForm]
            end

            def xmlattr_printForm=(value)
              __xmlattr[AttrPrintForm] = value
            end

            def initialize(startDate = nil, endDate = nil, fullPartTimeIndicator = nil)
              @startDate = startDate
              @endDate = endDate
              @fullPartTimeIndicator = fullPartTimeIndicator
              @__xmlattr = {}
            end
          end

          # inner class for member: Edit
          # {}Edit
          #   startDate - (any)
          #   endDate - (any)
          #   fullPartTimeIndicator - Sevis::EmploymentTimeType
          #   newFullPartTimeIndicator - Sevis::EmploymentTimeType
          #   academicYearMet - (any)
          #   studentRemarks - (any)
          #   remarks - (any)
          #   xmlattr_printForm - SOAP::SOAPBoolean
          class Edit < OPTEmploymentType
            AttrPrintForm = XSD::QName.new(nil, "printForm")

            attr_accessor :startDate
            attr_accessor :endDate
            attr_accessor :fullPartTimeIndicator
            attr_accessor :newFullPartTimeIndicator
            attr_accessor :academicYearMet
            attr_accessor :studentRemarks
            attr_accessor :remarks

            def __xmlattr
              @__xmlattr ||= {}
            end

            def xmlattr_printForm
              __xmlattr[AttrPrintForm]
            end

            def xmlattr_printForm=(value)
              __xmlattr[AttrPrintForm] = value
            end

            def initialize(startDate = nil, endDate = nil, fullPartTimeIndicator = nil, newFullPartTimeIndicator = nil, academicYearMet = nil, studentRemarks = nil, remarks = nil)
              @startDate = startDate
              @endDate = endDate
              @fullPartTimeIndicator = fullPartTimeIndicator
              @newFullPartTimeIndicator = newFullPartTimeIndicator
              @academicYearMet = academicYearMet
              @studentRemarks = studentRemarks
              @remarks = remarks
              @__xmlattr = {}
            end
          end

          # inner class for member: Extend
          # {}Extend
          #   startDate - (any)
          #   endDate - (any)
          #   fullPartTimeIndicator - Sevis::EmploymentTimeType
          #   employer - Sevis::Employer
          #   xmlattr_printForm - SOAP::SOAPBoolean
          class Extend < OPTEmploymentType
            AttrPrintForm = XSD::QName.new(nil, "printForm")

            attr_accessor :startDate
            attr_accessor :endDate
            attr_accessor :fullPartTimeIndicator
            attr_accessor :employer

            def __xmlattr
              @__xmlattr ||= {}
            end

            def xmlattr_printForm
              __xmlattr[AttrPrintForm]
            end

            def xmlattr_printForm=(value)
              __xmlattr[AttrPrintForm] = value
            end

            def initialize(startDate = nil, endDate = nil, fullPartTimeIndicator = nil, employer = [])
              @startDate = startDate
              @endDate = endDate
              @fullPartTimeIndicator = fullPartTimeIndicator
              @employer = employer
              @__xmlattr = {}
            end
          end

          attr_accessor :add
          attr_accessor :cancel
          attr_accessor :edit
          attr_accessor :extend
          attr_accessor :reportParticipation

          def initialize(add = nil, cancel = nil, edit = nil, extend = nil, reportParticipation = nil)
            @add = add
            @cancel = cancel
            @edit = edit
            @extend = extend
            @reportParticipation = reportParticipation
          end
        end

        # inner class for member: OPTEmployer
        # {}OPTEmployer
        #   add - Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::OPTEmployer::Add
        #   edit - Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::OPTEmployer::Edit
        class OPTEmployer

          # inner class for member: Add
          # {}Add
          #   employmentIdentifier - Sevis::EmploymentIdentifier
          #   employer - Sevis::Employer
          #   xmlattr_printForm - SOAP::SOAPBoolean
          class Add
            AttrPrintForm = XSD::QName.new(nil, "printForm")

            attr_accessor :employmentIdentifier
            attr_accessor :employer

            def __xmlattr
              @__xmlattr ||= {}
            end

            def xmlattr_printForm
              __xmlattr[AttrPrintForm]
            end

            def xmlattr_printForm=(value)
              __xmlattr[AttrPrintForm] = value
            end

            def initialize(employmentIdentifier = nil, employer = [])
              @employmentIdentifier = employmentIdentifier
              @employer = employer
              @__xmlattr = {}
            end
          end

          # inner class for member: Edit
          # {}Edit
          #   employmentIdentifier - Sevis::EmploymentIdentifier
          #   employerIdentifier - Sevis::EmployerIdentifier
          #   employer - Sevis::UpdateEmployerType
          #   xmlattr_printForm - SOAP::SOAPBoolean
          class Edit
            AttrPrintForm = XSD::QName.new(nil, "printForm")

            attr_accessor :employmentIdentifier
            attr_accessor :employerIdentifier
            attr_accessor :employer

            def __xmlattr
              @__xmlattr ||= {}
            end

            def xmlattr_printForm
              __xmlattr[AttrPrintForm]
            end

            def xmlattr_printForm=(value)
              __xmlattr[AttrPrintForm] = value
            end

            def initialize(employmentIdentifier = nil, employerIdentifier = nil, employer = nil)
              @employmentIdentifier = employmentIdentifier
              @employerIdentifier = employerIdentifier
              @employer = employer
              @__xmlattr = {}
            end
          end

          attr_accessor :add
          attr_accessor :edit

          def initialize(add = nil, edit = nil)
            @add = add
            @edit = edit
          end
        end

        # inner class for member: PersonalInfo
        # {}PersonalInfo
        #   fullName - Sevis::NameNullableType
        #   birthDate - (any)
        #   gender - Sevis::GenderCodeType
        #   birthCountryCode - Sevis::BirthCntryCodeType
        #   citizenshipStatus - Sevis::CitizenshipStatusType
        #   citizenshipCountryCode - Sevis::CntryCodeWithoutType
        #   email - (any)
        #   telephone - Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::PersonalInfo::Telephone
        #   commuter - (any)
        #   uSAddress - Sevis::USAddrDoctorType
        #   mailingAddress - Sevis::USAddrDoctorType
        #   foreignAddress - Sevis::ForeignAddrNullableType
        #   remarks - (any)
        #   xmlattr_printForm - SOAP::SOAPBoolean
        class PersonalInfo
          AttrPrintForm = XSD::QName.new(nil, "printForm")

          # inner class for member: Telephone
          # {}Telephone
          #   telephoneExemptInd - Sevis::IndicatorTypeYN
          #   phone - Sevis::TelephoneType
          class Telephone
            attr_accessor :telephoneExemptInd
            attr_accessor :phone

            def initialize(telephoneExemptInd = nil, phone = nil)
              @telephoneExemptInd = telephoneExemptInd
              @phone = phone
            end
          end

          attr_accessor :fullName
          attr_accessor :birthDate
          attr_accessor :gender
          attr_accessor :birthCountryCode
          attr_accessor :citizenshipStatus
          attr_accessor :citizenshipCountryCode
          attr_accessor :email
          attr_accessor :telephone
          attr_accessor :commuter
          attr_accessor :uSAddress
          attr_accessor :mailingAddress
          attr_accessor :foreignAddress
          attr_accessor :remarks

          def __xmlattr
            @__xmlattr ||= {}
          end

          def xmlattr_printForm
            __xmlattr[AttrPrintForm]
          end

          def xmlattr_printForm=(value)
            __xmlattr[AttrPrintForm] = value
          end

          def initialize(fullName = nil, birthDate = nil, gender = nil, birthCountryCode = nil, citizenshipStatus = nil, citizenshipCountryCode = nil, email = nil, telephone = nil, commuter = nil, uSAddress = nil, mailingAddress = nil, foreignAddress = nil, remarks = nil)
            @fullName = fullName
            @birthDate = birthDate
            @gender = gender
            @birthCountryCode = birthCountryCode
            @citizenshipStatus = citizenshipStatus
            @citizenshipCountryCode = citizenshipCountryCode
            @email = email
            @telephone = telephone
            @commuter = commuter
            @uSAddress = uSAddress
            @mailingAddress = mailingAddress
            @foreignAddress = foreignAddress
            @remarks = remarks
            @__xmlattr = {}
          end
        end

        # inner class for member: Program
        # {}Program
        #   cancelExtension - Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::Program::CancelExtension
        #   manageSessionDates - Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::Program::ManageSessionDates
        #   edit - Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::Program::Edit
        #   extension - Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::Program::Extension
        #   shorten - Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::Program::Shorten
        class Program

          # inner class for member: CancelExtension
          # {}CancelExtension
          #   newPrgEndDate - (any)
          #   remarks - (any)
          #   xmlattr_printForm - SOAP::SOAPBoolean
          class CancelExtension < ProgramExtendType
            AttrPrintForm = XSD::QName.new(nil, "printForm")

            attr_accessor :newPrgEndDate
            attr_accessor :remarks

            def __xmlattr
              @__xmlattr ||= {}
            end

            def xmlattr_printForm
              __xmlattr[AttrPrintForm]
            end

            def xmlattr_printForm=(value)
              __xmlattr[AttrPrintForm] = value
            end

            def initialize(newPrgEndDate = nil, remarks = nil)
              @newPrgEndDate = newPrgEndDate
              @remarks = remarks
              @__xmlattr = {}
            end
          end

          # inner class for member: ManageSessionDates
          # {}ManageSessionDates
          #   issDate - (any)
          #   newPrgStartDate - (any)
          #   newPrgEndDate - (any)
          #   remarks - (any)
          #   xmlattr_printForm - SOAP::SOAPBoolean
          class ManageSessionDates
            AttrPrintForm = XSD::QName.new(nil, "printForm")

            attr_accessor :issDate
            attr_accessor :newPrgStartDate
            attr_accessor :newPrgEndDate
            attr_accessor :remarks

            def __xmlattr
              @__xmlattr ||= {}
            end

            def xmlattr_printForm
              __xmlattr[AttrPrintForm]
            end

            def xmlattr_printForm=(value)
              __xmlattr[AttrPrintForm] = value
            end

            def initialize(issDate = nil, newPrgStartDate = nil, newPrgEndDate = nil, remarks = nil)
              @issDate = issDate
              @newPrgStartDate = newPrgStartDate
              @newPrgEndDate = newPrgEndDate
              @remarks = remarks
              @__xmlattr = {}
            end
          end

          # inner class for member: Edit
          # {}Edit
          #   level - Sevis::EduLevelCodeType
          #   majorCode1 - Sevis::ProgSubjectCodeType
          #   majorCode2 - (any)
          #   minor - (any)
          #   engProficiency - Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::Program::Edit::EngProficiency
          #   remarks - (any)
          #   xmlattr_printForm - SOAP::SOAPBoolean
          class Edit
            AttrPrintForm = XSD::QName.new(nil, "printForm")

            # inner class for member: EngProficiency
            # {}EngProficiency
            #   engRequired - (any)
            #   requirementsMet - (any)
            #   notRequiredReason - (any)
            class EngProficiency
              attr_accessor :engRequired
              attr_accessor :requirementsMet
              attr_accessor :notRequiredReason

              def initialize(engRequired = nil, requirementsMet = nil, notRequiredReason = nil)
                @engRequired = engRequired
                @requirementsMet = requirementsMet
                @notRequiredReason = notRequiredReason
              end
            end

            attr_accessor :level
            attr_accessor :majorCode1
            attr_accessor :majorCode2
            attr_accessor :minor
            attr_accessor :engProficiency
            attr_accessor :remarks

            def __xmlattr
              @__xmlattr ||= {}
            end

            def xmlattr_printForm
              __xmlattr[AttrPrintForm]
            end

            def xmlattr_printForm=(value)
              __xmlattr[AttrPrintForm] = value
            end

            def initialize(level = nil, majorCode1 = nil, majorCode2 = nil, minor = nil, engProficiency = nil, remarks = nil)
              @level = level
              @majorCode1 = majorCode1
              @majorCode2 = majorCode2
              @minor = minor
              @engProficiency = engProficiency
              @remarks = remarks
              @__xmlattr = {}
            end
          end

          # inner class for member: Extension
          # {}Extension
          #   newPrgEndDate - (any)
          #   remarks - (any)
          #   explanation - (any)
          #   xmlattr_printForm - SOAP::SOAPBoolean
          class Extension < ProgramExtendType
            AttrPrintForm = XSD::QName.new(nil, "printForm")

            attr_accessor :newPrgEndDate
            attr_accessor :remarks
            attr_accessor :explanation

            def __xmlattr
              @__xmlattr ||= {}
            end

            def xmlattr_printForm
              __xmlattr[AttrPrintForm]
            end

            def xmlattr_printForm=(value)
              __xmlattr[AttrPrintForm] = value
            end

            def initialize(newPrgEndDate = nil, remarks = nil, explanation = nil)
              @newPrgEndDate = newPrgEndDate
              @remarks = remarks
              @explanation = explanation
              @__xmlattr = {}
            end
          end

          # inner class for member: Shorten
          # {}Shorten
          #   newPrgEndDate - (any)
          #   remarks - (any)
          #   xmlattr_printForm - SOAP::SOAPBoolean
          class Shorten < ProgramExtendType
            AttrPrintForm = XSD::QName.new(nil, "printForm")

            attr_accessor :newPrgEndDate
            attr_accessor :remarks

            def __xmlattr
              @__xmlattr ||= {}
            end

            def xmlattr_printForm
              __xmlattr[AttrPrintForm]
            end

            def xmlattr_printForm=(value)
              __xmlattr[AttrPrintForm] = value
            end

            def initialize(newPrgEndDate = nil, remarks = nil)
              @newPrgEndDate = newPrgEndDate
              @remarks = remarks
              @__xmlattr = {}
            end
          end

          attr_accessor :cancelExtension
          attr_accessor :manageSessionDates
          attr_accessor :edit
          attr_accessor :extension
          attr_accessor :shorten

          def initialize(cancelExtension = nil, manageSessionDates = nil, edit = nil, extension = nil, shorten = nil)
            @cancelExtension = cancelExtension
            @manageSessionDates = manageSessionDates
            @edit = edit
            @extension = extension
            @shorten = shorten
          end
        end

        # inner class for member: Registration
        # {}Registration
        #   lastSession - (any)
        #   currentSessionStartDate - (any)
        #   currentSessionEndDate - (any)
        #   nextSessionStartDate - (any)
        #   studyResearchAbroad - (any)
        #   thesisDissertation - (any)
        #   email - (any)
        #   telephone - Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::Registration::Telephone
        #   commuter - (any)
        #   uSAddress - Sevis::USAddrDoctorType
        #   foreignAddress - Sevis::ForeignAddrNullableType
        #   remarks - (any)
        #   xmlattr_printForm - SOAP::SOAPBoolean
        class Registration
          AttrPrintForm = XSD::QName.new(nil, "printForm")

          # inner class for member: Telephone
          # {}Telephone
          #   telephoneExemptInd - Sevis::IndicatorTypeYN
          #   phone - Sevis::TelephoneType
          class Telephone
            attr_accessor :telephoneExemptInd
            attr_accessor :phone

            def initialize(telephoneExemptInd = nil, phone = nil)
              @telephoneExemptInd = telephoneExemptInd
              @phone = phone
            end
          end

          attr_accessor :lastSession
          attr_accessor :currentSessionStartDate
          attr_accessor :currentSessionEndDate
          attr_accessor :nextSessionStartDate
          attr_accessor :studyResearchAbroad
          attr_accessor :thesisDissertation
          attr_accessor :email
          attr_accessor :telephone
          attr_accessor :commuter
          attr_accessor :uSAddress
          attr_accessor :foreignAddress
          attr_accessor :remarks

          def __xmlattr
            @__xmlattr ||= {}
          end

          def xmlattr_printForm
            __xmlattr[AttrPrintForm]
          end

          def xmlattr_printForm=(value)
            __xmlattr[AttrPrintForm] = value
          end

          def initialize(lastSession = nil, currentSessionStartDate = nil, currentSessionEndDate = nil, nextSessionStartDate = nil, studyResearchAbroad = nil, thesisDissertation = nil, email = nil, telephone = nil, commuter = nil, uSAddress = nil, foreignAddress = nil, remarks = nil)
            @lastSession = lastSession
            @currentSessionStartDate = currentSessionStartDate
            @currentSessionEndDate = currentSessionEndDate
            @nextSessionStartDate = nextSessionStartDate
            @studyResearchAbroad = studyResearchAbroad
            @thesisDissertation = thesisDissertation
            @email = email
            @telephone = telephone
            @commuter = commuter
            @uSAddress = uSAddress
            @foreignAddress = foreignAddress
            @remarks = remarks
            @__xmlattr = {}
          end
        end

        # inner class for member: Request
        # {}Request
        #   capGapExtension - Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::Request::CapGapExtension
        class Request

          # inner class for member: CapGapExtension
          # {}CapGapExtension
          #   status - Sevis::CapGapExtensionType
          #   xmlattr_printForm - SOAP::SOAPBoolean
          class CapGapExtension
            AttrPrintForm = XSD::QName.new(nil, "printForm")

            attr_accessor :status

            def __xmlattr
              @__xmlattr ||= {}
            end

            def xmlattr_printForm
              __xmlattr[AttrPrintForm]
            end

            def xmlattr_printForm=(value)
              __xmlattr[AttrPrintForm] = value
            end

            def initialize(status = nil)
              @status = status
              @__xmlattr = {}
            end
          end

          attr_accessor :capGapExtension

          def initialize(capGapExtension = nil)
            @capGapExtension = capGapExtension
          end
        end

        # inner class for member: Status
        # {}Status
        #   cancel - Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::Status::Cancel
        #   complete - Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::Status::Complete
        #   terminate - Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::Status::Terminate
        #   verify - Sevis::EmptyType
        class Status

          # inner class for member: Cancel
          # {}Cancel
          #   reason - Sevis::StudentCancelReasonType
          #   remarks - (any)
          class Cancel
            attr_accessor :reason
            attr_accessor :remarks

            def initialize(reason = nil, remarks = nil)
              @reason = reason
              @remarks = remarks
            end
          end

          # inner class for member: Complete
          # {}Complete
          #   remarks - (any)
          class Complete
            attr_accessor :remarks

            def initialize(remarks = nil)
              @remarks = remarks
            end
          end

          # inner class for member: Terminate
          # {}Terminate
          #   reason - Sevis::StudentTerminationReasonType
          #   otherRemarks - (any)
          #   remarks - (any)
          class Terminate
            attr_accessor :reason
            attr_accessor :otherRemarks
            attr_accessor :remarks

            def initialize(reason = nil, otherRemarks = nil, remarks = nil)
              @reason = reason
              @otherRemarks = otherRemarks
              @remarks = remarks
            end
          end

          attr_accessor :cancel
          attr_accessor :complete
          attr_accessor :terminate
          attr_accessor :verify

          def initialize(cancel = nil, complete = nil, terminate = nil, verify = nil)
            @cancel = cancel
            @complete = complete
            @terminate = terminate
            @verify = verify
          end
        end

        attr_accessor :userDefinedA
        attr_accessor :userDefinedB
        attr_accessor :authDropBelowFC
        attr_accessor :cPTEmployment
        attr_accessor :dependent
        attr_accessor :disciplinaryAction
        attr_accessor :educationLevel
        attr_accessor :financialInfo
        attr_accessor :offCampusEmployment
        attr_accessor :oPTEmployment
        attr_accessor :oPTEmployer
        attr_accessor :personalInfo
        attr_accessor :program
        attr_accessor :registration
        attr_accessor :reprint
        attr_accessor :request
        attr_accessor :status

        def __xmlattr
          @__xmlattr ||= {}
        end

        def xmlattr_sevisID
          __xmlattr[AttrSevisID]
        end

        def xmlattr_sevisID=(value)
          __xmlattr[AttrSevisID] = value
        end

        def xmlattr_requestID
          __xmlattr[AttrRequestID]
        end

        def xmlattr_requestID=(value)
          __xmlattr[AttrRequestID] = value
        end

        def xmlattr_userID
          __xmlattr[AttrUserID]
        end

        def xmlattr_userID=(value)
          __xmlattr[AttrUserID] = value
        end

        def xmlattr_statusCode
          __xmlattr[AttrStatusCode]
        end

        def xmlattr_statusCode=(value)
          __xmlattr[AttrStatusCode] = value
        end

        def initialize(userDefinedA = nil, userDefinedB = nil, authDropBelowFC = nil, cPTEmployment = nil, dependent = nil, disciplinaryAction = nil, educationLevel = nil, financialInfo = nil, offCampusEmployment = nil, oPTEmployment = nil, oPTEmployer = nil, personalInfo = nil, program = nil, registration = nil, reprint = nil, request = nil, status = nil)
          @userDefinedA = userDefinedA
          @userDefinedB = userDefinedB
          @authDropBelowFC = authDropBelowFC
          @cPTEmployment = cPTEmployment
          @dependent = dependent
          @disciplinaryAction = disciplinaryAction
          @educationLevel = educationLevel
          @financialInfo = financialInfo
          @offCampusEmployment = offCampusEmployment
          @oPTEmployment = oPTEmployment
          @oPTEmployer = oPTEmployer
          @personalInfo = personalInfo
          @program = program
          @registration = registration
          @reprint = reprint
          @request = request
          @status = status
          @__xmlattr = {}
        end
      end
    end

    attr_accessor :batchHeader
    attr_accessor :createStudent
    attr_accessor :updateStudent

    def __xmlattr
      @__xmlattr ||= {}
    end

    def xmlattr_userID
      __xmlattr[AttrUserID]
    end

    def xmlattr_userID=(value)
      __xmlattr[AttrUserID] = value
    end

    def initialize(batchHeader = nil, createStudent = nil, updateStudent = nil)
      @batchHeader = batchHeader
      @createStudent = createStudent
      @updateStudent = updateStudent
      @__xmlattr = {}
    end
  end


end
