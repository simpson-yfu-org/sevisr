require 'active_support'
require 'active_support/core_ext'
require 'zip'

module Sevisr
  require "sevisr/version"
  require "sevisr/exchange_visitor"
  require "sevisr/exchange_visitor_batch"
  require "sevisr/foreign_address"
  require "sevisr/other_funds"
  require "sevisr/personal_info"
  require "sevisr/residential_address"
  require "sevisr/soa"
  require "sevisr/soa_exempt"
  require "sevisr/student"
  require "sevisr/student_batch"
  require "sevisr/us_address"
  require "sevisr/client"
  require "sevisr/educational_info"
  require "sevisr/financial_info"

  def self.batch_upload(batch:, client:, io:)
    client.batch_upload(batch: batch, io: io)
    io.rewind
    puts io.string
    Hash.from_trusted_xml io.string
  end

  def self.batch_download(org_id:, batch_id:, client:, file:)
    client.batch_download(org_id: org_id, batch_id: batch_id, file: file)
    file.close
    Zip::File.open(File.expand_path(file.path)) do |zip_file|
      Hash.from_trusted_xml zip_file.read('sevis_transaction_log.xml')
    end

  end
end
