# Homepage (Root path)
get '/' do
  erb :index   #display the HTML in /app/voews/index/.erb
end

get '/login' do
    erb :login
end

get '/logout' do
    erb :logout
end

get '/signup' do
    erb :signup
end

get '/profile' do
    erb :profile
end



post '/login' do
    redirect '/'
end

post '/signup' do
    redirect '/'
end

post '/profile' do
    redirect '/'
end

