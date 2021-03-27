class LessonSerializer < ActiveModel::Serializer
  attributes :id, :title, :image, :video, :content,:start_time, :end_time, :sort_key,:next_lesson, :series_id, :status

  def user_series 
    UserSeries.where(series_id: object.series.id).order(:created_at => "desc").first
  end

  def start_time
    format_date(user_series.start_time)
  end
  
  def end_time 
    format_date(user_series.end_time)
  end

  def status
    user_series.status
  end

  def format_date(date)
    date.try(:to_formatted_s,:long)
  end


end
