class Player < ActiveRecord::Base
  has_many :movie_players
  has_many :movies, through: :movie_players
end
