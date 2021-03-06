# frozen_string_literal: true

require './config/environment'

# Handles non-model based routing, helpers, sessions
class ApplicationController < Sinatra::Base
  configure do
    enable :sessions
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    erb :welcome
  end
end
