class Photo < ActiveRecord::Base

  mount_uploader :image, MyUploader

  belongs_to :album

  validates :title, :presence => :true

end
