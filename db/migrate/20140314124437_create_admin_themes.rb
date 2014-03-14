class CreateAdminThemes < ActiveRecord::Migration
  def change
    create_table :admin_themes do |t|
      t.string :title
      t.string :short_title
      t.string :description
      t.string :properties
      t.string :image_path
      t.timestamps
    end
  end
end
