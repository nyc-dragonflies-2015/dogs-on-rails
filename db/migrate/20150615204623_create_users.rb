class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, null: false, length: 10
      t.string :password_hash, null: false
    end
  end
end
