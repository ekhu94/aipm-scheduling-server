require 'csv'

desc "Import technicians from csv file"
task :import => [:environment] do

  file = "db/technicians.csv"

  CSV.foreach(file, :headers => true) do |row|
    Technician.create(name: row[1])
  end
end

desc "Import locations from csv file"
task :import => [:environment] do

  file = "db/locations.csv"

  CSV.foreach(file, :headers => true) do |row|
    Location.create(name: row[1], city: row[2])
  end

end

desc "Import work orders from csv file"
task :import => [:environment] do

  file = "db/work_orders.csv"

  CSV.foreach(file, :headers => true, converters: :all) do |row|
    time = Time.parse(row[3])
    technician = Technician.find(row[1])
    location = Location.find(row[2])
    WorkOrder.create(
      technician: technician,
      location: location,
      time: time,
      duration: row[4],
      price: row[5]
    )
  end

end