class CreateNumberInfos < ActiveRecord::Migration
  def change
    create_table :number_infos do |t|
      t.string :number_id
      t.integer :number_order
      t.integer :number_status
      t.datetime :number_date
      t.integer :now_number
      t.string :waited_count
      t.string :service_id
      t.string :service_name
      t.string :service_parent_id
      t.string :service_tag
      t.string :bank_id
      t.string :bank_name
      t.string :bank_type_name
      t.boolean :is_exist_form
      t.string :number_info_service_id
      t.string :form_id

      t.timestamps
    end
    # create_table :service_types do |t|
    #   t.string :service_id
    #   t.string :service_name
    #   t.string :service_tag
    #   t.string :parent_id
    #   t.integer :priority_level
    #   t.boolean :is_exist_form

    #   t.timestamps
    # end
  end
end
