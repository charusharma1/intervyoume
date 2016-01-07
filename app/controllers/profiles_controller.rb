class ProfilesController < ApplicationController
  before_action :authenticate_user!

  def index
      @profiles = User.all
  end

  def show
    @profile = User.find_by(id: params[:id])
  end

  def edit
    @users = Appointment.find_by(id: params[:id])
  end

  def update
    @users = Appointment.find_by(id: params[:id])
    @users.update(users)
    flash[:success] = "Your appointment request has been updated!"
    redirect_to "/appointments/#{@appointment.id}"
  end


  def search
    search_term = params[:search]
    @users = Appointment.where("name LIKE ? OR description LIKE ?", "%#{search_term}%", "%#{search_term}%")
    render :index
    @categories = Category.all 
      if params[:view]=="discounted"
        @products = Product.where("price < ?", 50)
      elsif params[:category]
        @products = Category.find_by(name: params[:category]).products
      else
        @products = Product.all
      end
  end

end
