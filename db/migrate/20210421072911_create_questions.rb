class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|
      t.text :body

      t.timestamps
    end
    add_reference :questions, :test, foreign_key: true
  end
end
