class CreateTests < ActiveRecord::Migration[6.1]
  def change
    create_table :tests do |t|
      t.string :title
      t.integer :level

      t.timestamps
    end
    add_reference :tests, :category, foreign_key: true
  end
end
