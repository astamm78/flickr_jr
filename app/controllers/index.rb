get '/' do
  # display all albums
  erb :index
end

# SIGNIN/UP CONTROLLERS =======

get '/login' do
end

post '/login' do
end

get '/signup' do
end

post '/signup' do
end

get '/signout' do
end

# USER CONTROLLERS ============

get '/user/:user_id' do
  # post new photo
end

post '/upload' do
  # handle new photo
end

get '/user/:user_id/albums' do
  # display all user albums
end

# PHOTO CONTROLLERS ===========

get '/album/:album_id' do
  # display single album
end

get '/album/:album_id/photo/:photo_id' do
  # display all photos from album
end

# u = User.new
# u.avatar = params[:file]
# u.avatar = File.open('somewhere')
# u.save!
# u.avatar.url # => '/url/to/file.png'
# u.avatar.current_path # => 'path/to/file.png'
# u.avatar.identifier # => 'file.png'










