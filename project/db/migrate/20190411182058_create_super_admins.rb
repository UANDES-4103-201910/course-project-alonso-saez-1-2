class CreateSuperAdmins < ActiveRecord::Migration[5.2]
  def change
    create_table :super_admins do |t|
      t.string :profile_image
      t.string :nickname
      t.string :biography
      t.string :email
      t.string :password
      t.string :country
      t.string :city
      t.string :status
      t.string :gps_location

      t.timestamps
    end
  end
end
