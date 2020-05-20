require 'test_helper'

class MovieTest < ActiveSupport::TestCase
    test "movie is valid with a title and director " do
        movie = Movie.new({ title: "Titanic", director: "James Cameron"})
        assert_equal(movie.title, "Titanic")
        assert_equal(movie.director, "James Cameron")

    end 
    
end