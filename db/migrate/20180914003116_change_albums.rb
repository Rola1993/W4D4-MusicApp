class ChangeAlbums < ActiveRecord::Migration[5.2]
  def change
    rename_column :albums, :type, :category
  end
end
