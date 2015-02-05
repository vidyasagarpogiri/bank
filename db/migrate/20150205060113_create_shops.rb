class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.string :name
      t.integer :accountnumber

      t.timestamps
    end
  end
end
