require "application_system_test_case"
class MoviesSystemTest < ApplicationSystemTestCase
  test "visit the show page" do
    visit '/movies/1'
    assert_text "Parasite"
    assert_text "Bong Joon-ha"
  end
end