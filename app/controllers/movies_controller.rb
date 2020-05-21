class MoviesController < ApplicationController

  def index
    @movies = Movie.all
  end
  def show
    @movie = Admin.find(params[:id])
  end
end
