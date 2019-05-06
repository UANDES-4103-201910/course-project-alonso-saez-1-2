class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.date :creation_date
      t.string :solve_status
      t.string :file
      t.string :image
      t.string :text
      t.string :link
      t.references :wall, foreign_key: true
      t.references :superadmin, foreign_key: true
      t.references :admin, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
