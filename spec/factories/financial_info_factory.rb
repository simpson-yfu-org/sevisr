require "sevisr"
require 'ffaker'


FactoryBot.define do
  factory :financial_info, class: Sevisr::FinancialInfo do
    academic_term {"06"}
    tuition {Random::rand(1000.00..50000.00).truncate(-2)}
    living_expense {Random::rand(1000.00..50000.00).truncate(-2)}
    dependent_exp {Random::rand(1000.00..50000.00).truncate(-2)}
    other_exp {Random::rand(1000.00..50000.00).truncate(-2)}
    personal {Random::rand(1000.00..50000.00).truncate(-2)}
    school_funds {Random::rand(1000.00..50000.00).truncate(-2)}
    other_funds {Random::rand(1000.00..50000.00).truncate(-2)}
    employment_funds {Random::rand(1000.00..50000.00).truncate(-2)}
    other_exp_remark {FFaker::Lorem.sentence}
    school_funds_remark {FFaker::Lorem.sentence}
    other_funds_remark {FFaker::Lorem.sentence}

  end
end
