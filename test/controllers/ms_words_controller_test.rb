require 'test_helper'

class MsWordsControllerTest < ActionController::TestCase
  setup do
    @ms_word = ms_words(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ms_words)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ms_word" do
    assert_difference('MsWord.count') do
      post :create, ms_word: { word: @ms_word.word }
    end

    assert_redirected_to ms_word_path(assigns(:ms_word))
  end

  test "should show ms_word" do
    get :show, id: @ms_word
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ms_word
    assert_response :success
  end

  test "should update ms_word" do
    patch :update, id: @ms_word, ms_word: { word: @ms_word.word }
    assert_redirected_to ms_word_path(assigns(:ms_word))
  end

  test "should destroy ms_word" do
    assert_difference('MsWord.count', -1) do
      delete :destroy, id: @ms_word
    end

    assert_redirected_to ms_words_path
  end
end
