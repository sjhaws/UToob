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

  def update
  
  end

  def destroy
  end

  private
    def movie_routes
      @movie = Movie.find(params[:id])
    end

end
