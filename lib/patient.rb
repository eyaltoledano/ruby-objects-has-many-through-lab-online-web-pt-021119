class Patient
  attr_writer :appointments
  attr_accessor :name, :doctor

  @@all = []

  def initialize(name)
    @name = name
    @appointments = []
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

end
