class RenameTrackerToCalorieLog < ActiveRecord::Migration
  def change
    rename_table :trackers, :calorie_logs
  end
end
