Dir[File.expand_path('../lib/**/*.rb', __dir__)].each do |file|
  require file
end

car = Car.new
car.sunday_drive
puts car.inspect
car.switch_to_diesel
puts car.inspect
