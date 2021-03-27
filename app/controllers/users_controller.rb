class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    puts "PADSMM#{params}"
    render :json => User.first
  end

end