module Sevisr
  class ExchangeVisitorBatch

    attr_accessor :user_id
    attr_accessor :org_id
    attr_accessor :batch_id
    attr_accessor :create_list
    attr_accessor :update_list


    def initialize(user_id: nil, org_id: nil, batch_id: nil, create_list: nil, update_list: nil)
      @user_id = user_id
      @org_id = org_id
      @batch_id = batch_id
      @create_list = create_list
      @update_list = update_list
    end


    def to_xml
      builder = Nokogiri::XML::Builder.new do |xml|
        xml.SEVISBatchCreateUpdateEV('userID' => user_id, 'xmlns:xsi' => 'http://www.w3.org/2001/XMLSchema-instance') {
          xml.BatchHeader {
            xml.BatchID batch_id
            xml.OrgID org_id
          }
          xml.CreateEV {
            create_list.each do |visitor|
              xml.parent << visitor.to_xml
            end
          } if !create_list.nil? && !create_list.empty?
          xml.UpdateEV {
            update_list.each do |visitor|
              xml.parent << visitor.to_xml
            end
          } if !update_list.nil? && !update_list.empty?
        }
      end
      builder.to_xml
    end
  end
end