class Appointment
  attr_writer :patient
  attr_accessor :date, :doctor

  @@all = []

  def initialize(patient, doctor, date)
    @patient = patient
    @date = date
    @doctor = doctor
    @@all << self
  end

  def self.all
    @@all
  end

end
