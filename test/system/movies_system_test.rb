require "application_system_test_case"
class MoviesSystemTest < ApplicationSystemTestCase
  test "visit the show page" do
    attributes = {title: "Parasite", director: "Boon Joon-ho"}
    movie = Movie.create(attributes)
    visit '/movies/1'
    assert_text "Parasite"
    assert_text "Bong Joon-ha"
  end

  test "visit the second show page" do
    visit '/movies/2'
    assert_text "Titanic"
    assert_text "James Cameron"
  end

  test "movie is not valid without a title" do
    visit("/movies")
    assert_equal(Movie.all.size,2)
  end
end