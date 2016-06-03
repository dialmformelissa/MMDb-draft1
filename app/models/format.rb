class Format < ActiveRecord::Base
  has_many :movie_formats
  has_many :movies, through: :movie_formats

  # has_many :digital_formats, through: :movie
  # belongs_to :movie

  validates :format, presence: true
end
