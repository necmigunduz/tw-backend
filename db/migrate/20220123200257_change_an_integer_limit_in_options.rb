class ChangeAnIntegerLimitInOptions < ActiveRecord::Migration[7.0]
  def change
    change_column :options, :score, :integer, limit: 1
  end
end
