class Appointment
  attr_writer :patient, :doctor
  attr_accessor :date

  def initialize(patient, doctor, date)
    @patient = patient
    @date = date
    @doctor = doctor
  end

end
