require 'rails_helper'

describe "the add an answer process", js: true do
  it "adds a new answer" do
    question = FactoryGirl.create(:question)
    visit questions_path
    choose('answer_selection_yas')
    click_button('Create Answer')
    expect(page).to have_content 'Your Choice: Yas'
  end

  it "selects the other answer" do
    question = FactoryGirl.create(:question)
    visit questions_path
    choose('answer_selection_nah')
    click_button('Create Answer')
    expect(page).to have_content 'Your Choice: Nah'
  end

  it "shows the number of votes", js: true do
    question = FactoryGirl.create(:question)
    visit questions_path
    choose('answer_selection_yas')
    click_button('Create Answer')
    expect(page).to have_content 1
  end
end
