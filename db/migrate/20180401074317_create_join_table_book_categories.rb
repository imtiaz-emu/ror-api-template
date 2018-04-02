class CreateJoinTableBookCategories < ActiveRecord::Migration[5.1]
  def change
    create_join_table :books, :book_categories do |t|
      t.index [:book_id, :book_category_id]
    end
  end
end
