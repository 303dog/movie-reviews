require 'pry'

# manages reviews-based routing, helpers, sessions
class ReviewsController < ApplicationController
  # GET: /reviews/new
  # get '/reviews/new' do
  #   erb :"/reviews/new.html"
  # end

  # create new review, redirect to review
  post '/reviews' do
    review = Review.create(content: params[:content], rating: params[:rating], movie_id: params[:movie_id], user_id: session[:user_id])
    redirect "/movies/#{review.movie_id}"
  end 

  # update review
  get '/reviews/:id' do
    erb :"/reviews/show.html"
  end

  # GET: /reviews/5/edit
  get '/reviews/:id/edit' do
    erb :"/reviews/edit.html"
  end

  # GET: /reviews
  # get "/reviews" do
  #   erb :"/reviews/index.html"
  # end

  # PATCH: /reviews/5
  patch '/reviews/:id' do
    redirect '/reviews/:id'
  end

  # DELETE: /reviews/5/delete
  delete '/reviews/:id/delete' do
    # delete the review
    # redirect to movie/:movie_id
    redirect '/'
  end
end
