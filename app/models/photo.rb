class Photo < ActiveRecord::Base

  mount_uploader :image, AvatarUploader

  belongs_to :album

  validates :title, :presence => :true

end
