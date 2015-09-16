

require 'rails_helper'

feature 'view questions', %Q{
  As a user
  I want to edit a question
  So that I can correct any mistakes or add updates
} do
  # Acceptance Criteria
  # - I must provide valid information
  # - I must be presented with errors if I fill out the form incorrectly
  # - I must be able to get to the edit page from the question details page
    scenario 'visitor edits a questions description' do
      question = FactoryGirl.create(:question)

      visit root_path
      click_link question.title
      click_link "Edit"
      fill_in "Description", :with => question.description + '1'
      click_button "Update Question"
      expect(page).to have_content(question.description + '1')
    end

end
