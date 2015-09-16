require 'spec_helper'

RSpec.describe Question do

  context 'questions' do
  let!(:question) { FactoryGirl.create(:question) }

    it "should have a title" do
      expect(question.title).to eq("How do I do this factory girl stuff and make it work in my tests? Does this work?")
    end

    it "should have a description" do
      expect(question.description).to eq("So I'm working in rails and I have all these errors. Its saying this or that gem worn't work and now I'm just trying to fill in 150 characters for this silly constraint. What else can I say here really???")
    end
  end

end
