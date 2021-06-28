class AddUnderConstructionToTest < ActiveRecord::Migration[6.1]
  def change
    add_column :tests, :under_construction, :boolean
  end
end
