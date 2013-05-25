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