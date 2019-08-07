class CreateAssignments < ActiveRecord::Migration[5.2]
  def change
    create_table :assignments do |t|
      t.references :author
    end
    add_foreign_key :assignments, :admins, column: :author_id
  end
end
