class Movie < ActiveRecord::Base
  has_many :movie_formats
  has_many :formats, through: :movie_formats

  has_many :movie_digital_formats
  has_many :digital_formats, through: :movie_digital_formats

  has_many :movie_definitions
  has_many :definitions, through: :movie_definitions

  has_many :movie_apps
  has_many :apps, through: :movie_apps

  has_many :movie_players
  has_many :players, through: :movie_players

  validates :title, :director, presence: true
  

  def self.search(term)
    searchTerm = term
    Movie.where("title LIKE ? OR director LIKE ?", "%#{searchTerm}%", "%#{searchTerm}%")
  end
end
