class CreateTrackers < ActiveRecord::Migration
  def change
    create_table :trackers do |t|
      t.integer :user_id
      t.integer :calories
      t.datetime :consumed_on

      t.timestamps
    end
  end
end
