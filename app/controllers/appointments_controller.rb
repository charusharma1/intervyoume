class AppointmentsController < ApplicationController
  before_action :authenticate_user!

  def index
     @my_jobseeker_appointments = Appointment.where(expert_id:current_user.id)
    @my_expert_appointments = Appointment.where(jobseeker_id:current_user.id) 
  end

 

  def new
    @expert_id = params[:expert_id]
  end

  def create
    @appointment = Appointment.new(id: params[:id], jobseeker_id: current_user.id, expert_id: params[:expert_id], appointment_time: params[:appointment_time], appointment_channel: params[:appointment_channel])

    if @appointment.save
    flash[:success] = "Your appointment request has been sent!"
    redirect_to "/appointments"
    else
      render :new
    end
  end

  def edit
    @appointment = Appointment.find_by(id: params[:id])
  end

  def update
    @appointment = Appointment.find_by(id: params[:id]) 
    @appointment.accepted = params[:accepted]
    @appointment.save
    redirect_to "/appointments"
  end


def destroy
    @appointment = Appointment.find_by(id: params[:id]) 
    @appointment.destroy
    redirect_to "/appointments"
    flash[:danger] = "Appointment cancelled!"
  end


  def search
    search_term = params[:search]
    @appointments = Appointment.where("name LIKE ? OR description LIKE ?", "%#{search_term}%", "%#{search_term}%")
    render :index
  end

  private

  def appointment_params
    params.require(:appointment).permit(:appointment_time, :appointment_channel)
  end

end
