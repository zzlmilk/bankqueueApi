class CreateErrorInfos < ActiveRecord::Migration
  def change
    create_table :error_infos do |t|
      t.string :error_status
      t.string :error_content

      t.timestamps
    end
  end
end
