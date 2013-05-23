class Photo < ActiveRecord::Base

  belongs_to :album

  validates :title, :presence => :true

end
