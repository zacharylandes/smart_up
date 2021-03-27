class Series < ApplicationRecord
  has_many :lessons
  has_many :user_series
  has_many :users, :through => :user_series, :dependent => :destroy

  def lesson_ids
    lessons.pluck(:id)
  end

  def last_lesson
   lessons.find_by(sort_key: lessons.maximum(:sort_key))
  end

  def clear_lesson_status # if the last lesson is completed and the user wants to start again, we want to clear the completed status of the lessons
    completed_lessons.map do |user_lesson|
      user_lesson.update(status: "IN PROGRESS")
    end
  end

  def completed_lessons 
    UserLesson.where(:user => User.first, :lesson_id => lesson_ids, :status => "COMPLETED").order(:created_at => 'DESC')
  end

  def current_user_series 
    UserSeries.where(user:User.first,series: self).order(:created_at => "desc").first
  end

  def next_lesson #this method will either return the user to their last visted lesson, or to the begining of the series
    if completed_lessons.present? && current_user_series.status != "COMPLETED" 
      completed_lessons.sort_by{ |user_lesson| user_lesson.lesson.sort_key }.reverse.first.lesson.id
    else
      lessons.first.id
    end
  end

end