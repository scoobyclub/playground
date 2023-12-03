require "test_helper"

class StimulusTutorialsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stimulus_tutorial = stimulus_tutorials(:one)
  end

  test "should get index" do
    get stimulus_tutorials_url
    assert_response :success
  end

  test "should get new" do
    get new_stimulus_tutorial_url
    assert_response :success
  end

  test "should create stimulus_tutorial" do
    assert_difference("StimulusTutorial.count") do
      post stimulus_tutorials_url, params: { stimulus_tutorial: {  } }
    end

    assert_redirected_to stimulus_tutorial_url(StimulusTutorial.last)
  end

  test "should show stimulus_tutorial" do
    get stimulus_tutorial_url(@stimulus_tutorial)
    assert_response :success
  end

  test "should get edit" do
    get edit_stimulus_tutorial_url(@stimulus_tutorial)
    assert_response :success
  end

  test "should update stimulus_tutorial" do
    patch stimulus_tutorial_url(@stimulus_tutorial), params: { stimulus_tutorial: {  } }
    assert_redirected_to stimulus_tutorial_url(@stimulus_tutorial)
  end

  test "should destroy stimulus_tutorial" do
    assert_difference("StimulusTutorial.count", -1) do
      delete stimulus_tutorial_url(@stimulus_tutorial)
    end

    assert_redirected_to stimulus_tutorials_url
  end
end
