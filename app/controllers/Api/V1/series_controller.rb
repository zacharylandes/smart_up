class Api::V1::SeriesController < ApplicationController
  skip_before_action :verify_authenticity_token

    def index  
      series = Series.all
      respond_to do |format|
        format.json { render json: series  }
      end   
    end

    def create
     series = Series.find(series_params[:id])
     user_series = UserSeries.find_or_create_by(user:User.first,series: series)
     user_series.update(start_time: DateTime.now, status: "IN PROGRESS", end_time: nil)
     series.clear_lesson_status
    end

    def destroy
      UserSeries.where(user:User.first,series: Series.find(series_params[:id])).order(:created_at => "desc").first.update(end_time: DateTime.now, status:"COMPLETED")
    end

    def show 
      series = Series.find_by(id: series_params[:id])
      respond_to do |format|
        format.json { render json: series  }
      end   
    end

    private

    def series_params
      params.permit(:id)
    end

  end