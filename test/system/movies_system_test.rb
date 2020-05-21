require "application_system_test_case"
class MoviesSystemTest < ApplicationSystemTestCase
  test "visit the show page" do
    attributes = {title: "Parasite", director: "Boon Joon-ho"}
    movie = Movie.create(attributes)

    visit "/movies/#{movie.id}"

    assert_text "Parasite"
    assert_text "Bong Joon-ha"
  end

  test "vist the index page"do
    movie1 = Movie.create(title: "The Breakfast Club", director: "John Hughes")
    movie2 = Movie.create(title: "Bridesmaids", director: "John Hughes")

    visit "/movies"

    assert_text = "The Breakfast Club"
    assert_text = "Bridesmaids"
  end
end