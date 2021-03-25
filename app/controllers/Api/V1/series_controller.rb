class Api::V1::SeriesController < ApplicationController
  skip_before_action :verify_authenticity_token

    def index  
      series = Series.all
      respond_to do |format|
        format.json { render json: series  }
      end   
    end

    def show 
      series = Series.find(params[:id])
      respond_to do |format|
        format.json { render json: series  }
      end   
    end

  end