class CreatePings < ActiveRecord::Migration
  def change
    create_table :pings do |t|
      t.integer :user_id
      t.integer :method

      t.timestamps
    end
  end
end
