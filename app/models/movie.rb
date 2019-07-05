# frozen_string_literal: true

# movie class
class Movie < ActiveRecord::Base
  has_many :reviews
end
