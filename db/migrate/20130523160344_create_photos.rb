class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |p|
      p.string :title
      p.string :url
    end
  end
end
