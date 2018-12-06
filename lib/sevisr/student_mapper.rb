# encoding: UTF-8
require 'student_mapping_registry.rb'

module Sevis

  class StudentMapper < XSD::Mapping::Mapper
    def initialize
      super(StudentMappingRegistry::Registry)
    end
  end

end
