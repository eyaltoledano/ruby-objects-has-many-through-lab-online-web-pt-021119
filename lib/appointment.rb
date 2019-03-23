class Appointment
  attr_writer :patient
  attr_accessor :date

  def initialize(patient, date, doctor )
    @patient = patient
    @date = date
  end

end
