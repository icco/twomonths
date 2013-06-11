class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.text :description
      t.integer :user_id
      t.text :metrics

      t.timestamps
    end
  end
end
