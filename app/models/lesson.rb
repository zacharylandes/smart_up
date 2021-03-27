class Lesson < ApplicationRecord
  belongs_to :series
  
  has_many :user_lessons
  has_many :users, :through => :user_lessons, :dependent => :destroy

  def next_lesson
     series.lessons.where(sort_key: sort_key + 1).first.try(:id)
  end
  
end