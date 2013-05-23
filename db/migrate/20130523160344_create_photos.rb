class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |p|
      p.string :title
      p.string :image
      p.integer :album_id
    end
  end
end
