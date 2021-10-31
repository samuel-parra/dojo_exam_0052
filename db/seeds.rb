# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


10.times {
    |i| puts "#{i}"
    Building.create(name: "Edificio #{i+1}", city: "Concepción", address: "Calle principal numero #{100 + i}")
}


10.times do |i|
    nfapp = rand(1..10)
    puts "number of apparments #{nfapp}"
    nfapp.times do |j|
        puts "#{j}"
        building_num = Building.find(i+1)
        appnum = j + 1
        Apartment.create(number: appnum, building: building_num)
    end
end