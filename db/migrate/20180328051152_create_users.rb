class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string    :name, unique: true
      t.string    :email
      t.string    :password_digest
      t.boolean   :confirmed, default: false

      t.timestamps
    end
  end
end
