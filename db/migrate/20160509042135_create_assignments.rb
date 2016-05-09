class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.references :district
      t.timestamps null: false
    end
  end
end
