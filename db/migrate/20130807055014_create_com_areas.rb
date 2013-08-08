class CreateComAreas < ActiveRecord::Migration
  def change
    create_table :com_areas do |t|

      t.timestamps
    end
  end
end
