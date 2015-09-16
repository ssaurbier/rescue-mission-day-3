class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :title, null: false, length: { minimum: 40 }
      t.text :description, null: false, length: { minimum: 150 }

      t.timestamps
    end
    add_index :questions, :title
  end
end
