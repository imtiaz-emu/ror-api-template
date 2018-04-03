class CreateBookCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :book_categories do |t|
      t.text      :name
      t.string    :cover_photo

      t.timestamps
    end
  end
end
