require "application_system_test_case"
class MoviesSystemTest < ApplicationSystemTestCase
  test "visit the show page" do
    visit '/movies/1'
    assert_text "Parasite"
    assert_text "Bong Joon-ha"
  end

  test "visit the show page" do
    visit '/movies/2'
    assert_text "Titanic"
    assert_text "James Cameron"
  end
end