class AppointmentsController < ApplicationController
  before_action :authenticate_user!

  def index
      if params[:job_function] == "web dev"
      @appointments = Appointment.get_web dev
    elsif params[:job_function] == "design"
      @appointments = Appointment.get_design
    elsif params[:job_function] == "sales"
      @appointments = Appointment.get_sales
    elsif params[:job_function]
      @appointments = Appointment.find_by(job_function: params[:job_function]).appointments
    else
      @appointments = Appointment.all
    end
  end

  def show
    if params[:id] == "random"
      @appointment = Appointment.all.sample
    else
      @appointment = Appointment.find_by(id: params[:id])
    end
  end

  def new
    @expert_id = params[:expert_id]
  end

  def create
    @appointment = Appointment.new(id: params[:id], jobseeker_id: current_user.id, expert_id: params[:expert_id], appointment_time: params[:appointment_time], appointment_channel: params[:appointment_channel])

    if @appointment.save
    flash[:success] = "Your appointment request has been sent!"
    redirect_to "/all_appointments"
    else
      render :new
    end
  end

  def all_appointments
    @all_appointments = Appointment.all
  end

  def edit
    @appointment = Appointment.find_by(id: params[:id])
  end

  def update
    @appointment = Appointment.find_by(id: params[:id])
    @appontment.update(appointment_params)
    flash[:success] = "Your appointment request has been updated!"
    redirect_to "/appointments/#{@appointment.id}"
  end

  def destroy
    @appointment = Appointment.find_by(id: params[:id])
    @appointment.destroy
    flash[:warning] = "Your appointment request has been cancelled!"
    redirect_to "/"
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
