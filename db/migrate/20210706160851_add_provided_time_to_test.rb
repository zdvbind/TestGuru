class AddProvidedTimeToTest < ActiveRecord::Migration[6.1]
  def change
    add_column :tests, :provided_time, :integer
  end
end
