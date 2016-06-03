class Movie < ActiveRecord::Base
  has_many :movie_formats
  has_many :formats, through: :movie_formats

  has_many :movie_digital_formats
  has_many :digital_formats, through: :movie_digital_formats

  validates :title, presence: true

  def self.search(term)
    searchTerm = term
    Movie.where("title LIKE ?", "%#{searchTerm}%")
  end
end
