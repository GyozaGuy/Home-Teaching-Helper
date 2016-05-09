class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :email
      t.string :phone_number
      t.string :address
      t.text :notes
      t.references :district
      t.references :assignment
      t.references :companionship
      t.timestamps null: false
    end
  end
end
