class CreateComProvinces < ActiveRecord::Migration
  def change
    create_table :com_provinces do |t|

      t.timestamps
    end
  end
end
