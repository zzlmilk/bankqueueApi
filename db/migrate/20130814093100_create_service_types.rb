class CreateServiceTypes < ActiveRecord::Migration
  def change
    create_table :service_types do |t|
      t.string :service_id
      t.string :service_name
      t.string :service_tag
      t.string :parent_id
      t.integer :priority_level
      t.boolean :is_exist_form

      t.timestamps
    end
  end
end
