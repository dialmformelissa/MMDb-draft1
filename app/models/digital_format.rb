class DigitalFormat < ActiveRecord::Base

  has_many :movie_digital_formats
  has_many :movies, through: :movie_digital_formats
end
