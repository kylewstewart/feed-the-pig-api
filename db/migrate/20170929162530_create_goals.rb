class CreateGoals < ActiveRecord::Migration[5.1]
  def change
    create_table :goals do |t|
      t.string :name
      t.integer :ammount
      t.date :date
      t.float :rate

      t.timestamps
    end
  end
end
