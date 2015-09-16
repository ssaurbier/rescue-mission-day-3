require 'factory_girl'

FactoryGirl.define do
  factory :question do
    title "How do I do this factory girl stuff and make it work in my tests? Does this work?"
    description "So I'm working in rails and I have all these errors. Its saying this or that gem worn't work and now I'm just trying to fill in 150 characters for this silly constraint. What else can I say here really???"
  end
end
