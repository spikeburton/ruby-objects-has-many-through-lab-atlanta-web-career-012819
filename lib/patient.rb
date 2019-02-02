class Patient
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end

  def appointments
    Appointment.all.select { |appt| appt.patient == self }
  end

  def doctors
    self.appointments.collect { |appt| appt.doctor }
  end

  def self.all
    @@all
  end
end
