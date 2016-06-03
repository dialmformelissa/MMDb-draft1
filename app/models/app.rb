class App < ActiveRecord::Base
  has_many :movie_apps
  has_many :movies, through: :movie_apps
end
