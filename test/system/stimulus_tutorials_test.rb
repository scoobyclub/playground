require "application_system_test_case"

class StimulusTutorialsTest < ApplicationSystemTestCase
  setup do
    @stimulus_tutorial = stimulus_tutorials(:one)
  end

  test "visiting the index" do
    visit stimulus_tutorials_url
    assert_selector "h1", text: "Stimulus tutorials"
  end

  test "should create stimulus tutorial" do
    visit stimulus_tutorials_url
    click_on "New stimulus tutorial"

    click_on "Create Stimulus tutorial"

    assert_text "Stimulus tutorial was successfully created"
    click_on "Back"
  end

  test "should update Stimulus tutorial" do
    visit stimulus_tutorial_url(@stimulus_tutorial)
    click_on "Edit this stimulus tutorial", match: :first

    click_on "Update Stimulus tutorial"

    assert_text "Stimulus tutorial was successfully updated"
    click_on "Back"
  end

  test "should destroy Stimulus tutorial" do
    visit stimulus_tutorial_url(@stimulus_tutorial)
    click_on "Destroy this stimulus tutorial", match: :first

    assert_text "Stimulus tutorial was successfully destroyed"
  end
end
