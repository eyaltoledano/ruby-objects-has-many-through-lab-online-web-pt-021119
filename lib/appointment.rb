class Appointment
  attr_writer :patient, :doctor
  attr_accessor :date

  def initialize(patient, date, doctor)
    @patient = patient
    @date = date
    @doctor = doctor
  end

end
