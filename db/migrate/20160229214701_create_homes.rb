class CreateHomes < ActiveRecord::Migration
  def change
    create_table :homes do |t|
      t.string :address
      t.string :city
      t.string :state
      t.integer :zip
      t.date :date
      t.integer :price
      t.string :school
      t.string :name
      t.string :email
      t.integer :phone_number

      t.timestamps null: false
    end
  end
end
