class CreateCompanionships < ActiveRecord::Migration
  def change
    create_table :companionships do |t|
      t.timestamps null: false
    end
  end
end
