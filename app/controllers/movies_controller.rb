class MoviesController < ApplicationController

  def new
    @movie = Movie.new
  end
  def index
    movies = Movie.all

    render :index, locals: { movies: movies }
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def show
    @movie = Movie.find(params[:id])
  end
end
