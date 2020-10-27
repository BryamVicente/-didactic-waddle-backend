# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Doctor.destroy_all 
Patient.destroy_all 
Appointment.destroy_all 


doc1 = Doctor.create(name: "John Hopkins", specialty: "Cancer Removal", years_of_experience: 3, image: "https://i.pinimg.com/originals/ec/72/9d/ec729de9c12af1e6687cdbeff6553401.png", practice: "Pediatrics R Us")
doc2 = Doctor.create(name: "Nelson Mandela", specialty: "Freedom of the Heart", years_of_experience: 12, image: "http://www.channel4.com/media/images/Channel4/c4-news/JAN/27/27_mandela_r_k.jpg", practice: "South Africa Health Clinic")
doc3 = Doctor.create(name: "Mike Tyson", specialty: "Ear Removal", years_of_experience: 20, image: "http://www.asianboxingcouncil.com/news/398.jpg", practice: "Eat Yo Children Youth Hospital")


patient1 = Patient.create(name: "Bryam", age: 5, image: "https://ca.slack-edge.com/T02MD9XTF-U019BJ3UY5B-d57d19806fbb-512")
patient2 = Patient.create(name: "Seyi", age: 2, image: "https://ca.slack-edge.com/T02MD9XTF-U019BJ3MBMK-d0154273a634-512")
patient3 = Patient.create(name: "Nic", age: 3, image: "https://ca.slack-edge.com/T02MD9XTF-U018W9H4274-4aba39e6e23b-512")
patient4 = Patient.create(name: "Gerard", age: 7 , image: "https://ca.slack-edge.com/T02MD9XTF-U019RH4UBB3-fd733d85af52-512")
patient5 = Patient.create(name: "Ian", age: 9, image: "https://ca.slack-edge.com/T02MD9XTF-UD54WDGFP-ca9e4fa7fa57-512")

30.times do
    Appointment.create(doctor_id: Doctor.all.sample.id, patient_id: Patient.all.sample.id, description: Faker::Quote.famous_last_words, time: rand(1..12), date: (Faker::Time.forward(days: 23) ))
end


# def rand_time(from, to=Time.now)
#     Time.at(rand_in_range(from.to_f, to.to_f))
#   end