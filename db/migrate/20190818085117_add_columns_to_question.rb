class AddColumnsToQuestion < ActiveRecord::Migration[5.2]
  def change
    add_column :questions, :A, :string
    add_column :questions, :B, :string
    add_column :questions, :C, :string
  end
end
