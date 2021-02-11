# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Airplane.destroy_all
p1 = Airplane.create :name => 'plane1', :row => '23', :column => '6'
p2 = Airplane.create :name => 'plane2', :row => '21', :column => '4'
p3 = Airplane.create :name => 'plane3', :row => '27', :column => '6'
p4 = Airplane.create :name => 'plane4', :row => '33', :column => '5'
puts "#{ Airplane.count }"

Flight.destroy_all
f1 = Flight.create :number => 'Q423', :origin => 'Sydney', :destination => 'Perth', :date => '02/05/22', 
f2 = Flight.create :number => 'Q745', :origin => 'Melbourne', :destination => 'Hobart', :date => '02/05/22',
f3 = Flight.create :number => 'Q535', :origin => 'Adelaide', :destination => 'Perth', :date => '02/05/22',
f4 = Flight.create :number => 'Q773', :origin => 'Darwin', :destination => 'Brisbane', :date => '02/05/22',

#Associations
puts "Airplanes and flights"
p1.flights << f1
p2.flights << f2
p3.flights << f3
p4.flights << f4
