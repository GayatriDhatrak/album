class Photo < ActiveRecord::Base
  attr_accessible :image, :name, :allbum_id
  mount_uploader  :image, ImageUploader
  belongs_to :allbum

end
