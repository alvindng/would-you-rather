require 'rails_helper'

describe "the add a question process" do
  it "adds a new question" do
    visit questions_path
    click_button 'Add Question'
    fill_in 'Prompt', :with => 'Would you rather eat'
    fill_in 'Option1', :with => 'Grapes'
    fill_in 'Option2', :with => 'Hummus'
    click_button 'Create Question'
    expect(page).to have_content 'Grapes'
  end

  it "gives an error when fields are blank" do
    visit questions_path
    click_button 'Add Question'
    click_button 'Create Question'
    expect(page).to have_content 'errors'
  end

  it "allows users to resubmit form after error messages" do
    visit questions_path
    click_button 'Add Question'
    click_button 'Create Question'
    fill_in 'Prompt', :with => 'Would you rather eat'
    fill_in 'Option1', :with => 'Grapes'
    fill_in 'Option2', :with => 'Hummus'
    click_button 'Create Question'
    expect(page).to have_content 'Grapes'
  end
end
