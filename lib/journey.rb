class Journey

  attr_reader :entry_station, :exit_station, :fare

  PENALTY_FARE = 6
  MIN_FARE = 1

  def initialize(station = nil)
    @entry_station = station
    @complete = false
    @fare = PENALTY_FARE
  end

  def finish(station)
    @fare = MIN_FARE if @entry_station
    @exit_station = station
    @complete = true
    self
  end

  def complete?
    @complete
  end
end
