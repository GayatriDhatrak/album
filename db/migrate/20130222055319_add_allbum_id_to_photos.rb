class AddAllbumIdToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :allbum_id, :integer
  end
end
