require "sevisr"
require "date"


FactoryBot.define do
  factory :educational_info, class: Sevisr::EducationalInfo do
    level {"01"}
    majorCode1 {"01.0000"}
    majorCode2 {"01.0104"}
    minor {"01.0104"}
    issDate {DateTime.now}
    prgStartDate {DateTime.now << 12}
    prgEndDate {DateTime.now << 12 * 10}
    engRequired {"true"}
    requirementsMet {"false"}
    notRequiredReason {"Some Reason"}

  end
end
