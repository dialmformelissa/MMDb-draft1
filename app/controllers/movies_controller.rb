class MoviesController < ApplicationController
  before_action :find_movie, only: [:show, :edit, :update, :destroy]
  def index
    @movies = Movie.all
  end

  def show
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.create(movie_params)
    redirect_to new_movie_path
  end

  def edit
  end

  def update
    @movie.update(movie_params)
    redirect_to movie_path(@movie)
  end

  def destroy
    @movie.destroy
  end

  private

  def find_movie
    @movie = Movie.find_by_id(params[:id])
  end

  def movie_params
      params.require(:movie, :format_id).permit(:title, :format_id)
  end
end