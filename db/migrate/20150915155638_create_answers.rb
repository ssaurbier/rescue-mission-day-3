class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.belongs_to :question
      t.text :description, null: false, length: { minimum: 50 }
      t.timestamps
    end
  end
end
