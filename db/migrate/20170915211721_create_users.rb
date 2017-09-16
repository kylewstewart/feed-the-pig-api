class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.integer :mobile
      t.string  :otp_secret_key

      t.timestamps
    end
  end
end
