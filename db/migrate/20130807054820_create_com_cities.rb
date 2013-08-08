class CreateComCities < ActiveRecord::Migration
  def change
    create_table :com_cities do |t|

      t.timestamps
    end
  end
end
