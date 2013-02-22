class Allbum < ActiveRecord::Base
  attr_accessible :description, :name, :image, :remote_image_url
  
  has_many :photos#,:dependent=>:destroy
  validate :name, :presence=>true
end
