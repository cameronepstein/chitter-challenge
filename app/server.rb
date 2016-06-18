class Chitter < Sinatra::Base
  get '/users/new' do
    erb(:'users/new')
  end

  post '/users' do
    redirect('/users/home')
  end

  get '/users/home' do
    erb(:'users/home')
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
