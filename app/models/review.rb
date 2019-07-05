# frozen_string_literal: true

# Review class
class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :movie
end
