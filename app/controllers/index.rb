# create sign in routes
# create user upload page
# create user albums page

get '/' do
  erb :index
end

# SIGNIN/UP CONTROLLERS =======

get '/signup' do
  erb :signup
end

post '/signup' do
  if @new_user = User.create(params)
    album = Album.create(:user_id => @new_user.id)
    session[:user_id] = @new_user.id
    redirect "/user/#{@new_user.id}"
  else
    @errors = @new_user.errors.messages
    erb :signup
  end
end

get '/login' do
  erb :login
end

post '/login' do
  if User.authenticate(params[:username], params[:password])
    session[:user_id] = User.find_by_username(params[:username]).id
    redirect "/user/#{User.find_by_username(params[:username]).id}"
  else
    @errors = "Username/Password Combination Not Found."
    erb :login
  end
end

get '/signout' do
  session[:user_id] = nil
  redirect '/'
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










