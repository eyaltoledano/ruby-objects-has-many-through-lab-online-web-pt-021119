class Doctor
  attr_accessor :name, :appointments

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    appointment = Appointment.new(patient, self, date)
  end

  def appointments
    Appointment.all.select do |appointment|

    end
  end
end
