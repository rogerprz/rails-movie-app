require "application_system_test_case"
class MoviesSystemTest < ApplicationSystemTestCase
  test "visit the show page" do
    attributes = {title: "Parasite", director: "Boon Joon-ho"}
    movie = Movie.create(attributes)

    visit "/movies/#{movie.id}"

    assert_text "Parasite"
    assert_text "Bong Joon-ha"
  end
end