# frozen_string_literal: true

# Create movies class
class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
