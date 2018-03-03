class MoviesController < ApplicationController
  before_action :movie_routes, only: [:show, :update, :edit, :destroy]
  
  def index
    @movies = Movie.all
  end

  def show
    end

  def new
    @movie = Movie.new
  end

  def edit
  end

  def create
    @movie = Sub.new(sub_params)

    if @movie.save
      redirect_to movie_path(@movie)
    else
      render :new
    end
  end

  def update
    if @movie.update(movie_params)
      redirect_to movie_path(@movie)
    else
      render :edit
    end
  end

  def destroy
  end

  private
    def movie_routes
      @movie = Movie.find(params[:id])
    end

    def movie_params
      params.require(:movie).permit(:title, :duration, :genre, :description, :trailer)
    end

end
