class Patient
  attr_accessor :name, :doctor

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end


end
