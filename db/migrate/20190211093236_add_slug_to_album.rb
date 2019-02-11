class AddSlugToAlbum < ActiveRecord::Migration[5.2]
  def change
    add_column :albums, :slug, :string
  end
end
