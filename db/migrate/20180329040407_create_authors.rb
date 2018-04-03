class CreateAuthors < ActiveRecord::Migration[5.1]
  def change
    create_table :authors do |t|
      t.string      :name_en
      t.string      :name_bn
      t.text        :short_bio
      t.string      :photo

      t.timestamps
    end
  end
end
