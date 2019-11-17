require 'test_helper'

class SubtopicsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get subtopics_index_url
    assert_response :success
  end

  test "should get show" do
    get subtopics_show_url
    assert_response :success
  end

  test "should get new" do
    get subtopics_new_url
    assert_response :success
  end

  test "should get create" do
    get subtopics_create_url
    assert_response :success
  end

  test "should get edit" do
    get subtopics_edit_url
    assert_response :success
  end

  test "should get update" do
    get subtopics_update_url
    assert_response :success
  end

  test "should get destroy" do
    get subtopics_destroy_url
    assert_response :success
  end

end
