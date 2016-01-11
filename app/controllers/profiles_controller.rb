class ProfilesController < ApplicationController
  before_action :authenticate_user!

  def index
      @profiles = User.all
      p "This is what @profile is #{@profiles[0].email}"

  end

  def show
    @profile = User.find_by(id: params[:id])
  end

  def search
    @profiles = User.where("name like ?", "%#{params[name]}%")
    render :index
  end

end
