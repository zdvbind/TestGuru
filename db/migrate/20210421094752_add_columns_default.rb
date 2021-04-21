class AddColumnsDefault < ActiveRecord::Migration[6.1]
  def change
    change_column_default(:tests, :level, from: nil, to: 1)
    change_column_default(:answers, :correct, from: nil, to: false)
  end
end
