class CreatePublishers < ActiveRecord::Migration[5.1]
  def change
    create_table :publishers do |t|
      t.text      :name
      t.string    :logo
      t.text      :address
      t.string    :phone
      t.string    :proprietor
      t.string    :discount_range

      t.timestamps
    end
  end
end
