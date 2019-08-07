class CreateAssigning < ActiveRecord::Migration[5.2]
  def change
    create_table :assignings do |t|
      t.belongs_to :question, foreign_key: true
      t.belongs_to :assignment, foreign_key: true
    end
  end
end
