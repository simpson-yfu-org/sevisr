# SEVIS Batch
# user_id SEVIS User ID
# org_id SEVIS Org ID
# batch_id Batch ID
# create_list List of sevisr:Student to create
# update_list List of sevisr:Student to update
class StudentBatch
  attr_accessor :user_id
  attr_accessor :org_id
  attr_accessor :batch_id
  attr_accessor :create_list
  attr_accessor :update_list


  def initialize(user_id, org_id, batch_id, create_list = nil, update_list = nil)
    @user_id = user_id
    @org_id = org_id
    @batch_id = batch_id
    @create_list = create_list
    @update_list = update_list
  end
end