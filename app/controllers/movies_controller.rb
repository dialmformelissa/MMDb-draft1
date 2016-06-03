class MoviesController < ApplicationController
  before_action :find_movie, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def index
    @movies = Movie.search(params[:query])
    
    respond_to do |format|
      format.html
      format.js
    end
  end

  def show
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.create(movie_params)
    
    if @movie.save
      flash[:notice] = "Movie saved."
      redirect_to movies_path
    else
      flash.now[:error] = "There's an issue saving."
      render :new
    end
  end

  def edit
  end

  def update
    if @movie.update(movie_params)
      redirect_to movies_path, notice: "Movie saved"
    else
      flash.new[:error] = "There's an issue saving"
      render :edit
    end
  end

  def destroy
    @movie.destroy
    redirect_to movies_path
  end

  private

  def find_movie
    @movie = Movie.find_by_id(params[:id])
  end

  def movie_params
      params.require(:movie).permit(:title, :format, :movie_digital_format, :digital_format, :movie_definition, :definition, :format_ids, :app_ids => [], :definition_ids => [], :digital_format_ids => [])
  end

end