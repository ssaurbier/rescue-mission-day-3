

require 'rails_helper'

feature 'view questions', %Q{
  As a user
  I want to delete a question
  So that I can delete duplicate questions
} do
  # Acceptance Criteria
  # - I must be able delete a question from the question edit page
  # - I must be able delete a question from the question details page
  # - All answers associated with the question must also be deleted
    scenario 'visitor edits a question' do
      question = FactoryGirl.create(:question)

      visit root_path
      click_link "Delete"
      expect(page).to have_content("Question deleted.")
    end

end
