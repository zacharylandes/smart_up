class Api::V1::LessonsController < ApplicationController
  skip_before_action :verify_authenticity_token


  def index
    lessons = Series.find(params[:series_id]).lessons
    respond_to do |format|
      format.json { render json: lessons  }
    end   
  end

  def show 
    lessons = Series.find(params[:series_id]).lessons.find(params[:id])
    respond_to do |format|
      format.json { render json: lessons  }
    end  
  end

end