class PagesController < ApplicationController

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

  def about_us
  end

  def careers
  end

  def contact_us
  end
end
