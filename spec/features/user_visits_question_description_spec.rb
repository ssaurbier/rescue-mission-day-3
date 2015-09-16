require 'rails_helper'

feature 'view questions', %Q{
  As a user
  I want to view a question's details
  So that I can effectively understand the question
} do
  # Acceptance Criteria
  #- I must be able to get to this page from the questions index
  #- I must see the question's title
  #- I must see the question's description
    scenario 'visitor views question details' do
      question = FactoryGirl.create(:question)

      visit "questions/#{question.id}"
      expect(page).to have_content(question.title)
      expect(page).to have_content(question.description)
    end
end
