class CreateUpdates < ActiveRecord::Migration
  def change
    create_table :updates do |t|
      t.integer :goal_id
      t.integer :user_id
      t.string :from
      t.text :content

      t.timestamps
    end
  end
end
