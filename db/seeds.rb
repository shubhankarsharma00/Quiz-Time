# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Seeding Questions"
question = Question.create([{statement:'Who are You', answer: 'B'},{statement:'Why are You', answer: 'A'}])
assignment = Assignment.create(author_id: 1, topic: "let's learn")
puts "assigning"
assigning = Assigning.create(question_id: question.first.id, assignment_id: assignment.id)
assigning = Assigning.create(question_id: question.second.id, assignment_id: assignment.id)
