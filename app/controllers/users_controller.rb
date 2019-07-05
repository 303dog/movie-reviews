# frozen_string_literal: true

# manages users-based routing, helpers, sessions
class UsersController < ApplicationController
  # GET: /users
  # get "/users" do
  #   erb :"/users/index.html"
  # end

  # GET: /users/new
  get '/signup' do
    erb :"/users/new.html"
  end

  # GET: /login
  get '/login' do
    erb :"/users/login.html"
  end

  post '/login' do
    # session[:user_id] = user.id
    redirect '/users/:id'
  end

  # POST: /logout
  post '/logout' do
    # session.destroy
    redirect '/'
  end

  # Show all reviews by user
  get '/users/:id' do
    erb :"/users/show.html"
  end

  # Create new user
  post '/users' do
    # create new user from params
    # sent validation
    redirect '/login'
  end

  # GET: /users/5/edit
  # get "/users/:id/edit" do
  #   erb :"/users/edit.html"
  # end

  # PATCH: /users/5
  # patch "/users/:id" do
  #   redirect "/users/:id"
  # end

  # DELETE: /users/5/delete
  # delete "/users/:id/delete" do
  #   redirect "/users"
  # end
end
