class AppointmentsController < ApplicationController
  def index
      if params[:job_function] == "software engineering"
      @appointments = Appointment.get_software_engineering
    elsif params[:job_function] == "consulting"
      @appointments = Appointment.get_consulting
    elsif params[:job_function] == "investment banking"
      @appointments = Appointment.get_investment_banking
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
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.new(appointment_params)
    if @product.save
    flash[:success] = "Your appointment request has been created!"
    redirect_to "/appointments/#{@appointment.id}"
    else
      render :new
    end
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
    params.require(:appointment).permit(:jobseeker_id, :expert_id, :appointment_time, :appointment_channel)
  end

end
