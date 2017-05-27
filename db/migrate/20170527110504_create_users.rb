class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
	  t.string :username, presence: true
      t.string :email, unique: true, null: false
      t.string :password_digest, null: false
      t.timestamp :confirmed_at, null: true

      t.timestamps
    end
  end
end
