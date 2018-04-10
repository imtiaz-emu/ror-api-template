class CreateRatings < ActiveRecord::Migration[5.1]
  def change
    create_table :ratings do |t|
      t.integer     :user_id
      t.integer     :book_id
      t.float       :rate, default: 0.0

      t.timestamps
    end
  end
end
