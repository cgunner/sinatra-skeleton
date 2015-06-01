# Homepage (Root path)
require "pry"
helpers do
	def current_user
  	@current_user = User.find_by(id: session[:user_id]) if session[:user_id]
	end
end


get '/' do
  erb :index   #display the HTML in /app/voews/index/.erb
end

get '/login' do
    erb :login
end

get '/logout' do
    session.clear
    redirect '/'
end

get '/signup' do
    erb :signup
end

get '/profile' do
    erb :profile
end

get '/bakes/new' do
    erb :new_post
end


post '/login' do
  username = params[:username]
  password = params[:password]

  user = User.find_by(username: username)
  if user.password == password
    session[:user_id] = user.id
    redirect '/profile'
   else
   	redirect '/login'
	end
end

post '/signup' do
  firstname = params[:firstname]
  lastname = params[:lastname]
  email = params[:email]
  username = params[:username]
  password = params[:password]

  user = User.find_by(username: username)
  if user
  	redirect '/login'
  else
  	user = User.create(firstname: firstname, lastname: lastname, email: email, username: username, password: password)
  	session[:user_id] = user.id
    redirect '/profile'
  end
end

post '/profile' do
    redirect '/'
end

post '/bakes/new' do #post/new category
   rating = params[:rating]
   ingredients = params [:ingredients]
   reviews = [:reviews] 

   if current_user
   	current_user.posts.create(rating: rating, ingredients: ingredients, reviews: reviews)
   	redirect '/profile'
   else
   	redirect '/signup'
   end
    
end



