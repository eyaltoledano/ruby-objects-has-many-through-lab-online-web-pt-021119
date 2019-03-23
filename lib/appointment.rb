class Appointment
  attr_writer :patient, :doctor
  attr_accessor :date

  @@all = []

  def initialize(patient, doctor, date)
    @patient = patient
    @date = date
    @doctor = doctor
    @@all << self
  end

end
