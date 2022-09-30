class Car
  def initialize
    @engine = GasolineEngine.new
  end

  def sunday_drive
    start_engine
    puts "Cruise out into the country and return"
    stop_engine
  end

  def switch_to_diesel
    @engine = DieselEngine.new
  end

  def start_engine
    @engine.start
  end

  def stop_engine
    @engine.stop
  end
end
