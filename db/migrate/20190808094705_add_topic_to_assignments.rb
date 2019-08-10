class AddTopicToAssignments < ActiveRecord::Migration[5.2]
  def change
    add_column :assignments, :topic, :string
  end
end
