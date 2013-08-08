class CreateBankTypes < ActiveRecord::Migration
  def change
    create_table :bank_types do |t|

      t.timestamps
    end
  end
end
