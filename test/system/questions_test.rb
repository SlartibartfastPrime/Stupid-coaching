require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  test "visiting /ask renders the form" do
    visit ask_url
    assert_selector "p", text: "Ask your coach anything"
  end

  test "saying Hello yields a grumpy response from the coach" do
    visit ask_url
    fill_in "answer", with: "Hello"
    click_on "Ask"

    assert_text "I don't care, get dressed and go to work!"
  end

  test "saying question with ? yields a grumpy response from the coach" do
    visit ask_url
    fill_in "answer", with: "?"
    click_on "Ask"

    assert_text "Silly question, get dressed and go to work!"
  end

  test "saying I'm going to work yields a good response from the coach" do
    visit ask_url
    fill_in "answer", with: "i am going to work"
    click_on "Ask"

    assert_text "Great !"
  end
end
