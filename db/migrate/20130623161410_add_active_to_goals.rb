class AddActiveToGoals < ActiveRecord::Migration
  def change
    add_column :goals, :active, :boolean
    remove_column :goals, :metrics
  end
end
