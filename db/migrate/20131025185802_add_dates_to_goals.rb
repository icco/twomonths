class AddDatesToGoals < ActiveRecord::Migration
  def change
    add_column :goals, :start, :datetime
    add_column :goals, :end, :datetime
  end
end
