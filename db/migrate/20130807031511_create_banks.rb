class CreateBanks < ActiveRecord::Migration
  def change
    create_table :banks do |t|
      t.string :name
      t.integer :type
      t.float :longitude
      t.float :latitude
      t.string :phone
      t.string :province
      t.string :city
      t.string :address


      #t.timestamps
    end
  end
end
