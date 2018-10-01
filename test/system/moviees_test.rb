require "application_system_test_case"

class MovieesTest < ApplicationSystemTestCase
  setup do
    @moviee = moviees(:one)
  end

  test "visiting the index" do
    visit moviees_url
    assert_selector "h1", text: "Moviees"
  end

  test "creating a Moviee" do
    visit moviees_url
    click_on "New Moviee"

    fill_in "Description", with: @moviee.description
    fill_in "Director", with: @moviee.director
    fill_in "Movie Length", with: @moviee.movie_length
    fill_in "Rating", with: @moviee.rating
    fill_in "Title", with: @moviee.title
    click_on "Create Moviee"

    assert_text "Moviee was successfully created"
    click_on "Back"
  end

  test "updating a Moviee" do
    visit moviees_url
    click_on "Edit", match: :first

    fill_in "Description", with: @moviee.description
    fill_in "Director", with: @moviee.director
    fill_in "Movie Length", with: @moviee.movie_length
    fill_in "Rating", with: @moviee.rating
    fill_in "Title", with: @moviee.title
    click_on "Update Moviee"

    assert_text "Moviee was successfully updated"
    click_on "Back"
  end

  test "destroying a Moviee" do
    visit moviees_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Moviee was successfully destroyed"
  end
end
