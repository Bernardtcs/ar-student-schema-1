require_relative '../app/models/teacher'
require 'faker'

teacher = Teacher.new(first_name:"Micah", last_name:"Sherman", email:"micahsherman@mac.com", phone:"405-488-5548")
p teacher[:first_name] == "Micah"

9.times do 
  new_teacher = Teacher.new(first_name:Faker::Name.first_name, last_name:Faker::Name.last_name,
                       email:Faker::Internet.email, phone:Faker::PhoneNumber.phone_number)
  puts new_teacher.valid?
end







