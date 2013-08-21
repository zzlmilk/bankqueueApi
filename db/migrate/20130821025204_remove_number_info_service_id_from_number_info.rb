class RemoveNumberInfoServiceIdFromNumberInfo < ActiveRecord::Migration
  def up
    remove_column :number_infos, :number_info_service_id
  end

  def down
    add_column :number_infos, :number_info_service_id, :string
  end
end
