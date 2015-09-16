require 'rails_helper'

feature 'view questions', %Q{
  As a user
  I want to post a question
  So that I can receive help from others
} do
  # Acceptance Criteria
  #- I must provide a title that is at least 40 characters long
  #- I must provide a description that is at least 150 characters long
  #- I must be presented with errors if I fill out the form incorrectly
    scenario 'visitor visits new question page' do
      question = FactoryGirl.create(:question)

      visit root_path
      click_link "Submit A New Question"
      expect(page).to have_content("Title")
      expect(page).to have_content("Description")
    end

    scenario 'visitor submits a blank question' do

      visit root_path
      click_link "Submit A New Question"
      click_button "Add Question"

      expect(page).to have_content("Title can't be blank")
      expect(page).to have_content("Description can't be blank")
    end

    scenario 'visitor submits a proper question' do
      question = FactoryGirl.create(:question)

      visit new_question_path
      fill_in "Title", :with => question.title
      fill_in "Description", :with => question.description
      click_button "Add Question"

    end
end
