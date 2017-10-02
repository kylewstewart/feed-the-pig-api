class CreateGoals < ActiveRecord::Migration[5.1]
  def change
    create_table :goals do |t|
      t.string :name
      t.float :amount
      t.date :date
      t.float :rate
      t.float :saved

      t.timestamps
    end
  end
end
