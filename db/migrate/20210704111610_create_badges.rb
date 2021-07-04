class CreateBadges < ActiveRecord::Migration[6.1]
  def change
    create_table :badges do |t|
      t.string :title
      t.string :rule
      t.string :value
      t.string :img_url
      t.index %i[rule value], unique: true

      t.timestamps
    end
  end
end
