require 'test_helper'

class MovieTest < ActiveSupport::TestCase
    test "movie is valid with a title and director " do
        movie = Movie.new( title: "Parasite", director: "Bong Joon-ho")
        assert_equal(movie.title, "Parasite")
        assert_equal(movie.director, "Bong Joon-ho")
        puts "WHAAAAA"
    end 

    test "movie is valid with a title " do
        movie = Movie.new( title: "Parasite", director: "Bong Joon-ho")
       refute movie.valid?
    end 
    
end