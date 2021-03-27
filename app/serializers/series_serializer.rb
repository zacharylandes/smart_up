class SeriesSerializer < ActiveModel::Serializer
  attributes :id, :lessons, :title, :start_time, :end_time, :status, :next_lesson

  def start_time
    format_date(user_series.try(:start_time))
  end

  def user_series
    UserSeries.where(series_id: object.id).order(:start_time => "desc").first
  end
  
  def status
    user_series.try(:status)
  end

  def end_time 
    format_date(user_series.try(:end_time))
  end

  def format_date(date)
    date.try(:to_formatted_s,:long)
  end

end
