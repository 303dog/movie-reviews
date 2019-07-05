# frozen_string_literal: true

# Create reviews class
class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :content
      t.string :rating
      t.string :integer
      t.integer :movie_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
