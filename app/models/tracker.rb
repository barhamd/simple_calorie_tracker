class Tracker < ActiveRecord::Base
  attr_accessible :calories, :consumed_on, :user_id
  belongs_to :user

  def date_and_calories
    date = consumed_on.to_time.to_i*1000
    [date,calories]
  end

  #Since I'm summing the calories from multiple trackers, I think this method belongs in the javascript
  def calorie_sum_by_day

  end
end
