require_relative './models/users'
require 'sinatra/flash'

class Chitter < Sinatra::Base
    use Rack::MethodOverride

    register Sinatra::Flash

  enable :sessions
  set :session_secret, 'super secret'

  get '/users/new' do
    erb(:'users/new')
  end

  post '/users' do
    user = Users.create(username: params[:username], password:params[:password])
    session[:user_id] = user.id
    redirect('/peeps')
  end

  get '/users/log_in' do
    erb(:'users/log_in')
  end

  get '/peeps' do
    erb(:'peeps/index')
  end

  # helpers do
  def current_user
    @current_user ||= Users.get(session[:user_id])
  end

  delete '/sessions' do
    session[:user_id] = nil
    flash.keep[:notice] = 'goodbye!'
    redirect to '/users/log_in'
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
