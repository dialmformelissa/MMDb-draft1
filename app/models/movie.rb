class Movie < ActiveRecord::Base
  has_many :movie_formats
  has_many :formats, through: :movie_formats
end
