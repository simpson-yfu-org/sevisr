module Sevisr
  class EducationalInfo

    attr_accessor :majorCode2, :prgEndDate, :minor, :level, :prgStartDate, :majorCode1, :otherRemarks, :notRequiredReason, :engRequired, :requirementsMet, :issDate

    def initialize(level: nil, otherRemarks: nil, majorCode1: nil, majorCode2: nil, minor: nil, issDate: nil, prgStartDate: nil, prgEndDate: nil, engRequired: nil, requirementsMet: nil, notRequiredReason: nil)
      @level = level
      @otherRemarks = otherRemarks
      @majorCode1 = majorCode1
      @majorCode2 = majorCode2
      @minor = minor
      @issDate = issDate
      @prgStartDate = prgStartDate
      @prgEndDate = prgEndDate
      @engRequired = engRequired
      @requirementsMet = requirementsMet
      @notRequiredReason = notRequiredReason

    end

    def to_xml
      builder = Nokogiri::XML::Builder.new do |xml|
        xml.EducationalInfo {
          xml.EduLevel {
            xml.Level level if level
            xml.OtherRemarks otherRemarks if otherRemarks
          }
          xml.MajorCode1 majorCode1 if majorCode1
          xml.MajorCode2 majorCode2 if majorCode2
          xml.Minor minor if minor
          xml.IssDate issDate.strftime("%Y-%m-%d") if issDate
          xml.PrgStartDate prgStartDate.strftime("%Y-%m-%d") if prgStartDate
          xml.PrgEndDate prgEndDate.strftime("%Y-%m-%d") if prgEndDate
          xml.EngProficiency {
            xml.EngRequired engRequired if engRequired
            xml.RequirementsMet requirementsMet if requirementsMet
            xml.NotRequiredReason notRequiredReason if notRequiredReason
          }
        }
      end
      builder.to_xml(:save_with => Nokogiri::XML::Node::SaveOptions::NO_DECLARATION)
    end
  end
end