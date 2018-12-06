# encoding: UTF-8
require 'xsd/mapping'
require 'student.rb'

module Sevis

  module StudentMappingRegistry
    NsCommon = "http://www.ice.gov/xmlschema/sevisbatch/Common"
    NsTable = "http://www.ice.gov/xmlschema/sevisbatch/Table"
    Registry = ::SOAP::Mapping::LiteralRegistry.new

    Registry.register(
        :class => Sevis::AuthDropBelowType,
        :schema_type => XSD::QName.new(nil, "AuthDropBelowType"),
        :schema_element => [
            ["reason", ["Sevis::DropBlwfullType", XSD::QName.new(nil, "Reason")]],
            ["startDate", [nil, XSD::QName.new(nil, "StartDate")]],
            ["endDate", [nil, XSD::QName.new(nil, "EndDate")]],
            ["remarks", [nil, XSD::QName.new(nil, "Remarks")], [0, 1]]
        ]
    )

    Registry.register(
        :class => Sevis::CPTEmploymentType,
        :schema_type => XSD::QName.new(nil, "CPTEmploymentType"),
        :schema_element => [
            ["startDate", [nil, XSD::QName.new(nil, "StartDate")]],
            ["endDate", [nil, XSD::QName.new(nil, "EndDate")]],
            ["fullPartTimeIndicator", ["Sevis::EmploymentTimeType", XSD::QName.new(nil, "FullPartTimeIndicator")]],
            ["employerName", ["SOAP::SOAPString", XSD::QName.new(nil, "EmployerName")]]
        ]
    )

    Registry.register(
        :class => Sevis::EducationalInfoType,
        :schema_type => XSD::QName.new(nil, "EducationalInfoType"),
        :schema_element => [
            ["eduLevel", ["Sevis::EducationalInfoType::EduLevel", XSD::QName.new(nil, "EduLevel")]],
            ["majorCode1", ["Sevis::ProgSubjectCodeType", XSD::QName.new(nil, "MajorCode1")]],
            ["majorCode2", [nil, XSD::QName.new(nil, "MajorCode2")], [0, 1]],
            ["minor", [nil, XSD::QName.new(nil, "Minor")], [0, 1]],
            ["issDate", [nil, XSD::QName.new(nil, "IssDate")]],
            ["prgStartDate", [nil, XSD::QName.new(nil, "PrgStartDate")]],
            ["prgEndDate", [nil, XSD::QName.new(nil, "PrgEndDate")]],
            ["engProficiency", ["Sevis::EducationalInfoType::EngProficiency", XSD::QName.new(nil, "EngProficiency")]]
        ]
    )

    Registry.register(
        :class => Sevis::EducationalInfoType::EduLevel,
        :schema_name => XSD::QName.new(nil, "EduLevel"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["level", ["Sevis::EduLevelCodeType", XSD::QName.new(nil, "Level")]],
            ["otherRemarks", [nil, XSD::QName.new(nil, "OtherRemarks")], [0, 1]]
        ]
    )

    Registry.register(
        :class => Sevis::EducationalInfoType::EngProficiency,
        :schema_name => XSD::QName.new(nil, "EngProficiency"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["engRequired", [nil, XSD::QName.new(nil, "EngRequired")]],
            ["requirementsMet", [nil, XSD::QName.new(nil, "RequirementsMet")], [0, 1]],
            ["notRequiredReason", [nil, XSD::QName.new(nil, "NotRequiredReason")], [0, 1]]
        ]
    )

    Registry.register(
        :class => Sevis::FinancialAmountType,
        :schema_type => XSD::QName.new(nil, "FinancialAmountType"),
        :schema_element => [
            ["amount", [nil, XSD::QName.new(nil, "Amount")]],
            ["remarks", [nil, XSD::QName.new(nil, "Remarks")]]
        ]
    )

    Registry.register(
        :class => Sevis::FinancialAmountNullableType,
        :schema_type => XSD::QName.new(nil, "FinancialAmountNullableType"),
        :schema_element => [
            ["amount", [nil, XSD::QName.new(nil, "Amount")], [0, 1]],
            ["remarks", [nil, XSD::QName.new(nil, "Remarks")], [0, 1]]
        ]
    )

    Registry.register(
        :class => Sevis::FinancialType,
        :schema_type => XSD::QName.new(nil, "FinancialType"),
        :schema_element => [
            ["academicTerm", ["SOAP::SOAPString", XSD::QName.new(nil, "AcademicTerm")]],
            ["expense", ["Sevis::FinancialType::Expense", XSD::QName.new(nil, "Expense")]],
            ["funding", ["Sevis::FinancialType::Funding", XSD::QName.new(nil, "Funding")]]
        ]
    )

    Registry.register(
        :class => Sevis::FinancialType::Expense,
        :schema_name => XSD::QName.new(nil, "Expense"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["tuition", [nil, XSD::QName.new(nil, "Tuition")]],
            ["livingExpense", [nil, XSD::QName.new(nil, "LivingExpense")]],
            ["dependentExp", [nil, XSD::QName.new(nil, "DependentExp")], [0, 1]],
            ["other", ["Sevis::FinancialAmountType", XSD::QName.new(nil, "Other")], [0, 1]]
        ]
    )

    Registry.register(
        :class => Sevis::FinancialType::Funding,
        :schema_name => XSD::QName.new(nil, "Funding"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["personal", [nil, XSD::QName.new(nil, "Personal")]],
            ["school", ["Sevis::FinancialAmountType", XSD::QName.new(nil, "School")], [0, 1]],
            ["other", ["Sevis::FinancialAmountType", XSD::QName.new(nil, "Other")], [0, 1]],
            ["employment", [nil, XSD::QName.new(nil, "Employment")], [0, 1]]
        ]
    )

    Registry.register(
        :class => Sevis::FinancialNullableType,
        :schema_type => XSD::QName.new(nil, "FinancialNullableType"),
        :schema_element => [
            ["academicTerm", ["SOAP::SOAPString", XSD::QName.new(nil, "AcademicTerm")], [0, 1]],
            ["expense", ["Sevis::FinancialNullableType::Expense", XSD::QName.new(nil, "Expense")], [0, 1]],
            ["funding", ["Sevis::FinancialNullableType::Funding", XSD::QName.new(nil, "Funding")], [0, 1]]
        ],
        :schema_attribute => {
            XSD::QName.new(nil, "printForm") => "SOAP::SOAPBoolean"
        }
    )

    Registry.register(
        :class => Sevis::FinancialNullableType::Expense,
        :schema_name => XSD::QName.new(nil, "Expense"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["tuition", [nil, XSD::QName.new(nil, "Tuition")], [0, 1]],
            ["livingExpense", [nil, XSD::QName.new(nil, "LivingExpense")], [0, 1]],
            ["dependentExp", [nil, XSD::QName.new(nil, "DependentExp")], [0, 1]],
            ["other", ["Sevis::FinancialAmountNullableType", XSD::QName.new(nil, "Other")], [0, 1]]
        ]
    )

    Registry.register(
        :class => Sevis::FinancialNullableType::Funding,
        :schema_name => XSD::QName.new(nil, "Funding"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["personal", [nil, XSD::QName.new(nil, "Personal")], [0, 1]],
            ["school", ["Sevis::FinancialAmountNullableType", XSD::QName.new(nil, "School")], [0, 1]],
            ["other", ["Sevis::FinancialAmountNullableType", XSD::QName.new(nil, "Other")], [0, 1]],
            ["employment", [nil, XSD::QName.new(nil, "Employment")], [0, 1]]
        ]
    )

    Registry.register(
        :class => Sevis::NonImgBioType,
        :schema_type => XSD::QName.new(nil, "NonImgBioType"),
        :schema_element => [
            ["fullName", ["Sevis::NameType", XSD::QName.new(nil, "FullName")]],
            ["birthDate", [nil, XSD::QName.new(nil, "BirthDate")]],
            ["gender", ["Sevis::GenderCodeType", XSD::QName.new(nil, "Gender")]],
            ["birthCountryCode", ["Sevis::BirthCntryCodeType", XSD::QName.new(nil, "BirthCountryCode")]],
            ["citizenshipStatus", ["Sevis::CitizenshipStatusType", XSD::QName.new(nil, "CitizenshipStatus")], [0, 1]],
            ["citizenshipCountryCode", ["Sevis::CntryCodeWithoutType", XSD::QName.new(nil, "CitizenshipCountryCode")]]
        ]
    )

    Registry.register(
        :class => Sevis::NonImgBioTypeRequired,
        :schema_type => XSD::QName.new(nil, "NonImgBioTypeRequired"),
        :schema_element => [
            ["fullName", ["Sevis::NameType", XSD::QName.new(nil, "FullName")]],
            ["birthDate", [nil, XSD::QName.new(nil, "BirthDate")]],
            ["gender", ["Sevis::GenderCodeType", XSD::QName.new(nil, "Gender")]],
            ["birthCountryCode", ["Sevis::BirthCntryCodeType", XSD::QName.new(nil, "BirthCountryCode")]],
            ["citizenshipStatus", ["Sevis::CitizenshipStatusType", XSD::QName.new(nil, "CitizenshipStatus")], [0, 1]],
            ["citizenshipCountryCode", ["Sevis::CntryCodeWithoutType", XSD::QName.new(nil, "CitizenshipCountryCode")]]
        ]
    )

    Registry.register(
        :class => Sevis::OCEmploymentType,
        :schema_type => XSD::QName.new(nil, "OCEmploymentType"),
        :schema_element => [
            ["startDate", [nil, XSD::QName.new(nil, "StartDate")]],
            ["endDate", [nil, XSD::QName.new(nil, "EndDate")]],
            ["employmentType", ["Sevis::OffCampusEmploymentCodeType", XSD::QName.new(nil, "EmploymentType")]]
        ]
    )

    Registry.register(
        :class => Sevis::Employer,
        :schema_type => XSD::QName.new(nil, "Employer"),
        :schema_element => [
            ["employerName", ["SOAP::SOAPString", XSD::QName.new(nil, "EmployerName")], [0, 1]],
            ["employerAddress", ["Sevis::USAddrDoctorType", XSD::QName.new(nil, "EmployerAddress")]],
            ["employerEIN", [nil, XSD::QName.new(nil, "EmployerEIN")], [0, 1]],
            ["selfEmployed", [nil, XSD::QName.new(nil, "SelfEmployed")], [0, 1]],
            ["courseRelevance", [nil, XSD::QName.new(nil, "CourseRelevance")]],
            ["fullPartTimeIndicator", ["Sevis::EmploymentTimeType", XSD::QName.new(nil, "FullPartTimeIndicator")]],
            ["startDate", [nil, XSD::QName.new(nil, "StartDate")]],
            ["endDate", [nil, XSD::QName.new(nil, "EndDate")], [0, 1]],
            ["supervisorFirstName", ["SOAP::SOAPString", XSD::QName.new(nil, "SupervisorFirstName")], [0, 1]],
            ["supervisorLastName", ["SOAP::SOAPString", XSD::QName.new(nil, "SupervisorLastName")], [0, 1]],
            ["supervisorPhone", [nil, XSD::QName.new(nil, "SupervisorPhone")], [0, 1]],
            ["supervisorPhoneExt", [nil, XSD::QName.new(nil, "SupervisorPhoneExt")], [0, 1]],
            ["supervisorEmail", [nil, XSD::QName.new(nil, "SupervisorEmail")], [0, 1]],
            ["studentsJobTitle", ["SOAP::SOAPString", XSD::QName.new(nil, "StudentsJobTitle")], [0, 1]]
        ]
    )

    Registry.register(
        :class => Sevis::EmployerIdentifier,
        :schema_type => XSD::QName.new(nil, "EmployerIdentifier"),
        :schema_element => [
            ["employerName", ["SOAP::SOAPString", XSD::QName.new(nil, "EmployerName")]],
            ["startDate", [nil, XSD::QName.new(nil, "StartDate")]]
        ]
    )

    Registry.register(
        :class => Sevis::OPTEmploymentType,
        :schema_type => XSD::QName.new(nil, "OPTEmploymentType"),
        :schema_element => [
            ["startDate", [nil, XSD::QName.new(nil, "StartDate")]],
            ["endDate", [nil, XSD::QName.new(nil, "EndDate")]],
            ["fullPartTimeIndicator", ["Sevis::EmploymentTimeType", XSD::QName.new(nil, "FullPartTimeIndicator")]]
        ],
        :schema_attribute => {
            XSD::QName.new(nil, "printForm") => "SOAP::SOAPBoolean"
        }
    )

    Registry.register(
        :class => Sevis::EmploymentIdentifier,
        :schema_type => XSD::QName.new(nil, "EmploymentIdentifier"),
        :schema_element => [
            ["startDate", [nil, XSD::QName.new(nil, "StartDate")]],
            ["endDate", [nil, XSD::QName.new(nil, "EndDate")]]
        ]
    )

    Registry.register(
        :class => Sevis::ProgramExtendType,
        :schema_type => XSD::QName.new(nil, "ProgramExtendType"),
        :schema_element => [
            ["newPrgEndDate", [nil, XSD::QName.new(nil, "NewPrgEndDate")]],
            ["remarks", [nil, XSD::QName.new(nil, "Remarks")], [0, 1]]
        ]
    )

    Registry.register(
        :class => Sevis::ReprintType,
        :schema_type => XSD::QName.new(nil, "ReprintType"),
        :schema_element => [
            ["reason", ["Sevis::StudentReprintRequestReasonType", XSD::QName.new(nil, "Reason")]],
            ["remarks", [nil, XSD::QName.new(nil, "Remarks")], [0, 1]]
        ],
        :schema_attribute => {
            XSD::QName.new(nil, "printForm") => "SOAP::SOAPBoolean"
        }
    )

    Registry.register(
        :class => Sevis::SEVISStudentBatchType,
        :schema_type => XSD::QName.new(nil, "SEVISStudentBatchType"),
        :schema_element => [
            ["batchHeader", ["Sevis::BatchHeaderType", XSD::QName.new(nil, "BatchHeader")]],
            ["createStudent", ["Sevis::SEVISStudentBatchType::CreateStudent", XSD::QName.new(nil, "CreateStudent")], [0, 1]],
            ["updateStudent", ["Sevis::SEVISStudentBatchType::UpdateStudent", XSD::QName.new(nil, "UpdateStudent")], [0, 1]]
        ]
    )

    Registry.register(
        :class => Sevis::SEVISStudentBatchType::CreateStudent::Student::PersonalInfo::Telephone,
        :schema_name => XSD::QName.new(nil, "Telephone"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["telephoneExemptInd", ["Sevis::IndicatorTypeYN", XSD::QName.new(nil, "TelephoneExemptInd")]],
            ["phone", ["Sevis::TelephoneType", XSD::QName.new(nil, "Phone")], [0, 1]]
        ]
    )

    Registry.register(
        :class => Sevis::SEVISStudentBatchType::CreateStudent::Student::PersonalInfo,
        :schema_name => XSD::QName.new(nil, "PersonalInfo"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["fullName", ["Sevis::NameType", XSD::QName.new(nil, "FullName")]],
            ["birthDate", [nil, XSD::QName.new(nil, "BirthDate")]],
            ["gender", ["Sevis::GenderCodeType", XSD::QName.new(nil, "Gender")]],
            ["birthCountryCode", ["Sevis::BirthCntryCodeType", XSD::QName.new(nil, "BirthCountryCode")]],
            ["citizenshipStatus", ["Sevis::CitizenshipStatusType", XSD::QName.new(nil, "CitizenshipStatus")], [0, 1]],
            ["citizenshipCountryCode", ["Sevis::CntryCodeWithoutType", XSD::QName.new(nil, "CitizenshipCountryCode")]],
            ["email", [nil, XSD::QName.new(nil, "Email")], [0, 1]],
            ["commuter", [nil, XSD::QName.new(nil, "Commuter")], [0, 1]],
            ["visaType", ["Sevis::StudentVisaCodeType", XSD::QName.new(nil, "VisaType")]],
            ["telephone", ["Sevis::SEVISStudentBatchType::CreateStudent::Student::PersonalInfo::Telephone", XSD::QName.new(nil, "Telephone")], [0, 1]]
        ]
    )

    Registry.register(
        :class => Sevis::SEVISStudentBatchType::CreateStudent::Student::CreateDependent::Dependent,
        :schema_name => XSD::QName.new(nil, "Dependent"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["fullName", ["Sevis::NameType", XSD::QName.new(nil, "FullName")]],
            ["birthDate", [nil, XSD::QName.new(nil, "BirthDate")]],
            ["gender", ["Sevis::GenderCodeType", XSD::QName.new(nil, "Gender")]],
            ["birthCountryCode", ["Sevis::BirthCntryCodeType", XSD::QName.new(nil, "BirthCountryCode")]],
            ["citizenshipStatus", ["Sevis::CitizenshipStatusType", XSD::QName.new(nil, "CitizenshipStatus")], [0, 1]],
            ["citizenshipCountryCode", ["Sevis::CntryCodeWithoutType", XSD::QName.new(nil, "CitizenshipCountryCode")]],
            ["email", [nil, XSD::QName.new(nil, "Email")], [0, 1]],
            ["visaType", ["Sevis::DependentFMVisaType", XSD::QName.new(nil, "VisaType")]],
            ["relationship", ["Sevis::DependentCodeType", XSD::QName.new(nil, "Relationship")]],
            ["remarks", [nil, XSD::QName.new(nil, "Remarks")], [0, 1]],
            ["userDefinedA", [nil, XSD::QName.new(nil, "UserDefinedA")], [0, 1]],
            ["userDefinedB", [nil, XSD::QName.new(nil, "UserDefinedB")], [0, 1]]
        ]
    )

    Registry.register(
        :class => Sevis::SEVISStudentBatchType::CreateStudent::Student::CreateDependent,
        :schema_name => XSD::QName.new(nil, "CreateDependent"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["dependent", ["Sevis::SEVISStudentBatchType::CreateStudent::Student::CreateDependent::Dependent[]", XSD::QName.new(nil, "Dependent")], [1, 25]]
        ]
    )

    Registry.register(
        :class => Sevis::SEVISStudentBatchType::CreateStudent::Student,
        :schema_name => XSD::QName.new(nil, "Student"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["userDefinedA", [nil, XSD::QName.new(nil, "UserDefinedA")], [0, 1]],
            ["userDefinedB", [nil, XSD::QName.new(nil, "UserDefinedB")], [0, 1]],
            ["personalInfo", ["Sevis::SEVISStudentBatchType::CreateStudent::Student::PersonalInfo", XSD::QName.new(nil, "PersonalInfo")]],
            ["issueReason", ["Sevis::StudentCreationReason", XSD::QName.new(nil, "IssueReason")]],
            ["uSAddress", ["Sevis::USAddrDoctorType", XSD::QName.new(nil, "USAddress")], [0, 1]],
            ["mailingAddress", ["Sevis::USAddrDoctorType", XSD::QName.new(nil, "MailingAddress")], [0, 1]],
            ["foreignAddress", ["Sevis::ForeignAddrType", XSD::QName.new(nil, "ForeignAddress")]],
            ["educationalInfo", ["Sevis::EducationalInfoType", XSD::QName.new(nil, "EducationalInfo")]],
            ["financialInfo", ["Sevis::FinancialType", XSD::QName.new(nil, "FinancialInfo")]],
            ["createDependent", ["Sevis::SEVISStudentBatchType::CreateStudent::Student::CreateDependent", XSD::QName.new(nil, "CreateDependent")], [0, 1]],
            ["remarks", [nil, XSD::QName.new(nil, "Remarks")], [0, 1]]
        ],
        :schema_attribute => {
            XSD::QName.new(nil, "requestID") => "SOAP::SOAPString",
            XSD::QName.new(nil, "userID") => "SOAP::SOAPString",
            XSD::QName.new(nil, "printForm") => "SOAP::SOAPBoolean"
        }
    )

    Registry.register(
        :class => Sevis::SEVISStudentBatchType::CreateStudent,
        :schema_name => XSD::QName.new(nil, "CreateStudent"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["student", ["Sevis::SEVISStudentBatchType::CreateStudent::Student[]", XSD::QName.new(nil, "Student")], [1, 250]]
        ]
    )

    Registry.register(
        :class => Sevis::SEVISStudentBatchType::UpdateStudent::Student::AuthDropBelowFC::Add,
        :schema_name => XSD::QName.new(nil, "Add"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["reason", ["Sevis::DropBlwfullType", XSD::QName.new(nil, "Reason")]],
            ["startDate", [nil, XSD::QName.new(nil, "StartDate")]],
            ["endDate", [nil, XSD::QName.new(nil, "EndDate")]],
            ["remarks", [nil, XSD::QName.new(nil, "Remarks")], [0, 1]]
        ],
        :schema_attribute => {
            XSD::QName.new(nil, "printForm") => "SOAP::SOAPBoolean"
        }
    )

    Registry.register(
        :class => Sevis::SEVISStudentBatchType::UpdateStudent::Student::AuthDropBelowFC::Cancel,
        :schema_name => XSD::QName.new(nil, "Cancel"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["reason", ["Sevis::DropBlwfullType", XSD::QName.new(nil, "Reason")]],
            ["startDate", [nil, XSD::QName.new(nil, "StartDate")]],
            ["endDate", [nil, XSD::QName.new(nil, "EndDate")]]
        ],
        :schema_attribute => {
            XSD::QName.new(nil, "printForm") => "SOAP::SOAPBoolean"
        }
    )

    Registry.register(
        :class => Sevis::SEVISStudentBatchType::UpdateStudent::Student::AuthDropBelowFC::Edit,
        :schema_name => XSD::QName.new(nil, "Edit"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["reason", ["Sevis::DropBlwfullType", XSD::QName.new(nil, "Reason")]],
            ["startDate", [nil, XSD::QName.new(nil, "StartDate")]],
            ["endDate", [nil, XSD::QName.new(nil, "EndDate")]],
            ["remarks", [nil, XSD::QName.new(nil, "Remarks")], [0, 1]],
            ["newReason", ["Sevis::DropBlwfullType", XSD::QName.new(nil, "NewReason")], [0, 1]],
            ["newStartDate", [nil, XSD::QName.new(nil, "NewStartDate")], [0, 1]],
            ["newEndDate", [nil, XSD::QName.new(nil, "NewEndDate")], [0, 1]]
        ],
        :schema_attribute => {
            XSD::QName.new(nil, "printForm") => "SOAP::SOAPBoolean"
        }
    )

    Registry.register(
        :class => Sevis::SEVISStudentBatchType::UpdateStudent::Student::AuthDropBelowFC,
        :schema_name => XSD::QName.new(nil, "AuthDropBelowFC"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [:choice,
                            ["add", ["Sevis::SEVISStudentBatchType::UpdateStudent::Student::AuthDropBelowFC::Add", XSD::QName.new(nil, "Add")]],
                            ["cancel", ["Sevis::SEVISStudentBatchType::UpdateStudent::Student::AuthDropBelowFC::Cancel", XSD::QName.new(nil, "Cancel")]],
                            ["edit", ["Sevis::SEVISStudentBatchType::UpdateStudent::Student::AuthDropBelowFC::Edit", XSD::QName.new(nil, "Edit")]]
        ]
    )

    Registry.register(
        :class => Sevis::SEVISStudentBatchType::UpdateStudent::Student::CPTEmployment::Add,
        :schema_name => XSD::QName.new(nil, "Add"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["startDate", [nil, XSD::QName.new(nil, "StartDate")]],
            ["endDate", [nil, XSD::QName.new(nil, "EndDate")]],
            ["fullPartTimeIndicator", ["Sevis::EmploymentTimeType", XSD::QName.new(nil, "FullPartTimeIndicator")]],
            ["employerName", ["SOAP::SOAPString", XSD::QName.new(nil, "EmployerName")]],
            ["employerAddress", ["Sevis::USAddressType", XSD::QName.new(nil, "EmployerAddress")]],
            ["courseRelevance", [nil, XSD::QName.new(nil, "CourseRelevance")], [0, 1]],
            ["remarks", [nil, XSD::QName.new(nil, "Remarks")], [0, 1]]
        ],
        :schema_attribute => {
            XSD::QName.new(nil, "printForm") => "SOAP::SOAPBoolean"
        }
    )

    Registry.register(
        :class => Sevis::SEVISStudentBatchType::UpdateStudent::Student::CPTEmployment::Cancel,
        :schema_name => XSD::QName.new(nil, "Cancel"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["startDate", [nil, XSD::QName.new(nil, "StartDate")]],
            ["endDate", [nil, XSD::QName.new(nil, "EndDate")]],
            ["fullPartTimeIndicator", ["Sevis::EmploymentTimeType", XSD::QName.new(nil, "FullPartTimeIndicator")]],
            ["employerName", ["SOAP::SOAPString", XSD::QName.new(nil, "EmployerName")]]
        ],
        :schema_attribute => {
            XSD::QName.new(nil, "printForm") => "SOAP::SOAPBoolean"
        }
    )

    Registry.register(
        :class => Sevis::SEVISStudentBatchType::UpdateStudent::Student::CPTEmployment,
        :schema_name => XSD::QName.new(nil, "CPTEmployment"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [:choice,
                            ["add", ["Sevis::SEVISStudentBatchType::UpdateStudent::Student::CPTEmployment::Add", XSD::QName.new(nil, "Add")]],
                            ["cancel", ["Sevis::SEVISStudentBatchType::UpdateStudent::Student::CPTEmployment::Cancel", XSD::QName.new(nil, "Cancel")]]
        ]
    )

    Registry.register(
        :class => Sevis::SEVISStudentBatchType::UpdateStudent::Student::Dependent::Add,
        :schema_name => XSD::QName.new(nil, "Add"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["fullName", ["Sevis::NameType", XSD::QName.new(nil, "FullName")]],
            ["birthDate", [nil, XSD::QName.new(nil, "BirthDate")]],
            ["gender", ["Sevis::GenderCodeType", XSD::QName.new(nil, "Gender")]],
            ["birthCountryCode", ["Sevis::BirthCntryCodeType", XSD::QName.new(nil, "BirthCountryCode")]],
            ["citizenshipStatus", ["Sevis::CitizenshipStatusType", XSD::QName.new(nil, "CitizenshipStatus")], [0, 1]],
            ["citizenshipCountryCode", ["Sevis::CntryCodeWithoutType", XSD::QName.new(nil, "CitizenshipCountryCode")]],
            ["email", [nil, XSD::QName.new(nil, "Email")], [0, 1]],
            ["visaType", ["Sevis::DependentFMVisaType", XSD::QName.new(nil, "VisaType")]],
            ["relationship", ["Sevis::DependentCodeType", XSD::QName.new(nil, "Relationship")]],
            ["remarks", [nil, XSD::QName.new(nil, "Remarks")], [0, 1]]
        ],
        :schema_attribute => {
            XSD::QName.new(nil, "printForm") => "SOAP::SOAPBoolean"
        }
    )

    Registry.register(
        :class => Sevis::SEVISStudentBatchType::UpdateStudent::Student::Dependent::Cancel,
        :schema_name => XSD::QName.new(nil, "Cancel"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["reason", ["Sevis::DependentCancelReasonType", XSD::QName.new(nil, "Reason")]],
            ["remarks", [nil, XSD::QName.new(nil, "Remarks")], [0, 1]]
        ],
        :schema_attribute => {
            XSD::QName.new(nil, "dependentSevisID") => "SOAP::SOAPString"
        }
    )

    Registry.register(
        :class => Sevis::SEVISStudentBatchType::UpdateStudent::Student::Dependent::Edit,
        :schema_name => XSD::QName.new(nil, "Edit"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["fullName", ["Sevis::NameNullableType", XSD::QName.new(nil, "FullName")], [0, 1]],
            ["birthDate", [nil, XSD::QName.new(nil, "BirthDate")], [0, 1]],
            ["gender", ["Sevis::GenderCodeType", XSD::QName.new(nil, "Gender")], [0, 1]],
            ["birthCountryCode", ["Sevis::BirthCntryCodeType", XSD::QName.new(nil, "BirthCountryCode")], [0, 1]],
            ["citizenshipStatus", ["Sevis::CitizenshipStatusType", XSD::QName.new(nil, "CitizenshipStatus")], [0, 1]],
            ["citizenshipCountryCode", [nil, XSD::QName.new(nil, "CitizenshipCountryCode")], [0, 1]],
            ["email", [nil, XSD::QName.new(nil, "Email")], [0, 1]],
            ["relationship", ["Sevis::DependentCodeType", XSD::QName.new(nil, "Relationship")], [0, 1]],
            ["remarks", [nil, XSD::QName.new(nil, "Remarks")], [0, 1]]
        ],
        :schema_attribute => {
            XSD::QName.new(nil, "printForm") => "SOAP::SOAPBoolean",
            XSD::QName.new(nil, "dependentSevisID") => "SOAP::SOAPString"
        }
    )

    Registry.register(
        :class => Sevis::SEVISStudentBatchType::UpdateStudent::Student::Dependent::Reactivate,
        :schema_name => XSD::QName.new(nil, "Reactivate"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [],
        :schema_attribute => {
            XSD::QName.new(nil, "printForm") => "SOAP::SOAPBoolean",
            XSD::QName.new(nil, "dependentSevisID") => "SOAP::SOAPString"
        }
    )

    Registry.register(
        :class => Sevis::SEVISStudentBatchType::UpdateStudent::Student::Dependent::Reprint,
        :schema_name => XSD::QName.new(nil, "Reprint"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [],
        :schema_attribute => {
            XSD::QName.new(nil, "printForm") => "SOAP::SOAPBoolean",
            XSD::QName.new(nil, "dependentSevisID") => "SOAP::SOAPString"
        }
    )

    Registry.register(
        :class => Sevis::SEVISStudentBatchType::UpdateStudent::Student::Dependent::Terminate,
        :schema_name => XSD::QName.new(nil, "Terminate"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["reason", ["Sevis::DependentTerminationReasonType", XSD::QName.new(nil, "Reason")]],
            ["otherRemarks", [nil, XSD::QName.new(nil, "OtherRemarks")], [0, 1]],
            ["remarks", [nil, XSD::QName.new(nil, "Remarks")], [0, 1]]
        ],
        :schema_attribute => {
            XSD::QName.new(nil, "dependentSevisID") => "SOAP::SOAPString"
        }
    )

    Registry.register(
        :class => Sevis::SEVISStudentBatchType::UpdateStudent::Student::Dependent,
        :schema_name => XSD::QName.new(nil, "Dependent"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["userDefinedA", [nil, XSD::QName.new(nil, "UserDefinedA")], [0, 1]],
            ["userDefinedB", [nil, XSD::QName.new(nil, "UserDefinedB")], [0, 1]],
            [:choice,
             ["add", ["Sevis::SEVISStudentBatchType::UpdateStudent::Student::Dependent::Add", XSD::QName.new(nil, "Add")]],
             ["cancel", ["Sevis::SEVISStudentBatchType::UpdateStudent::Student::Dependent::Cancel", XSD::QName.new(nil, "Cancel")]],
             ["edit", ["Sevis::SEVISStudentBatchType::UpdateStudent::Student::Dependent::Edit", XSD::QName.new(nil, "Edit")]],
             ["reactivate", ["Sevis::SEVISStudentBatchType::UpdateStudent::Student::Dependent::Reactivate", XSD::QName.new(nil, "Reactivate")]],
             ["reprint", ["Sevis::SEVISStudentBatchType::UpdateStudent::Student::Dependent::Reprint", XSD::QName.new(nil, "Reprint")]],
             ["terminate", ["Sevis::SEVISStudentBatchType::UpdateStudent::Student::Dependent::Terminate", XSD::QName.new(nil, "Terminate")]]
            ]
        ]
    )

    Registry.register(
        :class => Sevis::SEVISStudentBatchType::UpdateStudent::Student::DisciplinaryAction,
        :schema_name => XSD::QName.new(nil, "DisciplinaryAction"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["explanation", [nil, XSD::QName.new(nil, "Explanation")]]
        ]
    )

    Registry.register(
        :class => Sevis::SEVISStudentBatchType::UpdateStudent::Student::EducationLevel::Cancel,
        :schema_name => XSD::QName.new(nil, "Cancel"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["remarks", [nil, XSD::QName.new(nil, "Remarks")], [0, 1]]
        ]
    )

    Registry.register(
        :class => Sevis::SEVISStudentBatchType::UpdateStudent::Student::EducationLevel::Change,
        :schema_name => XSD::QName.new(nil, "Change"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["educationalInfo", ["Sevis::EducationalInfoType", XSD::QName.new(nil, "EducationalInfo")]],
            ["financialInfo", ["Sevis::FinancialType", XSD::QName.new(nil, "FinancialInfo")]],
            ["remarks", [nil, XSD::QName.new(nil, "Remarks")], [0, 1]]
        ],
        :schema_attribute => {
            XSD::QName.new(nil, "printForm") => "SOAP::SOAPBoolean"
        }
    )

    Registry.register(
        :class => Sevis::SEVISStudentBatchType::UpdateStudent::Student::EducationLevel,
        :schema_name => XSD::QName.new(nil, "EducationLevel"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [:choice,
                            ["cancel", ["Sevis::SEVISStudentBatchType::UpdateStudent::Student::EducationLevel::Cancel", XSD::QName.new(nil, "Cancel")]],
                            ["change", ["Sevis::SEVISStudentBatchType::UpdateStudent::Student::EducationLevel::Change", XSD::QName.new(nil, "Change")]]
        ]
    )

    Registry.register(
        :class => Sevis::SEVISStudentBatchType::UpdateStudent::Student::FinancialInfo::Expense,
        :schema_name => XSD::QName.new(nil, "Expense"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["tuition", [nil, XSD::QName.new(nil, "Tuition")], [0, 1]],
            ["livingExpense", [nil, XSD::QName.new(nil, "LivingExpense")], [0, 1]],
            ["dependentExp", [nil, XSD::QName.new(nil, "DependentExp")], [0, 1]],
            ["other", ["Sevis::FinancialAmountNullableType", XSD::QName.new(nil, "Other")], [0, 1]]
        ]
    )

    Registry.register(
        :class => Sevis::SEVISStudentBatchType::UpdateStudent::Student::FinancialInfo::Funding,
        :schema_name => XSD::QName.new(nil, "Funding"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["personal", [nil, XSD::QName.new(nil, "Personal")], [0, 1]],
            ["school", ["Sevis::FinancialAmountNullableType", XSD::QName.new(nil, "School")], [0, 1]],
            ["other", ["Sevis::FinancialAmountNullableType", XSD::QName.new(nil, "Other")], [0, 1]],
            ["employment", [nil, XSD::QName.new(nil, "Employment")], [0, 1]]
        ]
    )

    Registry.register(
        :class => Sevis::SEVISStudentBatchType::UpdateStudent::Student::FinancialInfo,
        :schema_name => XSD::QName.new(nil, "FinancialInfo"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["academicTerm", ["SOAP::SOAPString", XSD::QName.new(nil, "AcademicTerm")], [0, 1]],
            ["expense", ["Sevis::SEVISStudentBatchType::UpdateStudent::Student::FinancialInfo::Expense", XSD::QName.new(nil, "Expense")], [0, 1]],
            ["funding", ["Sevis::SEVISStudentBatchType::UpdateStudent::Student::FinancialInfo::Funding", XSD::QName.new(nil, "Funding")], [0, 1]],
            ["remarks", [nil, XSD::QName.new(nil, "Remarks")], [0, 1]]
        ],
        :schema_attribute => {
            XSD::QName.new(nil, "printForm") => "SOAP::SOAPBoolean"
        }
    )

    Registry.register(
        :class => Sevis::SEVISStudentBatchType::UpdateStudent::Student::OffCampusEmployment::Add,
        :schema_name => XSD::QName.new(nil, "Add"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["startDate", [nil, XSD::QName.new(nil, "StartDate")]],
            ["endDate", [nil, XSD::QName.new(nil, "EndDate")]],
            ["employmentType", ["Sevis::OffCampusEmploymentCodeType", XSD::QName.new(nil, "EmploymentType")]],
            ["recommendation", [nil, XSD::QName.new(nil, "Recommendation")], [0, 1]]
        ],
        :schema_attribute => {
            XSD::QName.new(nil, "printForm") => "SOAP::SOAPBoolean"
        }
    )

    Registry.register(
        :class => Sevis::SEVISStudentBatchType::UpdateStudent::Student::OffCampusEmployment::Cancel,
        :schema_name => XSD::QName.new(nil, "Cancel"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["startDate", [nil, XSD::QName.new(nil, "StartDate")]],
            ["endDate", [nil, XSD::QName.new(nil, "EndDate")]],
            ["employmentType", ["Sevis::OffCampusEmploymentCodeType", XSD::QName.new(nil, "EmploymentType")]]
        ],
        :schema_attribute => {
            XSD::QName.new(nil, "printForm") => "SOAP::SOAPBoolean"
        }
    )

    Registry.register(
        :class => Sevis::SEVISStudentBatchType::UpdateStudent::Student::OffCampusEmployment::Edit,
        :schema_name => XSD::QName.new(nil, "Edit"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["startDate", [nil, XSD::QName.new(nil, "StartDate")]],
            ["endDate", [nil, XSD::QName.new(nil, "EndDate")]],
            ["employmentType", ["Sevis::OffCampusEmploymentCodeType", XSD::QName.new(nil, "EmploymentType")]],
            ["newStartDate", [nil, XSD::QName.new(nil, "NewStartDate")], [0, 1]],
            ["newEndDate", [nil, XSD::QName.new(nil, "NewEndDate")], [0, 1]],
            ["newEmploymentType", ["Sevis::OffCampusEmploymentCodeType", XSD::QName.new(nil, "NewEmploymentType")], [0, 1]],
            ["recommendation", [nil, XSD::QName.new(nil, "Recommendation")], [0, 1]]
        ],
        :schema_attribute => {
            XSD::QName.new(nil, "printForm") => "SOAP::SOAPBoolean"
        }
    )

    Registry.register(
        :class => Sevis::SEVISStudentBatchType::UpdateStudent::Student::OffCampusEmployment,
        :schema_name => XSD::QName.new(nil, "OffCampusEmployment"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [:choice,
                            ["add", ["Sevis::SEVISStudentBatchType::UpdateStudent::Student::OffCampusEmployment::Add", XSD::QName.new(nil, "Add")]],
                            ["cancel", ["Sevis::SEVISStudentBatchType::UpdateStudent::Student::OffCampusEmployment::Cancel", XSD::QName.new(nil, "Cancel")]],
                            ["edit", ["Sevis::SEVISStudentBatchType::UpdateStudent::Student::OffCampusEmployment::Edit", XSD::QName.new(nil, "Edit")]]
        ]
    )

    Registry.register(
        :class => Sevis::SEVISStudentBatchType::UpdateStudent::Student::OPTEmployment::Add,
        :schema_name => XSD::QName.new(nil, "Add"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["startDate", [nil, XSD::QName.new(nil, "StartDate")]],
            ["endDate", [nil, XSD::QName.new(nil, "EndDate")]],
            ["fullPartTimeIndicator", ["Sevis::EmploymentTimeType", XSD::QName.new(nil, "FullPartTimeIndicator")]],
            ["academicYearMet", [nil, XSD::QName.new(nil, "AcademicYearMet")]],
            ["completionType", ["Sevis::OPTCompletionType", XSD::QName.new(nil, "CompletionType")], [0, 1]],
            ["studentRemarks", [nil, XSD::QName.new(nil, "StudentRemarks")], [0, 1]],
            ["remarks", [nil, XSD::QName.new(nil, "Remarks")], [0, 1]],
            ["employer", ["Sevis::Employer[]", XSD::QName.new(nil, "Employer")], [0, nil]]
        ],
        :schema_attribute => {
            XSD::QName.new(nil, "printForm") => "SOAP::SOAPBoolean"
        }
    )

    Registry.register(
        :class => Sevis::SEVISStudentBatchType::UpdateStudent::Student::OPTEmployment::Cancel,
        :schema_name => XSD::QName.new(nil, "Cancel"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["startDate", [nil, XSD::QName.new(nil, "StartDate")]],
            ["endDate", [nil, XSD::QName.new(nil, "EndDate")]],
            ["fullPartTimeIndicator", ["Sevis::EmploymentTimeType", XSD::QName.new(nil, "FullPartTimeIndicator")]]
        ],
        :schema_attribute => {
            XSD::QName.new(nil, "printForm") => "SOAP::SOAPBoolean"
        }
    )

    Registry.register(
        :class => Sevis::SEVISStudentBatchType::UpdateStudent::Student::OPTEmployment::Edit,
        :schema_name => XSD::QName.new(nil, "Edit"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["startDate", [nil, XSD::QName.new(nil, "StartDate")]],
            ["endDate", [nil, XSD::QName.new(nil, "EndDate")]],
            ["fullPartTimeIndicator", ["Sevis::EmploymentTimeType", XSD::QName.new(nil, "FullPartTimeIndicator")]],
            ["newFullPartTimeIndicator", ["Sevis::EmploymentTimeType", XSD::QName.new(nil, "NewFullPartTimeIndicator")], [0, 1]],
            ["academicYearMet", [nil, XSD::QName.new(nil, "AcademicYearMet")], [0, 1]],
            ["studentRemarks", [nil, XSD::QName.new(nil, "StudentRemarks")], [0, 1]],
            ["remarks", [nil, XSD::QName.new(nil, "Remarks")], [0, 1]]
        ],
        :schema_attribute => {
            XSD::QName.new(nil, "printForm") => "SOAP::SOAPBoolean"
        }
    )

    Registry.register(
        :class => Sevis::SEVISStudentBatchType::UpdateStudent::Student::OPTEmployment::Extend,
        :schema_name => XSD::QName.new(nil, "Extend"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["startDate", [nil, XSD::QName.new(nil, "StartDate")]],
            ["endDate", [nil, XSD::QName.new(nil, "EndDate")]],
            ["fullPartTimeIndicator", ["Sevis::EmploymentTimeType", XSD::QName.new(nil, "FullPartTimeIndicator")]],
            ["employer", ["Sevis::Employer[]", XSD::QName.new(nil, "Employer")], [1, nil]]
        ],
        :schema_attribute => {
            XSD::QName.new(nil, "printForm") => "SOAP::SOAPBoolean"
        }
    )

    Registry.register(
        :class => Sevis::SEVISStudentBatchType::UpdateStudent::Student::OPTEmployment,
        :schema_name => XSD::QName.new(nil, "OPTEmployment"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [:choice,
                            ["add", ["Sevis::SEVISStudentBatchType::UpdateStudent::Student::OPTEmployment::Add", XSD::QName.new(nil, "Add")]],
                            ["cancel", ["Sevis::SEVISStudentBatchType::UpdateStudent::Student::OPTEmployment::Cancel", XSD::QName.new(nil, "Cancel")]],
                            ["edit", ["Sevis::SEVISStudentBatchType::UpdateStudent::Student::OPTEmployment::Edit", XSD::QName.new(nil, "Edit")]],
                            ["extend", ["Sevis::SEVISStudentBatchType::UpdateStudent::Student::OPTEmployment::Extend", XSD::QName.new(nil, "Extend")]],
                            ["reportParticipation", ["Sevis::OPTEmploymentType", XSD::QName.new(nil, "ReportParticipation")]]
        ]
    )

    Registry.register(
        :class => Sevis::SEVISStudentBatchType::UpdateStudent::Student::OPTEmployer::Add,
        :schema_name => XSD::QName.new(nil, "Add"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["employmentIdentifier", ["Sevis::EmploymentIdentifier", XSD::QName.new(nil, "EmploymentIdentifier")]],
            ["employer", ["Sevis::Employer[]", XSD::QName.new(nil, "Employer")], [0, nil]]
        ],
        :schema_attribute => {
            XSD::QName.new(nil, "printForm") => "SOAP::SOAPBoolean"
        }
    )

    Registry.register(
        :class => Sevis::SEVISStudentBatchType::UpdateStudent::Student::OPTEmployer::Edit,
        :schema_name => XSD::QName.new(nil, "Edit"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["employmentIdentifier", ["Sevis::EmploymentIdentifier", XSD::QName.new(nil, "EmploymentIdentifier")]],
            ["employerIdentifier", ["Sevis::EmployerIdentifier", XSD::QName.new(nil, "EmployerIdentifier")]],
            ["employer", ["Sevis::UpdateEmployerType", XSD::QName.new(nil, "Employer")]]
        ],
        :schema_attribute => {
            XSD::QName.new(nil, "printForm") => "SOAP::SOAPBoolean"
        }
    )

    Registry.register(
        :class => Sevis::SEVISStudentBatchType::UpdateStudent::Student::OPTEmployer,
        :schema_name => XSD::QName.new(nil, "OPTEmployer"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [:choice,
                            ["add", ["Sevis::SEVISStudentBatchType::UpdateStudent::Student::OPTEmployer::Add", XSD::QName.new(nil, "Add")]],
                            ["edit", ["Sevis::SEVISStudentBatchType::UpdateStudent::Student::OPTEmployer::Edit", XSD::QName.new(nil, "Edit")]]
        ]
    )

    Registry.register(
        :class => Sevis::SEVISStudentBatchType::UpdateStudent::Student::PersonalInfo::Telephone,
        :schema_name => XSD::QName.new(nil, "Telephone"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["telephoneExemptInd", ["Sevis::IndicatorTypeYN", XSD::QName.new(nil, "TelephoneExemptInd")]],
            ["phone", ["Sevis::TelephoneType", XSD::QName.new(nil, "Phone")], [0, 1]]
        ]
    )

    Registry.register(
        :class => Sevis::SEVISStudentBatchType::UpdateStudent::Student::PersonalInfo,
        :schema_name => XSD::QName.new(nil, "PersonalInfo"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["fullName", ["Sevis::NameNullableType", XSD::QName.new(nil, "FullName")], [0, 1]],
            ["birthDate", [nil, XSD::QName.new(nil, "BirthDate")], [0, 1]],
            ["gender", ["Sevis::GenderCodeType", XSD::QName.new(nil, "Gender")], [0, 1]],
            ["birthCountryCode", ["Sevis::BirthCntryCodeType", XSD::QName.new(nil, "BirthCountryCode")], [0, 1]],
            ["citizenshipStatus", ["Sevis::CitizenshipStatusType", XSD::QName.new(nil, "CitizenshipStatus")], [0, 1]],
            ["citizenshipCountryCode", ["Sevis::CntryCodeWithoutType", XSD::QName.new(nil, "CitizenshipCountryCode")], [0, 1]],
            ["email", [nil, XSD::QName.new(nil, "Email")], [0, 1]],
            ["telephone", ["Sevis::SEVISStudentBatchType::UpdateStudent::Student::PersonalInfo::Telephone", XSD::QName.new(nil, "Telephone")], [0, 1]],
            ["commuter", [nil, XSD::QName.new(nil, "Commuter")], [0, 1]],
            ["uSAddress", ["Sevis::USAddrDoctorType", XSD::QName.new(nil, "USAddress")], [0, 1]],
            ["mailingAddress", ["Sevis::USAddrDoctorType", XSD::QName.new(nil, "MailingAddress")], [0, 1]],
            ["foreignAddress", ["Sevis::ForeignAddrNullableType", XSD::QName.new(nil, "ForeignAddress")], [0, 1]],
            ["remarks", [nil, XSD::QName.new(nil, "Remarks")], [0, 1]]
        ],
        :schema_attribute => {
            XSD::QName.new(nil, "printForm") => "SOAP::SOAPBoolean"
        }
    )

    Registry.register(
        :class => Sevis::SEVISStudentBatchType::UpdateStudent::Student::Program::CancelExtension,
        :schema_name => XSD::QName.new(nil, "CancelExtension"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["newPrgEndDate", [nil, XSD::QName.new(nil, "NewPrgEndDate")]],
            ["remarks", [nil, XSD::QName.new(nil, "Remarks")], [0, 1]]
        ],
        :schema_attribute => {
            XSD::QName.new(nil, "printForm") => "SOAP::SOAPBoolean"
        }
    )

    Registry.register(
        :class => Sevis::SEVISStudentBatchType::UpdateStudent::Student::Program::ManageSessionDates,
        :schema_name => XSD::QName.new(nil, "ManageSessionDates"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["issDate", [nil, XSD::QName.new(nil, "IssDate")]],
            ["newPrgStartDate", [nil, XSD::QName.new(nil, "NewPrgStartDate")]],
            ["newPrgEndDate", [nil, XSD::QName.new(nil, "NewPrgEndDate")]],
            ["remarks", [nil, XSD::QName.new(nil, "Remarks")], [0, 1]]
        ],
        :schema_attribute => {
            XSD::QName.new(nil, "printForm") => "SOAP::SOAPBoolean"
        }
    )

    Registry.register(
        :class => Sevis::SEVISStudentBatchType::UpdateStudent::Student::Program::Edit::EngProficiency,
        :schema_name => XSD::QName.new(nil, "EngProficiency"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["engRequired", [nil, XSD::QName.new(nil, "EngRequired")]],
            ["requirementsMet", [nil, XSD::QName.new(nil, "RequirementsMet")], [0, 1]],
            ["notRequiredReason", [nil, XSD::QName.new(nil, "NotRequiredReason")], [0, 1]]
        ]
    )

    Registry.register(
        :class => Sevis::SEVISStudentBatchType::UpdateStudent::Student::Program::Edit,
        :schema_name => XSD::QName.new(nil, "Edit"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["level", ["Sevis::EduLevelCodeType", XSD::QName.new(nil, "Level")], [0, 1]],
            ["majorCode1", ["Sevis::ProgSubjectCodeType", XSD::QName.new(nil, "MajorCode1")], [0, 1]],
            ["majorCode2", [nil, XSD::QName.new(nil, "MajorCode2")], [0, 1]],
            ["minor", [nil, XSD::QName.new(nil, "Minor")], [0, 1]],
            ["engProficiency", ["Sevis::SEVISStudentBatchType::UpdateStudent::Student::Program::Edit::EngProficiency", XSD::QName.new(nil, "EngProficiency")], [0, 1]],
            ["remarks", [nil, XSD::QName.new(nil, "Remarks")], [0, 1]]
        ],
        :schema_attribute => {
            XSD::QName.new(nil, "printForm") => "SOAP::SOAPBoolean"
        }
    )

    Registry.register(
        :class => Sevis::SEVISStudentBatchType::UpdateStudent::Student::Program::Extension,
        :schema_name => XSD::QName.new(nil, "Extension"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["newPrgEndDate", [nil, XSD::QName.new(nil, "NewPrgEndDate")]],
            ["remarks", [nil, XSD::QName.new(nil, "Remarks")], [0, 1]],
            ["explanation", [nil, XSD::QName.new(nil, "Explanation")]]
        ],
        :schema_attribute => {
            XSD::QName.new(nil, "printForm") => "SOAP::SOAPBoolean"
        }
    )

    Registry.register(
        :class => Sevis::SEVISStudentBatchType::UpdateStudent::Student::Program::Shorten,
        :schema_name => XSD::QName.new(nil, "Shorten"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["newPrgEndDate", [nil, XSD::QName.new(nil, "NewPrgEndDate")]],
            ["remarks", [nil, XSD::QName.new(nil, "Remarks")], [0, 1]]
        ],
        :schema_attribute => {
            XSD::QName.new(nil, "printForm") => "SOAP::SOAPBoolean"
        }
    )

    Registry.register(
        :class => Sevis::SEVISStudentBatchType::UpdateStudent::Student::Program,
        :schema_name => XSD::QName.new(nil, "Program"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [:choice,
                            ["cancelExtension", ["Sevis::SEVISStudentBatchType::UpdateStudent::Student::Program::CancelExtension", XSD::QName.new(nil, "CancelExtension")]],
                            ["manageSessionDates", ["Sevis::SEVISStudentBatchType::UpdateStudent::Student::Program::ManageSessionDates", XSD::QName.new(nil, "ManageSessionDates")]],
                            ["edit", ["Sevis::SEVISStudentBatchType::UpdateStudent::Student::Program::Edit", XSD::QName.new(nil, "Edit")]],
                            ["extension", ["Sevis::SEVISStudentBatchType::UpdateStudent::Student::Program::Extension", XSD::QName.new(nil, "Extension")]],
                            ["shorten", ["Sevis::SEVISStudentBatchType::UpdateStudent::Student::Program::Shorten", XSD::QName.new(nil, "Shorten")]]
        ]
    )

    Registry.register(
        :class => Sevis::SEVISStudentBatchType::UpdateStudent::Student::Registration::Telephone,
        :schema_name => XSD::QName.new(nil, "Telephone"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["telephoneExemptInd", ["Sevis::IndicatorTypeYN", XSD::QName.new(nil, "TelephoneExemptInd")]],
            ["phone", ["Sevis::TelephoneType", XSD::QName.new(nil, "Phone")], [0, 1]]
        ]
    )

    Registry.register(
        :class => Sevis::SEVISStudentBatchType::UpdateStudent::Student::Registration,
        :schema_name => XSD::QName.new(nil, "Registration"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["lastSession", [nil, XSD::QName.new(nil, "LastSession")]],
            ["currentSessionStartDate", [nil, XSD::QName.new(nil, "CurrentSessionStartDate")]],
            ["currentSessionEndDate", [nil, XSD::QName.new(nil, "CurrentSessionEndDate")]],
            ["nextSessionStartDate", [nil, XSD::QName.new(nil, "NextSessionStartDate")], [0, 1]],
            ["studyResearchAbroad", [nil, XSD::QName.new(nil, "StudyResearchAbroad")], [0, 1]],
            ["thesisDissertation", [nil, XSD::QName.new(nil, "ThesisDissertation")], [0, 1]],
            ["email", [nil, XSD::QName.new(nil, "Email")], [0, 1]],
            ["telephone", ["Sevis::SEVISStudentBatchType::UpdateStudent::Student::Registration::Telephone", XSD::QName.new(nil, "Telephone")], [0, 1]],
            ["commuter", [nil, XSD::QName.new(nil, "Commuter")], [0, 1]],
            ["uSAddress", ["Sevis::USAddrDoctorType", XSD::QName.new(nil, "USAddress")], [0, 1]],
            ["foreignAddress", ["Sevis::ForeignAddrNullableType", XSD::QName.new(nil, "ForeignAddress")], [0, 1]],
            ["remarks", [nil, XSD::QName.new(nil, "Remarks")], [0, 1]]
        ],
        :schema_attribute => {
            XSD::QName.new(nil, "printForm") => "SOAP::SOAPBoolean"
        }
    )

    Registry.register(
        :class => Sevis::SEVISStudentBatchType::UpdateStudent::Student::Request::CapGapExtension,
        :schema_name => XSD::QName.new(nil, "CapGapExtension"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [:choice,
                            ["status", ["Sevis::CapGapExtensionType", XSD::QName.new(nil, "Status")]]
        ],
        :schema_attribute => {
            XSD::QName.new(nil, "printForm") => "SOAP::SOAPBoolean"
        }
    )

    Registry.register(
        :class => Sevis::SEVISStudentBatchType::UpdateStudent::Student::Request,
        :schema_name => XSD::QName.new(nil, "Request"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [:choice,
                            ["capGapExtension", ["Sevis::SEVISStudentBatchType::UpdateStudent::Student::Request::CapGapExtension", XSD::QName.new(nil, "CapGapExtension")]]
        ]
    )

    Registry.register(
        :class => Sevis::SEVISStudentBatchType::UpdateStudent::Student::Status::Cancel,
        :schema_name => XSD::QName.new(nil, "Cancel"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["reason", ["Sevis::StudentCancelReasonType", XSD::QName.new(nil, "Reason")]],
            ["remarks", [nil, XSD::QName.new(nil, "Remarks")], [0, 1]]
        ]
    )

    Registry.register(
        :class => Sevis::SEVISStudentBatchType::UpdateStudent::Student::Status::Complete,
        :schema_name => XSD::QName.new(nil, "Complete"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["remarks", [nil, XSD::QName.new(nil, "Remarks")], [0, 1]]
        ]
    )

    Registry.register(
        :class => Sevis::SEVISStudentBatchType::UpdateStudent::Student::Status::Terminate,
        :schema_name => XSD::QName.new(nil, "Terminate"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["reason", ["Sevis::StudentTerminationReasonType", XSD::QName.new(nil, "Reason")]],
            ["otherRemarks", [nil, XSD::QName.new(nil, "OtherRemarks")], [0, 1]],
            ["remarks", [nil, XSD::QName.new(nil, "Remarks")], [0, 1]]
        ]
    )

    Registry.register(
        :class => Sevis::SEVISStudentBatchType::UpdateStudent::Student::Status,
        :schema_name => XSD::QName.new(nil, "Status"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [:choice,
                            ["cancel", ["Sevis::SEVISStudentBatchType::UpdateStudent::Student::Status::Cancel", XSD::QName.new(nil, "Cancel")]],
                            ["complete", ["Sevis::SEVISStudentBatchType::UpdateStudent::Student::Status::Complete", XSD::QName.new(nil, "Complete")]],
                            ["terminate", ["Sevis::SEVISStudentBatchType::UpdateStudent::Student::Status::Terminate", XSD::QName.new(nil, "Terminate")]],
                            ["verify", ["Sevis::EmptyType", XSD::QName.new(nil, "Verify")]]
        ]
    )

    Registry.register(
        :class => Sevis::SEVISStudentBatchType::UpdateStudent::Student,
        :schema_name => XSD::QName.new(nil, "Student"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["userDefinedA", [nil, XSD::QName.new(nil, "UserDefinedA")], [0, 1]],
            ["userDefinedB", [nil, XSD::QName.new(nil, "UserDefinedB")], [0, 1]],
            [:choice,
             ["authDropBelowFC", ["Sevis::SEVISStudentBatchType::UpdateStudent::Student::AuthDropBelowFC", XSD::QName.new(nil, "AuthDropBelowFC")]],
             ["cPTEmployment", ["Sevis::SEVISStudentBatchType::UpdateStudent::Student::CPTEmployment", XSD::QName.new(nil, "CPTEmployment")]],
             ["dependent", ["Sevis::SEVISStudentBatchType::UpdateStudent::Student::Dependent", XSD::QName.new(nil, "Dependent")]],
             ["disciplinaryAction", ["Sevis::SEVISStudentBatchType::UpdateStudent::Student::DisciplinaryAction", XSD::QName.new(nil, "DisciplinaryAction")]],
             ["educationLevel", ["Sevis::SEVISStudentBatchType::UpdateStudent::Student::EducationLevel", XSD::QName.new(nil, "EducationLevel")]],
             ["financialInfo", ["Sevis::SEVISStudentBatchType::UpdateStudent::Student::FinancialInfo", XSD::QName.new(nil, "FinancialInfo")]],
             ["offCampusEmployment", ["Sevis::SEVISStudentBatchType::UpdateStudent::Student::OffCampusEmployment", XSD::QName.new(nil, "OffCampusEmployment")]],
             ["oPTEmployment", ["Sevis::SEVISStudentBatchType::UpdateStudent::Student::OPTEmployment", XSD::QName.new(nil, "OPTEmployment")]],
             ["oPTEmployer", ["Sevis::SEVISStudentBatchType::UpdateStudent::Student::OPTEmployer", XSD::QName.new(nil, "OPTEmployer")]],
             ["personalInfo", ["Sevis::SEVISStudentBatchType::UpdateStudent::Student::PersonalInfo", XSD::QName.new(nil, "PersonalInfo")]],
             ["program", ["Sevis::SEVISStudentBatchType::UpdateStudent::Student::Program", XSD::QName.new(nil, "Program")]],
             ["registration", ["Sevis::SEVISStudentBatchType::UpdateStudent::Student::Registration", XSD::QName.new(nil, "Registration")]],
             ["reprint", ["Sevis::ReprintType", XSD::QName.new(nil, "Reprint")]],
             ["request", ["Sevis::SEVISStudentBatchType::UpdateStudent::Student::Request", XSD::QName.new(nil, "Request")]],
             ["status", ["Sevis::SEVISStudentBatchType::UpdateStudent::Student::Status", XSD::QName.new(nil, "Status")]]
            ]
        ],
        :schema_attribute => {
            XSD::QName.new(nil, "sevisID") => "SOAP::SOAPString",
            XSD::QName.new(nil, "requestID") => "SOAP::SOAPString",
            XSD::QName.new(nil, "userID") => "SOAP::SOAPString",
            XSD::QName.new(nil, "statusCode") => "SOAP::SOAPString"
        }
    )

    Registry.register(
        :class => Sevis::SEVISStudentBatchType::UpdateStudent,
        :schema_name => XSD::QName.new(nil, "UpdateStudent"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["student", ["Sevis::SEVISStudentBatchType::UpdateStudent::Student[]", XSD::QName.new(nil, "Student")], [1, 250]]
        ]
    )

    Registry.register(
        :class => Sevis::StudentPersonType,
        :schema_type => XSD::QName.new(nil, "StudentPersonType"),
        :schema_element => [
            ["userDefinedA", [nil, XSD::QName.new(nil, "UserDefinedA")], [0, 1]],
            ["userDefinedB", [nil, XSD::QName.new(nil, "UserDefinedB")], [0, 1]],
            ["personalInfo", ["Sevis::StudentPersonType::PersonalInfo", XSD::QName.new(nil, "PersonalInfo")]],
            ["issueReason", ["Sevis::StudentCreationReason", XSD::QName.new(nil, "IssueReason")]],
            ["uSAddress", ["Sevis::USAddrDoctorType", XSD::QName.new(nil, "USAddress")], [0, 1]],
            ["mailingAddress", ["Sevis::USAddrDoctorType", XSD::QName.new(nil, "MailingAddress")], [0, 1]],
            ["foreignAddress", ["Sevis::ForeignAddrType", XSD::QName.new(nil, "ForeignAddress")]],
            ["educationalInfo", ["Sevis::EducationalInfoType", XSD::QName.new(nil, "EducationalInfo")]],
            ["financialInfo", ["Sevis::FinancialType", XSD::QName.new(nil, "FinancialInfo")]],
            ["createDependent", ["Sevis::StudentPersonType::CreateDependent", XSD::QName.new(nil, "CreateDependent")], [0, 1]],
            ["remarks", [nil, XSD::QName.new(nil, "Remarks")], [0, 1]]
        ]
    )

    Registry.register(
        :class => Sevis::StudentPersonType::PersonalInfo::Telephone,
        :schema_name => XSD::QName.new(nil, "Telephone"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["telephoneExemptInd", ["Sevis::IndicatorTypeYN", XSD::QName.new(nil, "TelephoneExemptInd")]],
            ["phone", ["Sevis::TelephoneType", XSD::QName.new(nil, "Phone")], [0, 1]]
        ]
    )

    Registry.register(
        :class => Sevis::StudentPersonType::PersonalInfo,
        :schema_name => XSD::QName.new(nil, "PersonalInfo"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["fullName", ["Sevis::NameType", XSD::QName.new(nil, "FullName")]],
            ["birthDate", [nil, XSD::QName.new(nil, "BirthDate")]],
            ["gender", ["Sevis::GenderCodeType", XSD::QName.new(nil, "Gender")]],
            ["birthCountryCode", ["Sevis::BirthCntryCodeType", XSD::QName.new(nil, "BirthCountryCode")]],
            ["citizenshipStatus", ["Sevis::CitizenshipStatusType", XSD::QName.new(nil, "CitizenshipStatus")], [0, 1]],
            ["citizenshipCountryCode", ["Sevis::CntryCodeWithoutType", XSD::QName.new(nil, "CitizenshipCountryCode")]],
            ["email", [nil, XSD::QName.new(nil, "Email")], [0, 1]],
            ["commuter", [nil, XSD::QName.new(nil, "Commuter")], [0, 1]],
            ["visaType", ["Sevis::StudentVisaCodeType", XSD::QName.new(nil, "VisaType")]],
            ["telephone", ["Sevis::StudentPersonType::PersonalInfo::Telephone", XSD::QName.new(nil, "Telephone")], [0, 1]]
        ]
    )

    Registry.register(
        :class => Sevis::StudentPersonType::CreateDependent::Dependent,
        :schema_name => XSD::QName.new(nil, "Dependent"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["fullName", ["Sevis::NameType", XSD::QName.new(nil, "FullName")]],
            ["birthDate", [nil, XSD::QName.new(nil, "BirthDate")]],
            ["gender", ["Sevis::GenderCodeType", XSD::QName.new(nil, "Gender")]],
            ["birthCountryCode", ["Sevis::BirthCntryCodeType", XSD::QName.new(nil, "BirthCountryCode")]],
            ["citizenshipStatus", ["Sevis::CitizenshipStatusType", XSD::QName.new(nil, "CitizenshipStatus")], [0, 1]],
            ["citizenshipCountryCode", ["Sevis::CntryCodeWithoutType", XSD::QName.new(nil, "CitizenshipCountryCode")]],
            ["email", [nil, XSD::QName.new(nil, "Email")], [0, 1]],
            ["visaType", ["Sevis::DependentFMVisaType", XSD::QName.new(nil, "VisaType")]],
            ["relationship", ["Sevis::DependentCodeType", XSD::QName.new(nil, "Relationship")]],
            ["remarks", [nil, XSD::QName.new(nil, "Remarks")], [0, 1]],
            ["userDefinedA", [nil, XSD::QName.new(nil, "UserDefinedA")], [0, 1]],
            ["userDefinedB", [nil, XSD::QName.new(nil, "UserDefinedB")], [0, 1]]
        ]
    )

    Registry.register(
        :class => Sevis::StudentPersonType::CreateDependent,
        :schema_name => XSD::QName.new(nil, "CreateDependent"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["dependent", ["Sevis::StudentPersonType::CreateDependent::Dependent[]", XSD::QName.new(nil, "Dependent")], [1, 25]]
        ]
    )

    Registry.register(
        :class => Sevis::TelephoneType,
        :schema_type => XSD::QName.new(nil, "TelephoneType"),
        :schema_element => [
            ["uSNumber", [nil, XSD::QName.new(nil, "USNumber")], [0, 1]],
            ["foreign", ["Sevis::TelephoneType::Foreign", XSD::QName.new(nil, "Foreign")], [0, 1]]
        ]
    )

    Registry.register(
        :class => Sevis::TelephoneType::Foreign,
        :schema_name => XSD::QName.new(nil, "Foreign"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["countryNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "CountryNumber")], [0, 1]],
            ["phoneNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "PhoneNumber")]]
        ]
    )

    Registry.register(
        :class => Sevis::USTelephoneType,
        :schema_type => XSD::QName.new(nil, "USTelephoneType"),
        :schema_element => [
            ["uSNumber", [nil, XSD::QName.new(nil, "USNumber")], [0, 1]]
        ]
    )

    Registry.register(
        :class => Sevis::UpdateEmployerType,
        :schema_type => XSD::QName.new(nil, "UpdateEmployerType"),
        :schema_element => [
            ["employerName", ["SOAP::SOAPString", XSD::QName.new(nil, "EmployerName")], [0, 1]],
            ["employerAddress", ["Sevis::USAddrDoctorType", XSD::QName.new(nil, "EmployerAddress")], [0, 1]],
            ["employerEIN", [nil, XSD::QName.new(nil, "EmployerEIN")], [0, 1]],
            ["selfEmployed", [nil, XSD::QName.new(nil, "SelfEmployed")], [0, 1]],
            ["courseRelevance", [nil, XSD::QName.new(nil, "CourseRelevance")], [0, 1]],
            ["fullPartTimeIndicator", ["Sevis::EmploymentTimeType", XSD::QName.new(nil, "FullPartTimeIndicator")], [0, 1]],
            ["startDate", [nil, XSD::QName.new(nil, "StartDate")], [0, 1]],
            ["endDate", [nil, XSD::QName.new(nil, "EndDate")], [0, 1]],
            ["supervisorFirstName", ["SOAP::SOAPString", XSD::QName.new(nil, "SupervisorFirstName")], [0, 1]],
            ["supervisorLastName", ["SOAP::SOAPString", XSD::QName.new(nil, "SupervisorLastName")], [0, 1]],
            ["supervisorPhone", [nil, XSD::QName.new(nil, "SupervisorPhone")], [0, 1]],
            ["supervisorPhoneExt", [nil, XSD::QName.new(nil, "SupervisorPhoneExt")], [0, 1]],
            ["supervisorEmail", [nil, XSD::QName.new(nil, "SupervisorEmail")], [0, 1]],
            ["studentsJobTitle", ["SOAP::SOAPString", XSD::QName.new(nil, "StudentsJobTitle")], [0, 1]]
        ]
    )

    Registry.register(
        :class => Sevis::BatchHeaderType,
        :schema_type => XSD::QName.new(NsCommon, "BatchHeaderType"),
        :schema_element => [
            ["batchID", [nil, XSD::QName.new(nil, "BatchID")]],
            ["orgID", [nil, XSD::QName.new(nil, "OrgID")]]
        ]
    )

    Registry.register(
        :class => Sevis::DriverLicenseNullableType,
        :schema_type => XSD::QName.new(NsCommon, "DriverLicenseNullableType"),
        :schema_element => [
            ["number", ["SOAP::SOAPString", XSD::QName.new(nil, "Number")], [0, 1]],
            ["state", [nil, XSD::QName.new(nil, "State")], [0, 1]]
        ]
    )

    Registry.register(
        :class => Sevis::DriverLicenseType,
        :schema_type => XSD::QName.new(NsCommon, "DriverLicenseType"),
        :schema_element => [
            ["number", ["SOAP::SOAPString", XSD::QName.new(nil, "Number")], [0, 1]],
            ["state", ["Sevis::StateCodeType", XSD::QName.new(nil, "State")], [0, 1]]
        ]
    )

    Registry.register(
        :class => Sevis::EmptyType,
        :schema_type => XSD::QName.new(NsCommon, "EmptyType"),
        :schema_element => []
    )

    Registry.register(
        :class => Sevis::ForeignAddrNullableType,
        :schema_type => XSD::QName.new(NsCommon, "ForeignAddrNullableType"),
        :schema_element => [
            ["address1", ["SOAP::SOAPString", XSD::QName.new(nil, "Address1")]],
            ["address2", ["SOAP::SOAPString", XSD::QName.new(nil, "Address2")], [0, 1]],
            ["city", ["SOAP::SOAPString", XSD::QName.new(nil, "City")], [0, 1]],
            ["province", ["SOAP::SOAPString", XSD::QName.new(nil, "Province")], [0, 1]],
            ["countryCode", ["Sevis::CntryCodeWithoutType", XSD::QName.new(nil, "CountryCode")]],
            ["postalCode", ["SOAP::SOAPString", XSD::QName.new(nil, "PostalCode")], [0, 1]]
        ]
    )

    Registry.register(
        :class => Sevis::ForeignAddrType,
        :schema_type => XSD::QName.new(NsCommon, "ForeignAddrType"),
        :schema_element => [
            ["address1", ["SOAP::SOAPString", XSD::QName.new(nil, "Address1")]],
            ["address2", ["SOAP::SOAPString", XSD::QName.new(nil, "Address2")], [0, 1]],
            ["city", ["SOAP::SOAPString", XSD::QName.new(nil, "City")], [0, 1]],
            ["province", ["SOAP::SOAPString", XSD::QName.new(nil, "Province")], [0, 1]],
            ["countryCode", ["Sevis::CntryCodeWithoutType", XSD::QName.new(nil, "CountryCode")]],
            ["postalCode", ["SOAP::SOAPString", XSD::QName.new(nil, "PostalCode")], [0, 1]]
        ]
    )

    Registry.register(
        :class => Sevis::NameNullableType,
        :schema_type => XSD::QName.new(NsCommon, "NameNullableType"),
        :schema_element => [
            ["lastName", ["SOAP::SOAPString", XSD::QName.new(nil, "LastName")]],
            ["firstName", ["SOAP::SOAPString", XSD::QName.new(nil, "FirstName")], [0, 1]],
            ["passportName", ["SOAP::SOAPString", XSD::QName.new(nil, "PassportName")], [0, 1]],
            ["preferredName", ["SOAP::SOAPString", XSD::QName.new(nil, "PreferredName")], [0, 1]],
            ["suffix", [nil, XSD::QName.new(nil, "Suffix")], [0, 1]]
        ]
    )

    Registry.register(
        :class => Sevis::NameType,
        :schema_type => XSD::QName.new(NsCommon, "NameType"),
        :schema_element => [
            ["lastName", ["SOAP::SOAPString", XSD::QName.new(nil, "LastName")]],
            ["firstName", ["SOAP::SOAPString", XSD::QName.new(nil, "FirstName")], [0, 1]],
            ["passportName", ["SOAP::SOAPString", XSD::QName.new(nil, "PassportName")], [0, 1]],
            ["preferredName", ["SOAP::SOAPString", XSD::QName.new(nil, "PreferredName")], [0, 1]],
            ["suffix", ["Sevis::NameSuffixCodeType", XSD::QName.new(nil, "Suffix")], [0, 1]]
        ]
    )

    Registry.register(
        :class => Sevis::TravelNullableType,
        :schema_type => XSD::QName.new(NsCommon, "TravelNullableType"),
        :schema_element => [
            ["passportNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "PassportNumber")], [0, 1]],
            ["passportIssuingCntry", [nil, XSD::QName.new(nil, "PassportIssuingCntry")], [0, 1]],
            ["passportExpDate", [nil, XSD::QName.new(nil, "PassportExpDate")], [0, 1]],
            ["visaNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "VisaNumber")], [0, 1]],
            ["visaIssuingCntry", [nil, XSD::QName.new(nil, "VisaIssuingCntry")], [0, 1]],
            ["visaIssueDate", [nil, XSD::QName.new(nil, "VisaIssueDate")], [0, 1]],
            ["visaExpDate", [nil, XSD::QName.new(nil, "VisaExpDate")], [0, 1]],
            ["portOfEntry", [nil, XSD::QName.new(nil, "PortOfEntry")], [0, 1]],
            ["dateOfEntry", [nil, XSD::QName.new(nil, "DateOfEntry")], [0, 1]]
        ]
    )

    Registry.register(
        :class => Sevis::TravelType,
        :schema_type => XSD::QName.new(NsCommon, "TravelType"),
        :schema_element => [
            ["passportNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "PassportNumber")], [0, 1]],
            ["passportIssuingCntry", ["Sevis::CntryCodeWithCloseDateType", XSD::QName.new(nil, "PassportIssuingCntry")], [0, 1]],
            ["passportExpDate", [nil, XSD::QName.new(nil, "PassportExpDate")], [0, 1]],
            ["visaNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "VisaNumber")], [0, 1]],
            ["visaIssuingCntry", ["Sevis::VisaPostCodeType", XSD::QName.new(nil, "VisaIssuingCntry")], [0, 1]],
            ["visaIssueDate", [nil, XSD::QName.new(nil, "VisaIssueDate")], [0, 1]],
            ["visaExpDate", [nil, XSD::QName.new(nil, "VisaExpDate")], [0, 1]],
            ["portOfEntry", ["Sevis::PoeCodeType", XSD::QName.new(nil, "PortOfEntry")], [0, 1]],
            ["dateOfEntry", [nil, XSD::QName.new(nil, "DateOfEntry")], [0, 1]]
        ]
    )

    Registry.register(
        :class => Sevis::SEVISResponse,
        :schema_type => XSD::QName.new(NsCommon, "SEVISResponse"),
        :schema_element => [],
        :schema_attribute => {
            XSD::QName.new(nil, "orgID") => nil,
            XSD::QName.new(nil, "batchID") => "SOAP::SOAPString",
            XSD::QName.new(nil, "resultCode") => "SOAP::SOAPString",
            XSD::QName.new(nil, "dateTimeStamp") => "SOAP::SOAPDateTime"
        }
    )

    Registry.register(
        :class => Sevis::USAddressNullableType,
        :schema_type => XSD::QName.new(NsCommon, "USAddressNullableType"),
        :schema_element => [
            ["address1", ["SOAP::SOAPString", XSD::QName.new(nil, "Address1")]],
            ["address2", ["SOAP::SOAPString", XSD::QName.new(nil, "Address2")], [0, 1]],
            ["city", ["SOAP::SOAPString", XSD::QName.new(nil, "City")]],
            ["state", ["Sevis::StateCodeType", XSD::QName.new(nil, "State")]],
            ["postalCode", [nil, XSD::QName.new(nil, "PostalCode")]],
            ["postalRoutingCode", [nil, XSD::QName.new(nil, "PostalRoutingCode")], [0, 1]]
        ]
    )

    Registry.register(
        :class => Sevis::USAddressCommuterNullableType,
        :schema_type => XSD::QName.new(NsCommon, "USAddressCommuterNullableType"),
        :schema_element => [
            ["address1", ["SOAP::SOAPString", XSD::QName.new(nil, "Address1")]],
            ["address2", ["SOAP::SOAPString", XSD::QName.new(nil, "Address2")], [0, 1]],
            ["city", ["SOAP::SOAPString", XSD::QName.new(nil, "City")]],
            ["state", [nil, XSD::QName.new(nil, "State")]],
            ["postalCode", [nil, XSD::QName.new(nil, "PostalCode")]],
            ["postalRoutingCode", [nil, XSD::QName.new(nil, "PostalRoutingCode")], [0, 1]]
        ]
    )

    Registry.register(
        :class => Sevis::USAddressOptionalType,
        :schema_type => XSD::QName.new(NsCommon, "USAddressOptionalType"),
        :schema_element => [
            ["address1", ["SOAP::SOAPString", XSD::QName.new(nil, "Address1")], [0, 1]],
            ["address2", ["SOAP::SOAPString", XSD::QName.new(nil, "Address2")], [0, 1]],
            ["city", ["SOAP::SOAPString", XSD::QName.new(nil, "City")], [0, 1]],
            ["state", [nil, XSD::QName.new(nil, "State")], [0, 1]],
            ["postalCode", [nil, XSD::QName.new(nil, "PostalCode")], [0, 1]],
            ["postalRoutingCode", [nil, XSD::QName.new(nil, "PostalRoutingCode")], [0, 1]]
        ]
    )

    Registry.register(
        :class => Sevis::USAddressType,
        :schema_type => XSD::QName.new(NsCommon, "USAddressType"),
        :schema_element => [
            ["address1", ["SOAP::SOAPString", XSD::QName.new(nil, "Address1")]],
            ["address2", ["SOAP::SOAPString", XSD::QName.new(nil, "Address2")], [0, 1]],
            ["city", ["SOAP::SOAPString", XSD::QName.new(nil, "City")]],
            ["state", ["Sevis::StateCodeType", XSD::QName.new(nil, "State")]],
            ["postalCode", [nil, XSD::QName.new(nil, "PostalCode")]],
            ["postalRoutingCode", [nil, XSD::QName.new(nil, "PostalRoutingCode")], [0, 1]]
        ]
    )

    Registry.register(
        :class => Sevis::USAddrDoctorType,
        :schema_type => XSD::QName.new(NsCommon, "USAddrDoctorType"),
        :schema_element => [
            ["address1", ["SOAP::SOAPString", XSD::QName.new(nil, "Address1")]],
            ["address2", ["SOAP::SOAPString", XSD::QName.new(nil, "Address2")], [0, 1]],
            ["city", ["SOAP::SOAPString", XSD::QName.new(nil, "City")], [0, 1]],
            ["state", ["Sevis::StateCodeType", XSD::QName.new(nil, "State")], [0, 1]],
            ["postalCode", [nil, XSD::QName.new(nil, "PostalCode")]],
            ["explanationCode", ["SOAP::SOAPString", XSD::QName.new(nil, "ExplanationCode")], [0, 1]],
            ["explanation", ["SOAP::SOAPString", XSD::QName.new(nil, "Explanation")], [0, 1]]
        ]
    )

    Registry.register(
        :class => Sevis::USAddrDoctorResponseType,
        :schema_type => XSD::QName.new(NsCommon, "USAddrDoctorResponseType"),
        :schema_element => [
            ["address1", ["SOAP::SOAPString", XSD::QName.new(nil, "Address1")]],
            ["address2", ["SOAP::SOAPString", XSD::QName.new(nil, "Address2")], [0, 1]],
            ["city", ["SOAP::SOAPString", XSD::QName.new(nil, "City")], [0, 1]],
            ["state", ["Sevis::StateCodeType", XSD::QName.new(nil, "State")], [0, 1]],
            ["postalCode", ["SOAP::SOAPString", XSD::QName.new(nil, "PostalCode")]]
        ]
    )

    Registry.register(
        :class => Sevis::CapGapExtensionType,
        :schema_type => XSD::QName.new(NsTable, "CapGapExtensionType")
    )

    Registry.register(
        :class => Sevis::OPTCompletionType,
        :schema_type => XSD::QName.new(NsTable, "OPTCompletionType")
    )

    Registry.register(
        :class => Sevis::IndicatorTypeYN,
        :schema_type => XSD::QName.new(NsTable, "IndicatorTypeYN")
    )

    Registry.register(
        :class => Sevis::IndicatorTypeYNE,
        :schema_type => XSD::QName.new(NsTable, "IndicatorTypeYNE")
    )

    Registry.register(
        :class => Sevis::TrueIndicator,
        :schema_type => XSD::QName.new(NsTable, "TrueIndicator")
    )

    Registry.register(
        :class => Sevis::TrueValue,
        :schema_type => XSD::QName.new(NsTable, "TrueValue")
    )

    Registry.register(
        :class => Sevis::EmptyEnumerationType,
        :schema_type => XSD::QName.new(NsTable, "emptyEnumerationType")
    )

    Registry.register(
        :class => Sevis::GovAgencyCodeType,
        :schema_type => XSD::QName.new(NsTable, "GovAgencyCodeType")
    )

    Registry.register(
        :class => Sevis::PoeCodeType,
        :schema_type => XSD::QName.new(NsTable, "PoeCodeType")
    )

    Registry.register(
        :class => Sevis::ProgSubjectCodeBlankType,
        :schema_type => XSD::QName.new(NsTable, "ProgSubjectCodeBlankType")
    )

    Registry.register(
        :class => Sevis::ProgSubjectCodeType,
        :schema_type => XSD::QName.new(NsTable, "ProgSubjectCodeType")
    )

    Registry.register(
        :class => Sevis::CntryCodeWithoutType,
        :schema_type => XSD::QName.new(NsTable, "CntryCodeWithoutType")
    )

    Registry.register(
        :class => Sevis::CntryCodeWithCloseDateType,
        :schema_type => XSD::QName.new(NsTable, "CntryCodeWithCloseDateType")
    )

    Registry.register(
        :class => Sevis::VisaPostCodeType,
        :schema_type => XSD::QName.new(NsTable, "VisaPostCodeType")
    )

    Registry.register(
        :class => Sevis::BirthCntryCodeType,
        :schema_type => XSD::QName.new(NsTable, "BirthCntryCodeType")
    )

    Registry.register(
        :class => Sevis::StateCodeType,
        :schema_type => XSD::QName.new(NsTable, "StateCodeType")
    )

    Registry.register(
        :class => Sevis::DropBlwfullType,
        :schema_type => XSD::QName.new(NsTable, "DropBlwfullType")
    )

    Registry.register(
        :class => Sevis::GenderCodeType,
        :schema_type => XSD::QName.new(NsTable, "GenderCodeType")
    )

    Registry.register(
        :class => Sevis::EVGenderCodeType,
        :schema_type => XSD::QName.new(NsTable, "EVGenderCodeType")
    )

    Registry.register(
        :class => Sevis::DependentFMVisaType,
        :schema_type => XSD::QName.new(NsTable, "DependentFMVisaType")
    )

    Registry.register(
        :class => Sevis::StudentVisaCodeType,
        :schema_type => XSD::QName.new(NsTable, "StudentVisaCodeType")
    )

    Registry.register(
        :class => Sevis::EduLevelCodeType,
        :schema_type => XSD::QName.new(NsTable, "EduLevelCodeType")
    )

    Registry.register(
        :class => Sevis::DependentCodeType,
        :schema_type => XSD::QName.new(NsTable, "DependentCodeType")
    )

    Registry.register(
        :class => Sevis::EmploymentCodeType,
        :schema_type => XSD::QName.new(NsTable, "EmploymentCodeType")
    )

    Registry.register(
        :class => Sevis::OffCampusEmploymentCodeType,
        :schema_type => XSD::QName.new(NsTable, "OffCampusEmploymentCodeType")
    )

    Registry.register(
        :class => Sevis::EmploymentTimeType,
        :schema_type => XSD::QName.new(NsTable, "EmploymentTimeType")
    )

    Registry.register(
        :class => Sevis::StudentReprintRequestReasonType,
        :schema_type => XSD::QName.new(NsTable, "StudentReprintRequestReasonType")
    )

    Registry.register(
        :class => Sevis::StudentTerminationReasonType,
        :schema_type => XSD::QName.new(NsTable, "StudentTerminationReasonType")
    )

    Registry.register(
        :class => Sevis::DependentTerminationReasonType,
        :schema_type => XSD::QName.new(NsTable, "DependentTerminationReasonType")
    )

    Registry.register(
        :class => Sevis::NameSuffixCodeType,
        :schema_type => XSD::QName.new(NsTable, "NameSuffixCodeType")
    )

    Registry.register(
        :class => Sevis::EVVisaCodeType,
        :schema_type => XSD::QName.new(NsTable, "EVVisaCodeType")
    )

    Registry.register(
        :class => Sevis::EVReprintRequestReasonType,
        :schema_type => XSD::QName.new(NsTable, "EVReprintRequestReasonType")
    )

    Registry.register(
        :class => Sevis::EVCreateReasonType,
        :schema_type => XSD::QName.new(NsTable, "EVCreateReasonType")
    )

    Registry.register(
        :class => Sevis::EVCategoryCodeType,
        :schema_type => XSD::QName.new(NsTable, "EVCategoryCodeType")
    )

    Registry.register(
        :class => Sevis::EVOccupationCategoryCodeType,
        :schema_type => XSD::QName.new(NsTable, "EVOccupationCategoryCodeType")
    )

    Registry.register(
        :class => Sevis::InternationalOrgCodeType,
        :schema_type => XSD::QName.new(NsTable, "InternationalOrgCodeType")
    )

    Registry.register(
        :class => Sevis::EVPositionCodeType,
        :schema_type => XSD::QName.new(NsTable, "EVPositionCodeType")
    )

    Registry.register(
        :class => Sevis::MatriculationType,
        :schema_type => XSD::QName.new(NsTable, "MatriculationType")
    )

    Registry.register(
        :class => Sevis::EVInfractionCodeType,
        :schema_type => XSD::QName.new(NsTable, "EVInfractionCodeType")
    )

    Registry.register(
        :class => Sevis::EVTerminationReasonType,
        :schema_type => XSD::QName.new(NsTable, "EVTerminationReasonType")
    )

    Registry.register(
        :class => Sevis::EVDepTerminationReasonType,
        :schema_type => XSD::QName.new(NsTable, "EVDepTerminationReasonType")
    )

    Registry.register(
        :class => Sevis::EVCompletionCodeType,
        :schema_type => XSD::QName.new(NsTable, "EVCompletionCodeType")
    )

    Registry.register(
        :class => Sevis::DependentCompletionType,
        :schema_type => XSD::QName.new(NsTable, "DependentCompletionType")
    )

    Registry.register(
        :class => Sevis::StudentCreationReason,
        :schema_type => XSD::QName.new(NsTable, "StudentCreationReason")
    )

    Registry.register(
        :class => Sevis::StudentCancelReasonType,
        :schema_type => XSD::QName.new(NsTable, "StudentCancelReasonType")
    )

    Registry.register(
        :class => Sevis::DependentCancelReasonType,
        :schema_type => XSD::QName.new(NsTable, "DependentCancelReasonType")
    )

    Registry.register(
        :class => Sevis::StatusCodeType,
        :schema_type => XSD::QName.new(NsTable, "StatusCodeType")
    )

    Registry.register(
        :class => Sevis::EVPrintReasonType,
        :schema_type => XSD::QName.new(NsTable, "EVPrintReasonType")
    )

    Registry.register(
        :class => Sevis::USBornReasonType,
        :schema_type => XSD::QName.new(NsTable, "USBornReasonType")
    )

    Registry.register(
        :class => Sevis::EVResidentialType,
        :schema_type => XSD::QName.new(NsTable, "EVResidentialType")
    )

    Registry.register(
        :class => Sevis::SiteOfActivityType,
        :schema_type => XSD::QName.new(NsTable, "SiteOfActivityType")
    )

    Registry.register(
        :class => Sevis::TippExemptProgram,
        :schema_type => XSD::QName.new(NsTable, "TippExemptProgram")
    )

    Registry.register(
        :class => Sevis::AnnualRevenue,
        :schema_type => XSD::QName.new(NsTable, "AnnualRevenue")
    )

    Registry.register(
        :class => Sevis::StipendFrequency,
        :schema_type => XSD::QName.new(NsTable, "StipendFrequency")
    )

    Registry.register(
        :class => Sevis::EVHostFamilyIndicator,
        :schema_type => XSD::QName.new(NsTable, "EVHostFamilyIndicator")
    )

    Registry.register(
        :class => Sevis::CitizenshipStatusType,
        :schema_type => XSD::QName.new(NsTable, "CitizenshipStatusType")
    )

    Registry.register(
        :class => Sevis::SEVISBatchCreateUpdateStudent,
        :schema_name => XSD::QName.new(nil, "SEVISBatchCreateUpdateStudent"),
        :schema_element => [
            ["batchHeader", ["Sevis::BatchHeaderType", XSD::QName.new(nil, "BatchHeader")]],
            ["createStudent", ["Sevis::SEVISBatchCreateUpdateStudent::CreateStudent", XSD::QName.new(nil, "CreateStudent")], [0, 1]],
            ["updateStudent", ["Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent", XSD::QName.new(nil, "UpdateStudent")], [0, 1]]
        ],
        :schema_attribute => {
            XSD::QName.new(nil, "userID") => "SOAP::SOAPString"
        }
    )

    Registry.register(
        :class => Sevis::SEVISBatchCreateUpdateStudent::CreateStudent::Student::PersonalInfo::Telephone,
        :schema_name => XSD::QName.new(nil, "Telephone"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["telephoneExemptInd", ["Sevis::IndicatorTypeYN", XSD::QName.new(nil, "TelephoneExemptInd")]],
            ["phone", ["Sevis::TelephoneType", XSD::QName.new(nil, "Phone")], [0, 1]]
        ]
    )

    Registry.register(
        :class => Sevis::SEVISBatchCreateUpdateStudent::CreateStudent::Student::PersonalInfo,
        :schema_name => XSD::QName.new(nil, "PersonalInfo"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["fullName", ["Sevis::NameType", XSD::QName.new(nil, "FullName")]],
            ["birthDate", [nil, XSD::QName.new(nil, "BirthDate")]],
            ["gender", ["Sevis::GenderCodeType", XSD::QName.new(nil, "Gender")]],
            ["birthCountryCode", ["Sevis::BirthCntryCodeType", XSD::QName.new(nil, "BirthCountryCode")]],
            ["citizenshipStatus", ["Sevis::CitizenshipStatusType", XSD::QName.new(nil, "CitizenshipStatus")], [0, 1]],
            ["citizenshipCountryCode", ["Sevis::CntryCodeWithoutType", XSD::QName.new(nil, "CitizenshipCountryCode")]],
            ["email", [nil, XSD::QName.new(nil, "Email")], [0, 1]],
            ["commuter", [nil, XSD::QName.new(nil, "Commuter")], [0, 1]],
            ["visaType", ["Sevis::StudentVisaCodeType", XSD::QName.new(nil, "VisaType")]],
            ["telephone", ["Sevis::SEVISBatchCreateUpdateStudent::CreateStudent::Student::PersonalInfo::Telephone", XSD::QName.new(nil, "Telephone")], [0, 1]]
        ]
    )

    Registry.register(
        :class => Sevis::SEVISBatchCreateUpdateStudent::CreateStudent::Student::CreateDependent::Dependent,
        :schema_name => XSD::QName.new(nil, "Dependent"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["fullName", ["Sevis::NameType", XSD::QName.new(nil, "FullName")]],
            ["birthDate", [nil, XSD::QName.new(nil, "BirthDate")]],
            ["gender", ["Sevis::GenderCodeType", XSD::QName.new(nil, "Gender")]],
            ["birthCountryCode", ["Sevis::BirthCntryCodeType", XSD::QName.new(nil, "BirthCountryCode")]],
            ["citizenshipStatus", ["Sevis::CitizenshipStatusType", XSD::QName.new(nil, "CitizenshipStatus")], [0, 1]],
            ["citizenshipCountryCode", ["Sevis::CntryCodeWithoutType", XSD::QName.new(nil, "CitizenshipCountryCode")]],
            ["email", [nil, XSD::QName.new(nil, "Email")], [0, 1]],
            ["visaType", ["Sevis::DependentFMVisaType", XSD::QName.new(nil, "VisaType")]],
            ["relationship", ["Sevis::DependentCodeType", XSD::QName.new(nil, "Relationship")]],
            ["remarks", [nil, XSD::QName.new(nil, "Remarks")], [0, 1]],
            ["userDefinedA", [nil, XSD::QName.new(nil, "UserDefinedA")], [0, 1]],
            ["userDefinedB", [nil, XSD::QName.new(nil, "UserDefinedB")], [0, 1]]
        ]
    )

    Registry.register(
        :class => Sevis::SEVISBatchCreateUpdateStudent::CreateStudent::Student::CreateDependent,
        :schema_name => XSD::QName.new(nil, "CreateDependent"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["dependent", ["Sevis::SEVISBatchCreateUpdateStudent::CreateStudent::Student::CreateDependent::Dependent[]", XSD::QName.new(nil, "Dependent")], [1, 25]]
        ]
    )

    Registry.register(
        :class => Sevis::SEVISBatchCreateUpdateStudent::CreateStudent::Student,
        :schema_name => XSD::QName.new(nil, "Student"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["userDefinedA", [nil, XSD::QName.new(nil, "UserDefinedA")], [0, 1]],
            ["userDefinedB", [nil, XSD::QName.new(nil, "UserDefinedB")], [0, 1]],
            ["personalInfo", ["Sevis::SEVISBatchCreateUpdateStudent::CreateStudent::Student::PersonalInfo", XSD::QName.new(nil, "PersonalInfo")]],
            ["issueReason", ["Sevis::StudentCreationReason", XSD::QName.new(nil, "IssueReason")]],
            ["uSAddress", ["Sevis::USAddrDoctorType", XSD::QName.new(nil, "USAddress")], [0, 1]],
            ["mailingAddress", ["Sevis::USAddrDoctorType", XSD::QName.new(nil, "MailingAddress")], [0, 1]],
            ["foreignAddress", ["Sevis::ForeignAddrType", XSD::QName.new(nil, "ForeignAddress")]],
            ["educationalInfo", ["Sevis::EducationalInfoType", XSD::QName.new(nil, "EducationalInfo")]],
            ["financialInfo", ["Sevis::FinancialType", XSD::QName.new(nil, "FinancialInfo")]],
            ["createDependent", ["Sevis::SEVISBatchCreateUpdateStudent::CreateStudent::Student::CreateDependent", XSD::QName.new(nil, "CreateDependent")], [0, 1]],
            ["remarks", [nil, XSD::QName.new(nil, "Remarks")], [0, 1]]
        ],
        :schema_attribute => {
            XSD::QName.new(nil, "requestID") => "SOAP::SOAPString",
            XSD::QName.new(nil, "userID") => "SOAP::SOAPString",
            XSD::QName.new(nil, "printForm") => "SOAP::SOAPBoolean"
        }
    )

    Registry.register(
        :class => Sevis::SEVISBatchCreateUpdateStudent::CreateStudent,
        :schema_name => XSD::QName.new(nil, "CreateStudent"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["student", ["Sevis::SEVISBatchCreateUpdateStudent::CreateStudent::Student[]", XSD::QName.new(nil, "Student")], [1, 250]]
        ]
    )

    Registry.register(
        :class => Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::AuthDropBelowFC::Add,
        :schema_name => XSD::QName.new(nil, "Add"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["reason", ["Sevis::DropBlwfullType", XSD::QName.new(nil, "Reason")]],
            ["startDate", [nil, XSD::QName.new(nil, "StartDate")]],
            ["endDate", [nil, XSD::QName.new(nil, "EndDate")]],
            ["remarks", [nil, XSD::QName.new(nil, "Remarks")], [0, 1]]
        ],
        :schema_attribute => {
            XSD::QName.new(nil, "printForm") => "SOAP::SOAPBoolean"
        }
    )

    Registry.register(
        :class => Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::AuthDropBelowFC::Cancel,
        :schema_name => XSD::QName.new(nil, "Cancel"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["reason", ["Sevis::DropBlwfullType", XSD::QName.new(nil, "Reason")]],
            ["startDate", [nil, XSD::QName.new(nil, "StartDate")]],
            ["endDate", [nil, XSD::QName.new(nil, "EndDate")]]
        ],
        :schema_attribute => {
            XSD::QName.new(nil, "printForm") => "SOAP::SOAPBoolean"
        }
    )

    Registry.register(
        :class => Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::AuthDropBelowFC::Edit,
        :schema_name => XSD::QName.new(nil, "Edit"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["reason", ["Sevis::DropBlwfullType", XSD::QName.new(nil, "Reason")]],
            ["startDate", [nil, XSD::QName.new(nil, "StartDate")]],
            ["endDate", [nil, XSD::QName.new(nil, "EndDate")]],
            ["remarks", [nil, XSD::QName.new(nil, "Remarks")], [0, 1]],
            ["newReason", ["Sevis::DropBlwfullType", XSD::QName.new(nil, "NewReason")], [0, 1]],
            ["newStartDate", [nil, XSD::QName.new(nil, "NewStartDate")], [0, 1]],
            ["newEndDate", [nil, XSD::QName.new(nil, "NewEndDate")], [0, 1]]
        ],
        :schema_attribute => {
            XSD::QName.new(nil, "printForm") => "SOAP::SOAPBoolean"
        }
    )

    Registry.register(
        :class => Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::AuthDropBelowFC,
        :schema_name => XSD::QName.new(nil, "AuthDropBelowFC"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [:choice,
                            ["add", ["Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::AuthDropBelowFC::Add", XSD::QName.new(nil, "Add")]],
                            ["cancel", ["Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::AuthDropBelowFC::Cancel", XSD::QName.new(nil, "Cancel")]],
                            ["edit", ["Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::AuthDropBelowFC::Edit", XSD::QName.new(nil, "Edit")]]
        ]
    )

    Registry.register(
        :class => Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::CPTEmployment::Add,
        :schema_name => XSD::QName.new(nil, "Add"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["startDate", [nil, XSD::QName.new(nil, "StartDate")]],
            ["endDate", [nil, XSD::QName.new(nil, "EndDate")]],
            ["fullPartTimeIndicator", ["Sevis::EmploymentTimeType", XSD::QName.new(nil, "FullPartTimeIndicator")]],
            ["employerName", ["SOAP::SOAPString", XSD::QName.new(nil, "EmployerName")]],
            ["employerAddress", ["Sevis::USAddressType", XSD::QName.new(nil, "EmployerAddress")]],
            ["courseRelevance", [nil, XSD::QName.new(nil, "CourseRelevance")], [0, 1]],
            ["remarks", [nil, XSD::QName.new(nil, "Remarks")], [0, 1]]
        ],
        :schema_attribute => {
            XSD::QName.new(nil, "printForm") => "SOAP::SOAPBoolean"
        }
    )

    Registry.register(
        :class => Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::CPTEmployment::Cancel,
        :schema_name => XSD::QName.new(nil, "Cancel"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["startDate", [nil, XSD::QName.new(nil, "StartDate")]],
            ["endDate", [nil, XSD::QName.new(nil, "EndDate")]],
            ["fullPartTimeIndicator", ["Sevis::EmploymentTimeType", XSD::QName.new(nil, "FullPartTimeIndicator")]],
            ["employerName", ["SOAP::SOAPString", XSD::QName.new(nil, "EmployerName")]]
        ],
        :schema_attribute => {
            XSD::QName.new(nil, "printForm") => "SOAP::SOAPBoolean"
        }
    )

    Registry.register(
        :class => Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::CPTEmployment,
        :schema_name => XSD::QName.new(nil, "CPTEmployment"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [:choice,
                            ["add", ["Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::CPTEmployment::Add", XSD::QName.new(nil, "Add")]],
                            ["cancel", ["Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::CPTEmployment::Cancel", XSD::QName.new(nil, "Cancel")]]
        ]
    )

    Registry.register(
        :class => Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::Dependent::Add,
        :schema_name => XSD::QName.new(nil, "Add"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["fullName", ["Sevis::NameType", XSD::QName.new(nil, "FullName")]],
            ["birthDate", [nil, XSD::QName.new(nil, "BirthDate")]],
            ["gender", ["Sevis::GenderCodeType", XSD::QName.new(nil, "Gender")]],
            ["birthCountryCode", ["Sevis::BirthCntryCodeType", XSD::QName.new(nil, "BirthCountryCode")]],
            ["citizenshipStatus", ["Sevis::CitizenshipStatusType", XSD::QName.new(nil, "CitizenshipStatus")], [0, 1]],
            ["citizenshipCountryCode", ["Sevis::CntryCodeWithoutType", XSD::QName.new(nil, "CitizenshipCountryCode")]],
            ["email", [nil, XSD::QName.new(nil, "Email")], [0, 1]],
            ["visaType", ["Sevis::DependentFMVisaType", XSD::QName.new(nil, "VisaType")]],
            ["relationship", ["Sevis::DependentCodeType", XSD::QName.new(nil, "Relationship")]],
            ["remarks", [nil, XSD::QName.new(nil, "Remarks")], [0, 1]]
        ],
        :schema_attribute => {
            XSD::QName.new(nil, "printForm") => "SOAP::SOAPBoolean"
        }
    )

    Registry.register(
        :class => Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::Dependent::Cancel,
        :schema_name => XSD::QName.new(nil, "Cancel"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["reason", ["Sevis::DependentCancelReasonType", XSD::QName.new(nil, "Reason")]],
            ["remarks", [nil, XSD::QName.new(nil, "Remarks")], [0, 1]]
        ],
        :schema_attribute => {
            XSD::QName.new(nil, "dependentSevisID") => "SOAP::SOAPString"
        }
    )

    Registry.register(
        :class => Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::Dependent::Edit,
        :schema_name => XSD::QName.new(nil, "Edit"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["fullName", ["Sevis::NameNullableType", XSD::QName.new(nil, "FullName")], [0, 1]],
            ["birthDate", [nil, XSD::QName.new(nil, "BirthDate")], [0, 1]],
            ["gender", ["Sevis::GenderCodeType", XSD::QName.new(nil, "Gender")], [0, 1]],
            ["birthCountryCode", ["Sevis::BirthCntryCodeType", XSD::QName.new(nil, "BirthCountryCode")], [0, 1]],
            ["citizenshipStatus", ["Sevis::CitizenshipStatusType", XSD::QName.new(nil, "CitizenshipStatus")], [0, 1]],
            ["citizenshipCountryCode", [nil, XSD::QName.new(nil, "CitizenshipCountryCode")], [0, 1]],
            ["email", [nil, XSD::QName.new(nil, "Email")], [0, 1]],
            ["relationship", ["Sevis::DependentCodeType", XSD::QName.new(nil, "Relationship")], [0, 1]],
            ["remarks", [nil, XSD::QName.new(nil, "Remarks")], [0, 1]]
        ],
        :schema_attribute => {
            XSD::QName.new(nil, "printForm") => "SOAP::SOAPBoolean",
            XSD::QName.new(nil, "dependentSevisID") => "SOAP::SOAPString"
        }
    )

    Registry.register(
        :class => Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::Dependent::Reactivate,
        :schema_name => XSD::QName.new(nil, "Reactivate"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [],
        :schema_attribute => {
            XSD::QName.new(nil, "printForm") => "SOAP::SOAPBoolean",
            XSD::QName.new(nil, "dependentSevisID") => "SOAP::SOAPString"
        }
    )

    Registry.register(
        :class => Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::Dependent::Reprint,
        :schema_name => XSD::QName.new(nil, "Reprint"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [],
        :schema_attribute => {
            XSD::QName.new(nil, "printForm") => "SOAP::SOAPBoolean",
            XSD::QName.new(nil, "dependentSevisID") => "SOAP::SOAPString"
        }
    )

    Registry.register(
        :class => Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::Dependent::Terminate,
        :schema_name => XSD::QName.new(nil, "Terminate"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["reason", ["Sevis::DependentTerminationReasonType", XSD::QName.new(nil, "Reason")]],
            ["otherRemarks", [nil, XSD::QName.new(nil, "OtherRemarks")], [0, 1]],
            ["remarks", [nil, XSD::QName.new(nil, "Remarks")], [0, 1]]
        ],
        :schema_attribute => {
            XSD::QName.new(nil, "dependentSevisID") => "SOAP::SOAPString"
        }
    )

    Registry.register(
        :class => Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::Dependent,
        :schema_name => XSD::QName.new(nil, "Dependent"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["userDefinedA", [nil, XSD::QName.new(nil, "UserDefinedA")], [0, 1]],
            ["userDefinedB", [nil, XSD::QName.new(nil, "UserDefinedB")], [0, 1]],
            [:choice,
             ["add", ["Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::Dependent::Add", XSD::QName.new(nil, "Add")]],
             ["cancel", ["Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::Dependent::Cancel", XSD::QName.new(nil, "Cancel")]],
             ["edit", ["Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::Dependent::Edit", XSD::QName.new(nil, "Edit")]],
             ["reactivate", ["Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::Dependent::Reactivate", XSD::QName.new(nil, "Reactivate")]],
             ["reprint", ["Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::Dependent::Reprint", XSD::QName.new(nil, "Reprint")]],
             ["terminate", ["Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::Dependent::Terminate", XSD::QName.new(nil, "Terminate")]]
            ]
        ]
    )

    Registry.register(
        :class => Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::DisciplinaryAction,
        :schema_name => XSD::QName.new(nil, "DisciplinaryAction"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["explanation", [nil, XSD::QName.new(nil, "Explanation")]]
        ]
    )

    Registry.register(
        :class => Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::EducationLevel::Cancel,
        :schema_name => XSD::QName.new(nil, "Cancel"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["remarks", [nil, XSD::QName.new(nil, "Remarks")], [0, 1]]
        ]
    )

    Registry.register(
        :class => Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::EducationLevel::Change,
        :schema_name => XSD::QName.new(nil, "Change"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["educationalInfo", ["Sevis::EducationalInfoType", XSD::QName.new(nil, "EducationalInfo")]],
            ["financialInfo", ["Sevis::FinancialType", XSD::QName.new(nil, "FinancialInfo")]],
            ["remarks", [nil, XSD::QName.new(nil, "Remarks")], [0, 1]]
        ],
        :schema_attribute => {
            XSD::QName.new(nil, "printForm") => "SOAP::SOAPBoolean"
        }
    )

    Registry.register(
        :class => Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::EducationLevel,
        :schema_name => XSD::QName.new(nil, "EducationLevel"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [:choice,
                            ["cancel", ["Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::EducationLevel::Cancel", XSD::QName.new(nil, "Cancel")]],
                            ["change", ["Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::EducationLevel::Change", XSD::QName.new(nil, "Change")]]
        ]
    )

    Registry.register(
        :class => Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::FinancialInfo::Expense,
        :schema_name => XSD::QName.new(nil, "Expense"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["tuition", [nil, XSD::QName.new(nil, "Tuition")], [0, 1]],
            ["livingExpense", [nil, XSD::QName.new(nil, "LivingExpense")], [0, 1]],
            ["dependentExp", [nil, XSD::QName.new(nil, "DependentExp")], [0, 1]],
            ["other", ["Sevis::FinancialAmountNullableType", XSD::QName.new(nil, "Other")], [0, 1]]
        ]
    )

    Registry.register(
        :class => Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::FinancialInfo::Funding,
        :schema_name => XSD::QName.new(nil, "Funding"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["personal", [nil, XSD::QName.new(nil, "Personal")], [0, 1]],
            ["school", ["Sevis::FinancialAmountNullableType", XSD::QName.new(nil, "School")], [0, 1]],
            ["other", ["Sevis::FinancialAmountNullableType", XSD::QName.new(nil, "Other")], [0, 1]],
            ["employment", [nil, XSD::QName.new(nil, "Employment")], [0, 1]]
        ]
    )

    Registry.register(
        :class => Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::FinancialInfo,
        :schema_name => XSD::QName.new(nil, "FinancialInfo"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["academicTerm", ["SOAP::SOAPString", XSD::QName.new(nil, "AcademicTerm")], [0, 1]],
            ["expense", ["Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::FinancialInfo::Expense", XSD::QName.new(nil, "Expense")], [0, 1]],
            ["funding", ["Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::FinancialInfo::Funding", XSD::QName.new(nil, "Funding")], [0, 1]],
            ["remarks", [nil, XSD::QName.new(nil, "Remarks")], [0, 1]]
        ],
        :schema_attribute => {
            XSD::QName.new(nil, "printForm") => "SOAP::SOAPBoolean"
        }
    )

    Registry.register(
        :class => Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::OffCampusEmployment::Add,
        :schema_name => XSD::QName.new(nil, "Add"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["startDate", [nil, XSD::QName.new(nil, "StartDate")]],
            ["endDate", [nil, XSD::QName.new(nil, "EndDate")]],
            ["employmentType", ["Sevis::OffCampusEmploymentCodeType", XSD::QName.new(nil, "EmploymentType")]],
            ["recommendation", [nil, XSD::QName.new(nil, "Recommendation")], [0, 1]]
        ],
        :schema_attribute => {
            XSD::QName.new(nil, "printForm") => "SOAP::SOAPBoolean"
        }
    )

    Registry.register(
        :class => Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::OffCampusEmployment::Cancel,
        :schema_name => XSD::QName.new(nil, "Cancel"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["startDate", [nil, XSD::QName.new(nil, "StartDate")]],
            ["endDate", [nil, XSD::QName.new(nil, "EndDate")]],
            ["employmentType", ["Sevis::OffCampusEmploymentCodeType", XSD::QName.new(nil, "EmploymentType")]]
        ],
        :schema_attribute => {
            XSD::QName.new(nil, "printForm") => "SOAP::SOAPBoolean"
        }
    )

    Registry.register(
        :class => Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::OffCampusEmployment::Edit,
        :schema_name => XSD::QName.new(nil, "Edit"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["startDate", [nil, XSD::QName.new(nil, "StartDate")]],
            ["endDate", [nil, XSD::QName.new(nil, "EndDate")]],
            ["employmentType", ["Sevis::OffCampusEmploymentCodeType", XSD::QName.new(nil, "EmploymentType")]],
            ["newStartDate", [nil, XSD::QName.new(nil, "NewStartDate")], [0, 1]],
            ["newEndDate", [nil, XSD::QName.new(nil, "NewEndDate")], [0, 1]],
            ["newEmploymentType", ["Sevis::OffCampusEmploymentCodeType", XSD::QName.new(nil, "NewEmploymentType")], [0, 1]],
            ["recommendation", [nil, XSD::QName.new(nil, "Recommendation")], [0, 1]]
        ],
        :schema_attribute => {
            XSD::QName.new(nil, "printForm") => "SOAP::SOAPBoolean"
        }
    )

    Registry.register(
        :class => Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::OffCampusEmployment,
        :schema_name => XSD::QName.new(nil, "OffCampusEmployment"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [:choice,
                            ["add", ["Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::OffCampusEmployment::Add", XSD::QName.new(nil, "Add")]],
                            ["cancel", ["Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::OffCampusEmployment::Cancel", XSD::QName.new(nil, "Cancel")]],
                            ["edit", ["Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::OffCampusEmployment::Edit", XSD::QName.new(nil, "Edit")]]
        ]
    )

    Registry.register(
        :class => Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::OPTEmployment::Add,
        :schema_name => XSD::QName.new(nil, "Add"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["startDate", [nil, XSD::QName.new(nil, "StartDate")]],
            ["endDate", [nil, XSD::QName.new(nil, "EndDate")]],
            ["fullPartTimeIndicator", ["Sevis::EmploymentTimeType", XSD::QName.new(nil, "FullPartTimeIndicator")]],
            ["academicYearMet", [nil, XSD::QName.new(nil, "AcademicYearMet")]],
            ["completionType", ["Sevis::OPTCompletionType", XSD::QName.new(nil, "CompletionType")], [0, 1]],
            ["studentRemarks", [nil, XSD::QName.new(nil, "StudentRemarks")], [0, 1]],
            ["remarks", [nil, XSD::QName.new(nil, "Remarks")], [0, 1]],
            ["employer", ["Sevis::Employer[]", XSD::QName.new(nil, "Employer")], [0, nil]]
        ],
        :schema_attribute => {
            XSD::QName.new(nil, "printForm") => "SOAP::SOAPBoolean"
        }
    )

    Registry.register(
        :class => Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::OPTEmployment::Cancel,
        :schema_name => XSD::QName.new(nil, "Cancel"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["startDate", [nil, XSD::QName.new(nil, "StartDate")]],
            ["endDate", [nil, XSD::QName.new(nil, "EndDate")]],
            ["fullPartTimeIndicator", ["Sevis::EmploymentTimeType", XSD::QName.new(nil, "FullPartTimeIndicator")]]
        ],
        :schema_attribute => {
            XSD::QName.new(nil, "printForm") => "SOAP::SOAPBoolean"
        }
    )

    Registry.register(
        :class => Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::OPTEmployment::Edit,
        :schema_name => XSD::QName.new(nil, "Edit"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["startDate", [nil, XSD::QName.new(nil, "StartDate")]],
            ["endDate", [nil, XSD::QName.new(nil, "EndDate")]],
            ["fullPartTimeIndicator", ["Sevis::EmploymentTimeType", XSD::QName.new(nil, "FullPartTimeIndicator")]],
            ["newFullPartTimeIndicator", ["Sevis::EmploymentTimeType", XSD::QName.new(nil, "NewFullPartTimeIndicator")], [0, 1]],
            ["academicYearMet", [nil, XSD::QName.new(nil, "AcademicYearMet")], [0, 1]],
            ["studentRemarks", [nil, XSD::QName.new(nil, "StudentRemarks")], [0, 1]],
            ["remarks", [nil, XSD::QName.new(nil, "Remarks")], [0, 1]]
        ],
        :schema_attribute => {
            XSD::QName.new(nil, "printForm") => "SOAP::SOAPBoolean"
        }
    )

    Registry.register(
        :class => Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::OPTEmployment::Extend,
        :schema_name => XSD::QName.new(nil, "Extend"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["startDate", [nil, XSD::QName.new(nil, "StartDate")]],
            ["endDate", [nil, XSD::QName.new(nil, "EndDate")]],
            ["fullPartTimeIndicator", ["Sevis::EmploymentTimeType", XSD::QName.new(nil, "FullPartTimeIndicator")]],
            ["employer", ["Sevis::Employer[]", XSD::QName.new(nil, "Employer")], [1, nil]]
        ],
        :schema_attribute => {
            XSD::QName.new(nil, "printForm") => "SOAP::SOAPBoolean"
        }
    )

    Registry.register(
        :class => Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::OPTEmployment,
        :schema_name => XSD::QName.new(nil, "OPTEmployment"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [:choice,
                            ["add", ["Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::OPTEmployment::Add", XSD::QName.new(nil, "Add")]],
                            ["cancel", ["Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::OPTEmployment::Cancel", XSD::QName.new(nil, "Cancel")]],
                            ["edit", ["Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::OPTEmployment::Edit", XSD::QName.new(nil, "Edit")]],
                            ["extend", ["Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::OPTEmployment::Extend", XSD::QName.new(nil, "Extend")]],
                            ["reportParticipation", ["Sevis::OPTEmploymentType", XSD::QName.new(nil, "ReportParticipation")]]
        ]
    )

    Registry.register(
        :class => Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::OPTEmployer::Add,
        :schema_name => XSD::QName.new(nil, "Add"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["employmentIdentifier", ["Sevis::EmploymentIdentifier", XSD::QName.new(nil, "EmploymentIdentifier")]],
            ["employer", ["Sevis::Employer[]", XSD::QName.new(nil, "Employer")], [0, nil]]
        ],
        :schema_attribute => {
            XSD::QName.new(nil, "printForm") => "SOAP::SOAPBoolean"
        }
    )

    Registry.register(
        :class => Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::OPTEmployer::Edit,
        :schema_name => XSD::QName.new(nil, "Edit"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["employmentIdentifier", ["Sevis::EmploymentIdentifier", XSD::QName.new(nil, "EmploymentIdentifier")]],
            ["employerIdentifier", ["Sevis::EmployerIdentifier", XSD::QName.new(nil, "EmployerIdentifier")]],
            ["employer", ["Sevis::UpdateEmployerType", XSD::QName.new(nil, "Employer")]]
        ],
        :schema_attribute => {
            XSD::QName.new(nil, "printForm") => "SOAP::SOAPBoolean"
        }
    )

    Registry.register(
        :class => Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::OPTEmployer,
        :schema_name => XSD::QName.new(nil, "OPTEmployer"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [:choice,
                            ["add", ["Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::OPTEmployer::Add", XSD::QName.new(nil, "Add")]],
                            ["edit", ["Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::OPTEmployer::Edit", XSD::QName.new(nil, "Edit")]]
        ]
    )

    Registry.register(
        :class => Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::PersonalInfo::Telephone,
        :schema_name => XSD::QName.new(nil, "Telephone"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["telephoneExemptInd", ["Sevis::IndicatorTypeYN", XSD::QName.new(nil, "TelephoneExemptInd")]],
            ["phone", ["Sevis::TelephoneType", XSD::QName.new(nil, "Phone")], [0, 1]]
        ]
    )

    Registry.register(
        :class => Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::PersonalInfo,
        :schema_name => XSD::QName.new(nil, "PersonalInfo"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["fullName", ["Sevis::NameNullableType", XSD::QName.new(nil, "FullName")], [0, 1]],
            ["birthDate", [nil, XSD::QName.new(nil, "BirthDate")], [0, 1]],
            ["gender", ["Sevis::GenderCodeType", XSD::QName.new(nil, "Gender")], [0, 1]],
            ["birthCountryCode", ["Sevis::BirthCntryCodeType", XSD::QName.new(nil, "BirthCountryCode")], [0, 1]],
            ["citizenshipStatus", ["Sevis::CitizenshipStatusType", XSD::QName.new(nil, "CitizenshipStatus")], [0, 1]],
            ["citizenshipCountryCode", ["Sevis::CntryCodeWithoutType", XSD::QName.new(nil, "CitizenshipCountryCode")], [0, 1]],
            ["email", [nil, XSD::QName.new(nil, "Email")], [0, 1]],
            ["telephone", ["Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::PersonalInfo::Telephone", XSD::QName.new(nil, "Telephone")], [0, 1]],
            ["commuter", [nil, XSD::QName.new(nil, "Commuter")], [0, 1]],
            ["uSAddress", ["Sevis::USAddrDoctorType", XSD::QName.new(nil, "USAddress")], [0, 1]],
            ["mailingAddress", ["Sevis::USAddrDoctorType", XSD::QName.new(nil, "MailingAddress")], [0, 1]],
            ["foreignAddress", ["Sevis::ForeignAddrNullableType", XSD::QName.new(nil, "ForeignAddress")], [0, 1]],
            ["remarks", [nil, XSD::QName.new(nil, "Remarks")], [0, 1]]
        ],
        :schema_attribute => {
            XSD::QName.new(nil, "printForm") => "SOAP::SOAPBoolean"
        }
    )

    Registry.register(
        :class => Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::Program::CancelExtension,
        :schema_name => XSD::QName.new(nil, "CancelExtension"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["newPrgEndDate", [nil, XSD::QName.new(nil, "NewPrgEndDate")]],
            ["remarks", [nil, XSD::QName.new(nil, "Remarks")], [0, 1]]
        ],
        :schema_attribute => {
            XSD::QName.new(nil, "printForm") => "SOAP::SOAPBoolean"
        }
    )

    Registry.register(
        :class => Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::Program::ManageSessionDates,
        :schema_name => XSD::QName.new(nil, "ManageSessionDates"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["issDate", [nil, XSD::QName.new(nil, "IssDate")]],
            ["newPrgStartDate", [nil, XSD::QName.new(nil, "NewPrgStartDate")]],
            ["newPrgEndDate", [nil, XSD::QName.new(nil, "NewPrgEndDate")]],
            ["remarks", [nil, XSD::QName.new(nil, "Remarks")], [0, 1]]
        ],
        :schema_attribute => {
            XSD::QName.new(nil, "printForm") => "SOAP::SOAPBoolean"
        }
    )

    Registry.register(
        :class => Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::Program::Edit::EngProficiency,
        :schema_name => XSD::QName.new(nil, "EngProficiency"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["engRequired", [nil, XSD::QName.new(nil, "EngRequired")]],
            ["requirementsMet", [nil, XSD::QName.new(nil, "RequirementsMet")], [0, 1]],
            ["notRequiredReason", [nil, XSD::QName.new(nil, "NotRequiredReason")], [0, 1]]
        ]
    )

    Registry.register(
        :class => Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::Program::Edit,
        :schema_name => XSD::QName.new(nil, "Edit"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["level", ["Sevis::EduLevelCodeType", XSD::QName.new(nil, "Level")], [0, 1]],
            ["majorCode1", ["Sevis::ProgSubjectCodeType", XSD::QName.new(nil, "MajorCode1")], [0, 1]],
            ["majorCode2", [nil, XSD::QName.new(nil, "MajorCode2")], [0, 1]],
            ["minor", [nil, XSD::QName.new(nil, "Minor")], [0, 1]],
            ["engProficiency", ["Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::Program::Edit::EngProficiency", XSD::QName.new(nil, "EngProficiency")], [0, 1]],
            ["remarks", [nil, XSD::QName.new(nil, "Remarks")], [0, 1]]
        ],
        :schema_attribute => {
            XSD::QName.new(nil, "printForm") => "SOAP::SOAPBoolean"
        }
    )

    Registry.register(
        :class => Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::Program::Extension,
        :schema_name => XSD::QName.new(nil, "Extension"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["newPrgEndDate", [nil, XSD::QName.new(nil, "NewPrgEndDate")]],
            ["remarks", [nil, XSD::QName.new(nil, "Remarks")], [0, 1]],
            ["explanation", [nil, XSD::QName.new(nil, "Explanation")]]
        ],
        :schema_attribute => {
            XSD::QName.new(nil, "printForm") => "SOAP::SOAPBoolean"
        }
    )

    Registry.register(
        :class => Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::Program::Shorten,
        :schema_name => XSD::QName.new(nil, "Shorten"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["newPrgEndDate", [nil, XSD::QName.new(nil, "NewPrgEndDate")]],
            ["remarks", [nil, XSD::QName.new(nil, "Remarks")], [0, 1]]
        ],
        :schema_attribute => {
            XSD::QName.new(nil, "printForm") => "SOAP::SOAPBoolean"
        }
    )

    Registry.register(
        :class => Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::Program,
        :schema_name => XSD::QName.new(nil, "Program"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [:choice,
                            ["cancelExtension", ["Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::Program::CancelExtension", XSD::QName.new(nil, "CancelExtension")]],
                            ["manageSessionDates", ["Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::Program::ManageSessionDates", XSD::QName.new(nil, "ManageSessionDates")]],
                            ["edit", ["Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::Program::Edit", XSD::QName.new(nil, "Edit")]],
                            ["extension", ["Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::Program::Extension", XSD::QName.new(nil, "Extension")]],
                            ["shorten", ["Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::Program::Shorten", XSD::QName.new(nil, "Shorten")]]
        ]
    )

    Registry.register(
        :class => Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::Registration::Telephone,
        :schema_name => XSD::QName.new(nil, "Telephone"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["telephoneExemptInd", ["Sevis::IndicatorTypeYN", XSD::QName.new(nil, "TelephoneExemptInd")]],
            ["phone", ["Sevis::TelephoneType", XSD::QName.new(nil, "Phone")], [0, 1]]
        ]
    )

    Registry.register(
        :class => Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::Registration,
        :schema_name => XSD::QName.new(nil, "Registration"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["lastSession", [nil, XSD::QName.new(nil, "LastSession")]],
            ["currentSessionStartDate", [nil, XSD::QName.new(nil, "CurrentSessionStartDate")]],
            ["currentSessionEndDate", [nil, XSD::QName.new(nil, "CurrentSessionEndDate")]],
            ["nextSessionStartDate", [nil, XSD::QName.new(nil, "NextSessionStartDate")], [0, 1]],
            ["studyResearchAbroad", [nil, XSD::QName.new(nil, "StudyResearchAbroad")], [0, 1]],
            ["thesisDissertation", [nil, XSD::QName.new(nil, "ThesisDissertation")], [0, 1]],
            ["email", [nil, XSD::QName.new(nil, "Email")], [0, 1]],
            ["telephone", ["Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::Registration::Telephone", XSD::QName.new(nil, "Telephone")], [0, 1]],
            ["commuter", [nil, XSD::QName.new(nil, "Commuter")], [0, 1]],
            ["uSAddress", ["Sevis::USAddrDoctorType", XSD::QName.new(nil, "USAddress")], [0, 1]],
            ["foreignAddress", ["Sevis::ForeignAddrNullableType", XSD::QName.new(nil, "ForeignAddress")], [0, 1]],
            ["remarks", [nil, XSD::QName.new(nil, "Remarks")], [0, 1]]
        ],
        :schema_attribute => {
            XSD::QName.new(nil, "printForm") => "SOAP::SOAPBoolean"
        }
    )

    Registry.register(
        :class => Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::Request::CapGapExtension,
        :schema_name => XSD::QName.new(nil, "CapGapExtension"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [:choice,
                            ["status", ["Sevis::CapGapExtensionType", XSD::QName.new(nil, "Status")]]
        ],
        :schema_attribute => {
            XSD::QName.new(nil, "printForm") => "SOAP::SOAPBoolean"
        }
    )

    Registry.register(
        :class => Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::Request,
        :schema_name => XSD::QName.new(nil, "Request"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [:choice,
                            ["capGapExtension", ["Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::Request::CapGapExtension", XSD::QName.new(nil, "CapGapExtension")]]
        ]
    )

    Registry.register(
        :class => Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::Status::Cancel,
        :schema_name => XSD::QName.new(nil, "Cancel"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["reason", ["Sevis::StudentCancelReasonType", XSD::QName.new(nil, "Reason")]],
            ["remarks", [nil, XSD::QName.new(nil, "Remarks")], [0, 1]]
        ]
    )

    Registry.register(
        :class => Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::Status::Complete,
        :schema_name => XSD::QName.new(nil, "Complete"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["remarks", [nil, XSD::QName.new(nil, "Remarks")], [0, 1]]
        ]
    )

    Registry.register(
        :class => Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::Status::Terminate,
        :schema_name => XSD::QName.new(nil, "Terminate"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["reason", ["Sevis::StudentTerminationReasonType", XSD::QName.new(nil, "Reason")]],
            ["otherRemarks", [nil, XSD::QName.new(nil, "OtherRemarks")], [0, 1]],
            ["remarks", [nil, XSD::QName.new(nil, "Remarks")], [0, 1]]
        ]
    )

    Registry.register(
        :class => Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::Status,
        :schema_name => XSD::QName.new(nil, "Status"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [:choice,
                            ["cancel", ["Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::Status::Cancel", XSD::QName.new(nil, "Cancel")]],
                            ["complete", ["Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::Status::Complete", XSD::QName.new(nil, "Complete")]],
                            ["terminate", ["Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::Status::Terminate", XSD::QName.new(nil, "Terminate")]],
                            ["verify", ["Sevis::EmptyType", XSD::QName.new(nil, "Verify")]]
        ]
    )

    Registry.register(
        :class => Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student,
        :schema_name => XSD::QName.new(nil, "Student"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["userDefinedA", [nil, XSD::QName.new(nil, "UserDefinedA")], [0, 1]],
            ["userDefinedB", [nil, XSD::QName.new(nil, "UserDefinedB")], [0, 1]],
            [:choice,
             ["authDropBelowFC", ["Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::AuthDropBelowFC", XSD::QName.new(nil, "AuthDropBelowFC")]],
             ["cPTEmployment", ["Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::CPTEmployment", XSD::QName.new(nil, "CPTEmployment")]],
             ["dependent", ["Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::Dependent", XSD::QName.new(nil, "Dependent")]],
             ["disciplinaryAction", ["Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::DisciplinaryAction", XSD::QName.new(nil, "DisciplinaryAction")]],
             ["educationLevel", ["Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::EducationLevel", XSD::QName.new(nil, "EducationLevel")]],
             ["financialInfo", ["Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::FinancialInfo", XSD::QName.new(nil, "FinancialInfo")]],
             ["offCampusEmployment", ["Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::OffCampusEmployment", XSD::QName.new(nil, "OffCampusEmployment")]],
             ["oPTEmployment", ["Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::OPTEmployment", XSD::QName.new(nil, "OPTEmployment")]],
             ["oPTEmployer", ["Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::OPTEmployer", XSD::QName.new(nil, "OPTEmployer")]],
             ["personalInfo", ["Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::PersonalInfo", XSD::QName.new(nil, "PersonalInfo")]],
             ["program", ["Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::Program", XSD::QName.new(nil, "Program")]],
             ["registration", ["Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::Registration", XSD::QName.new(nil, "Registration")]],
             ["reprint", ["Sevis::ReprintType", XSD::QName.new(nil, "Reprint")]],
             ["request", ["Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::Request", XSD::QName.new(nil, "Request")]],
             ["status", ["Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student::Status", XSD::QName.new(nil, "Status")]]
            ]
        ],
        :schema_attribute => {
            XSD::QName.new(nil, "sevisID") => "SOAP::SOAPString",
            XSD::QName.new(nil, "requestID") => "SOAP::SOAPString",
            XSD::QName.new(nil, "userID") => "SOAP::SOAPString",
            XSD::QName.new(nil, "statusCode") => "SOAP::SOAPString"
        }
    )

    Registry.register(
        :class => Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent,
        :schema_name => XSD::QName.new(nil, "UpdateStudent"),
        :is_anonymous => true,
        :schema_qualified => false,
        :schema_element => [
            ["student", ["Sevis::SEVISBatchCreateUpdateStudent::UpdateStudent::Student[]", XSD::QName.new(nil, "Student")], [1, 250]]
        ]
    )
  end

end
