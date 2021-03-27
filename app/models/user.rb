class User < ApplicationRecord

  has_many :user_series
  has_many :series,:through => :user_series, :dependent => :destroy

  has_many :user_lessons
  has_many :lessons,:through => :user_lessons, :dependent => :destroy

  def next_lesson(series)
    series.lessons.where(status:"COMPLETED").next_lesson
  end



end