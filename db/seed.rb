# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(names: "root", email: "root@domain.com", password:"123456")
BmiTable.create!([{bmi_from: 0, bmi_to: 15, category: "Very severely underweight "}, 
    {bmi_from: 15, bmi_to:16, category:"Severely underweight"},
    {bmi_from:16, bmi_to:18.5, category:"Underweight"},
    {bmi_from:18.5, bmi_to:25, category:"Normal (healthy weight)"},
    {bmi_from:25, bmi_to:30, category:"Overweight"},
    {bmi_from:30, bmi_to:35, category:"Obese Class I (Moderately obese) "},
    {bmi_from:35, bmi_to:40, category:"Obese Class II (Severely obese) "},
    {bmi_from:40, bmi_to:45, category:"Obese Class III (Very severely obese) "},
    {bmi_from:45, bmi_to:50, category:"Obese Class IV (Morbidly obese) "},
    {bmi_from:50, bmi_to:60, category:"Obese Class V (Super obese) "},
    {bmi_from:60, bmi_to:100, category:"Obese Class VI (Hyper obese) "}])

puts "All data loaded"
