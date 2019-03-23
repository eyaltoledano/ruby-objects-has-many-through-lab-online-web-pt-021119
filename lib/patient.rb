class Patient
  attr_writer :appointments, :doctors
  attr_accessor :name, :doctor

  @@all = []

  def initialize(name)
    @name = name
    @appointments = []
    @doctors = []
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    appointment = Appointment.new(self, doctor, date)
  end

  def appointments
    Appointment.all.select do |appointment|
      @appointments << appointment if appointment.patient == self
    end
  end

  def doctors
    Appointment.all.select do |appointment|
      binding.pry
      @doctors << appointment.doctor if appointment.patient == self
    end
  end

end
