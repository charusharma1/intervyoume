class Appointment < ActiveRecord::Base
  
  belongs_to :jobseeker, foreign_key: "jobseeker_id", class_name: "User"
  belongs_to :expert, foreign_key: "expert_id", class_name: "User"

  def sent_appointment_status
    

      if self.accepted == nil
        return "Request sent"
      elsif self.accepted == true
        return "Appointment confirmed"
      else 
        return "Request denied"
      end  
  end


end
