class Tracker < ActiveRecord::Base
  attr_accessible :calories, :consumed_on, :user_id
  belongs_to :user

  def date_and_calories
      date = consumed_on.to_time.to_i*1000
      [date,calories]
  end

  def sum_by_day
  end
end
