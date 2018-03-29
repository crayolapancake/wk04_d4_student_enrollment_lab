require_relative('../models/student')
require 'pry'

Student.delete_all

student1 = Student.new({
'first_name' => 'Jemma',
'second_name' => 'Johnston',
'house' => 'Hufflepuff',
'age' => 29
  })

  student2 = Student.new({
    'first_name' => 'Simon',
    'second_name' => 'Atkins',
    'house' => 'Slytherin',
    'age' => 32
    })

  student1.save
  student2.save
