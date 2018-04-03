class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.integer         :user_id
      t.string          :first_name
      t.string          :last_name
      t.string          :phone
      t.string          :address
      t.text            :short_bio
      t.string          :fb_username
      t.string          :photo
      t.date            :date_of_birth
      t.string          :gender

      t.timestamps
    end
  end
end
