
class CreateFilledFormInfos < ActiveRecord::Migration
  def change
    create_table :filled_form_infos do |t|
      t.string :form_id
      t.string :filled_content
      t.string :filled_date

      t.timestamps
    end
  end
end
