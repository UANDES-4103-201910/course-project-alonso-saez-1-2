class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :profile_image
      t.string :nickname
      t.string :biography
      t.string :email
      t.string :password
      t.string :country
      t.string :city
      t.string :status
      t.string :gps_location
      t.references :superadmin, foreign_key: true
      t.references :admin, foreign_key: true

      t.timestamps
    end
  end
end
