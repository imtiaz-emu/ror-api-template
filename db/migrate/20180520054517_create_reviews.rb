class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.integer     :reviewable_id
      t.string      :reviewable_type
      t.integer     :user_id
      t.string      :title
      t.text        :description

      t.timestamps
    end
    add_index :reviews, [:reviewable_id, :reviewable_type]
  end
end
