# frozen_string_literal: true

# manages movies-based routing, helpers, sessions
class MoviesController < ApplicationController
  # create new movie creation form
  get '/movies/new' do
    erb :"/movies/new.html"
  end

  # create movie
  post '/movies' do
    redirect '/movies'
  end

  # get movie review
  get '/movies/:id' do
    erb :"/movies/show.html"
  end

  # list all movives
  # get "/movies" do
  #   erb :"/movies/index.html"
  # end

  # GET: /movies/5/edit
  # get "/movies/:id/edit" do
  #   erb :"/movies/edit.html"
  # end

  # PATCH: /movies/5
  # patch "/movies/:id" do
  #   redirect "/movies/:id"
  # end

  # DELETE: /movies/5/delete
  # delete "/movies/:id/delete" do
  #   redirect "/movies"
  # end
end
