# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.create!(
  [
    { title: 'Math' },
    { title: 'Computer science' },
    { title: 'Sport' }
  ]
)

User.create!(
  [
    { name: 'Dmitriy', email: '1@gmail.com' },
    { name: 'John', email: '2@gmail.com' },
    { name: 'Bob', email: '3@gmail.com' },
    { name: 'Elizabeth', email: '4@gmail.com' },
    { name: 'Stacy', email: '5@gmail.com' }
  ]
)

Test.create!(
  [
    { title: 'Algebra', level: 3, category: Category.first, author: User.first },
    { title: 'Geometry', level: 2, category: Category.first, author: User.first },
    { title: 'Trigonometry', level: 2, category: Category.first, author: User.second },
    { title: 'Trigonometry', level: 4, category: Category.first, author: User.second },
    { title: 'Data Structures', level: 2, category: Category.second, author: User.third },
    { title: 'Algorithms', level: 4, category: Category.second, author: User.third },
    { title: 'Basketball', level: 1, category: Category.third, author: User.third },
    { title: 'Hockey', level: 3, category: Category.third, author: User.third }
  ]
)

question = Question.create!(
  [
    { body: 'Algebra question body 1', test: Test.first },
    { body: 'Algebra question body 2', test: Test.first },
    { body: 'Algebra question body 3', test: Test.first },
    { body: 'Geometry question body 1', test: Test.second },
    { body: 'Geometry question body 2', test: Test.second },
    { body: 'Geometry question body 3', test: Test.second },
    { body: 'Trigonometry question body 1 level 2', test: Test.third },
    { body: 'Trigonometry question body 2 level 2', test: Test.third },
    { body: 'Trigonometry question body 1 level 4', test: Test.third },
    { body: 'Trigonometry question body 2 level 4', test: Test.third },
    { body: 'Trigonometry question body 3 level 4', test: Test.third },
    { body: 'Hockey question body 1', test: Test.last },
    { body: 'Hockey question body 2', test: Test.last },
    { body: 'Hockey question body 3', test: Test.last }
  ]
)

Answer.create!(
  [
    { body: 'Answer 1', question: Question.first, correct: true },
    { body: 'Answer 2', question: Question.first },
    { body: 'Answer 3', question: Question.first },
    { body: 'Answer 4', question: Question.first },
    { body: 'Answer 1', question: Question.second, correct: true },
    { body: 'Answer 2', question: Question.second },
    { body: 'Answer 3', question: Question.second },
    { body: 'Answer 1', question: Question.third, correct: true },
    { body: 'Answer 2', question: Question.third },
    { body: 'Answer 3', question: Question.third },
    { body: 'Answer 1', question: Question.fourth, correct: true },
    { body: 'Answer 2', question: Question.fourth },
    { body: 'Answer 3', question: Question.fourth },
    { body: 'Answer 1', question: Question.fifth, correct: true },
    { body: 'Answer 2', question: Question.fifth },
    { body: 'Answer 3', question: Question.fifth },
    { body: 'Answer 1', question: Question.find(6), correct: true },
    { body: 'Answer 2', question: Question.find(6) },
    { body: 'Answer 3', question: Question.find(6) },
    { body: 'Answer 1', question: Question.find(7), correct: true },
    { body: 'Answer 2', question: Question.find(7) },
    { body: 'Answer 3', question: Question.find(7) },
    { body: 'Answer 1', question: Question.find(8), correct: true },
    { body: 'Answer 2', question: Question.find(8) },
    { body: 'Answer 3', question: Question.find(8) },
    { body: 'Answer 1', question: Question.find(9), correct: true },
    { body: 'Answer 2', question: Question.find(9) },
    { body: 'Answer 3', question: Question.find(9) },
    { body: 'Answer 1', question: Question.find(10), correct: true },
    { body: 'Answer 2', question: Question.find(10) },
    { body: 'Answer 3', question: Question.find(10) },
    { body: 'Answer 1', question: Question.find(11), correct: true },
    { body: 'Answer 2', question: Question.find(11) },
    { body: 'Answer 3', question: Question.find(11) },
    { body: 'Answer 1', question: Question.third_to_last, correct: true },
    { body: 'Answer 2', question: Question.third_to_last },
    { body: 'Answer 3', question: Question.third_to_last },
    { body: 'Answer 1', question: Question.second_to_last, correct: true },
    { body: 'Answer 2', question: Question.second_to_last },
    { body: 'Answer 3', question: Question.second_to_last },
    { body: 'Answer 1', question: Question.last, correct: true },
    { body: 'Answer 2', question: Question.last },
    { body: 'Answer 3', question: Question.last }
  ]
)

TestResult.create!(
  [
    { test: Test.fifth, user: User.first },
    { test: Test.find(6), user: User.first },
    { test: Test.second, user: User.second },
    { test: Test.first, user: User.second }
  ]
)
