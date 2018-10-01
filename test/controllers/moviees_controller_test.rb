require 'test_helper'

class MovieesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @moviee = moviees(:one)
  end

  test "should get index" do
    get moviees_url
    assert_response :success
  end

  test "should get new" do
    get new_moviee_url
    assert_response :success
  end

  test "should create moviee" do
    assert_difference('Moviee.count') do
      post moviees_url, params: { moviee: { description: @moviee.description, director: @moviee.director, movie_length: @moviee.movie_length, rating: @moviee.rating, title: @moviee.title } }
    end

    assert_redirected_to moviee_url(Moviee.last)
  end

  test "should show moviee" do
    get moviee_url(@moviee)
    assert_response :success
  end

  test "should get edit" do
    get edit_moviee_url(@moviee)
    assert_response :success
  end

  test "should update moviee" do
    patch moviee_url(@moviee), params: { moviee: { description: @moviee.description, director: @moviee.director, movie_length: @moviee.movie_length, rating: @moviee.rating, title: @moviee.title } }
    assert_redirected_to moviee_url(@moviee)
  end

  test "should destroy moviee" do
    assert_difference('Moviee.count', -1) do
      delete moviee_url(@moviee)
    end

    assert_redirected_to moviees_url
  end
end
