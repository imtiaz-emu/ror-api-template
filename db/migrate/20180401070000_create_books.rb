class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.text      :name
      t.string    :isbn
      t.string    :cover
      t.text      :description
      t.float     :price
      t.string    :price_unit
      t.float     :avg_rating
      t.string    :edition
      t.integer   :no_of_pages
      t.string    :country
      t.integer   :publisher_id

      t.timestamps
    end
  end
end
