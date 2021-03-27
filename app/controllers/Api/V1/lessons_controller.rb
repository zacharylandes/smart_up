class Api::V1::LessonsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    lessons = Series.find(lesson_params[:series_id]).lessons
    respond_to do |format|
      format.json { render json: lessons  }
    end   
  end

  def create
    lesson = Series.find(lesson_params[:series_id]).lessons.find(lesson_params[:id])
    UserLesson.create!(user:User.first,lesson: lesson, status:"COMPLETED")
  end

  def destroy
    UserLesson.where(user:User.first,series: Series.find(series_params[:id])).order(:created_at => "desc").first.update(end_time: DateTime.now, status:"COMPLETED")
  end

  def show 
    lessons = Series.find(lesson_params[:series_id]).lessons.find(lesson_params[:id])
    respond_to do |format|
      format.json { render json: lessons  }
    end  
  end

  private

  def lesson_params 
    params.permit(:id,:series_id)
  end


end