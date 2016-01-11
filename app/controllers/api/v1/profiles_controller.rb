class Api::V1::ProfilesController < ApplicationController
  def index
    @profiles = User.all
    # render json: @profiles 
  end

  def show
    @profile = User.find(params[:id])
    render json: @profile 

  end

  def search
    @profiles = User.where("name like ?", "%#{params[name]}%")
    render :index
  end
end
