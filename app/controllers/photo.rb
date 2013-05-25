# PHOTO CONTROLLERS ===========

get '/album/:album_id' do
  erb :album_view, :locals => {:album_id => params[:album_id]}
end

get '/album/:album_id/photo/:photo_id' do
  erb :photo_view, :layout => false, :locals => {:photo => Photo.find(params[:photo_id])}
end