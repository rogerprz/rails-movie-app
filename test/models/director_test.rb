require 'test_helper'

class DirectorTest < ActiveSupport::TestCase
    test "movie is valid with a title and director " do
        director = Director.new( name: "Bong Joon-ho")
        
        assert_equal(director.movies.count, 0)
    end 
end