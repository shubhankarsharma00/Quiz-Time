class AddMoreFieldsToStudents < ActiveRecord::Migration[5.2]
  def change
    add_column :students, :username, :string
    add_column :students, :name, :string
  end
end
