class CreateScorecards < ActiveRecord::Migration[5.2]
  def change
    create_table :scorecards do |t|
      t.belongs_to :assignment, foreign_key: true
      t.belongs_to :student, foreign_key: true
      t.integer :marks
    end
  end
end
