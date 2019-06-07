module Sevisr
  class FinancialInfo

    attr_accessor :other_funds_remark, :employment_funds, :school_funds_remark, :academic_term, :personal, :school_funds, :other_exp_remark, :living_expense, :dependent_exp, :other_exp, :other_funds, :tuition

    def initialize(academic_term: nil, tuition: nil, living_expense: nil, dependent_exp: nil, other_exp: nil, other_exp_remark: nil, personal_funds: nil, school_funds: nil, school_funds_remark: nil, other_funds: nil, other_funds_remark: nil, employment_funds: nil)
      @academic_term = academic_term
      @tuition = tuition
      @living_expense = living_expense
      @dependent_exp = dependent_exp
      @other_exp = other_exp
      @personal = personal_funds
      @school_funds = school_funds
      @other_funds = other_funds
      @employment_funds = employment_funds
      @other_exp_remark = other_exp_remark;
      @school_funds_remark = school_funds_remark
      @other_funds_remark = other_funds_remark
    end


    def to_xml
      builder = Nokogiri::XML::Builder.new do |xml|
        xml.FinancialInfo {
          xml.AcademicTerm academic_term
          xml.Expense {
            xml.Tuition '%d' % tuition
            xml.LivingExpense '%d' % living_expense
            xml.DependentExp '%d' % dependent_exp
            xml.Other {
              xml.Amount '%d' % other_exp
              xml.Remarks other_exp_remark
            }
          }
          xml.Funding {
            xml.Personal '%d' % personal
            xml.School {
              xml.Amount '%d' % school_funds
              xml.Remarks school_funds_remark
            }
            xml.Other {
              xml.Amount '%d' % other_funds
              xml.Remarks other_funds_remark
            }
            xml.Employment '%d' % employment_funds
          }
        }
      end
      builder.to_xml(:save_with => Nokogiri::XML::Node::SaveOptions::NO_DECLARATION)
    end


  end
end