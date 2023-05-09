class CreateRestuarants < ActiveRecord::Migration[7.0]
  def change
    create_table :restuarants do |t|
      t.string :name
      t.string :address
      t.string :category
      t.integer :phonenumber

      t.timestamps
    end
  end
end
