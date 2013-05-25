# USER CONTROLLERS ============

get '/user/:user_id' do
  erb :user_page
end

post '/upload_photo' do
  photo = Photo.new
  photo.image = params[:image]
  photo.album_id = params[:albums]
  photo.title = params[:title]
  photo.save
  redirect back
end

post '/create_album' do
  Album.create( :name     => params[:new_album],
                :user_id  => current_user.id )
  redirect back
end