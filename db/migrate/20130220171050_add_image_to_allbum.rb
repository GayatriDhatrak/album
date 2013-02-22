class AddImageToAllbum < ActiveRecord::Migration
  def change
    add_column :allbums, :image, :string
  end
end
