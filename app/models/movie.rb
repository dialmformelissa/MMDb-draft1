class Movie < ActiveRecord::Base
  has_many :movie_formats
  has_many :formats, through: :movie_formats

  validates :title, presence: true

  def self.search(term)
    searchTerm = term
    Movie.where("title LIKE ?", "%#{searchTerm}%")
  end
end
