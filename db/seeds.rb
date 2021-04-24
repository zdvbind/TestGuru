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

tests = Test.create!(
  [
    { title: 'Algebra', level: 3, category_id: 1 },
    { title: 'Geometry', level: 2, category_id: 1 },
    { title: 'Trigonometry', level: 2, category_id: 1 },
    { title: 'Trigonometry', level: 4, category_id: 1 },
    { title: 'Data Structures', level: 2, category_id: 2 },
    { title: 'Algorithms', level: 4, category_id: 2 },
    { title: 'Basketball', level: 1, category_id: 3 },
    { title: 'Hockey', level: 3, category_id: 3 }
  ]
)

questions = Question.create!(
  [
    { body: 'Algebra question body 1', test_id: 1 },
    { body: 'Algebra question body 2', test_id: 1 },
    { body: 'Algebra question body 3', test_id: 1 },
    { body: 'Geometry question body 1', test_id: 2 },
    { body: 'Geometry question body 2', test_id: 2 },
    { body: 'Geometry question body 3', test_id: 2 },
    { body: 'Trigonometry question body 1 level 2', test_id: 3 },
    { body: 'Trigonometry question body 2 level 2', test_id: 3 },
    { body: 'Trigonometry question body 1 level 4', test_id: 3 },
    { body: 'Trigonometry question body 2 level 4', test_id: 3 },
    { body: 'Trigonometry question body 3 level 4', test_id: 3 },
    { body: 'Hockey question body 1', test_id: tests.last.id },
    { body: 'Hockey question body 2', test_id: tests.last.id },
    { body: 'Hockey question body 3', test_id: tests.last.id }
  ]
)

Answer.create!(
  [
    { body: 'Answer 1', question_id: 1, correct: true },
    { body: 'Answer 2', question_id: 1 },
    { body: 'Answer 3', question_id: 1 },
    { body: 'Answer 1', question_id: 2, correct: true },
    { body: 'Answer 2', question_id: 2 },
    { body: 'Answer 3', question_id: 2 },
    { body: 'Answer 1', question_id: 3, correct: true },
    { body: 'Answer 2', question_id: 3 },
    { body: 'Answer 3', question_id: 3 },
    { body: 'Answer 1', question_id: 4, correct: true },
    { body: 'Answer 2', question_id: 4 },
    { body: 'Answer 3', question_id: 4 },
    { body: 'Answer 1', question_id: 5, correct: true },
    { body: 'Answer 2', question_id: 5 },
    { body: 'Answer 3', question_id: 5 },
    { body: 'Answer 1', question_id: 6, correct: true },
    { body: 'Answer 2', question_id: 6 },
    { body: 'Answer 3', question_id: 6 },
    { body: 'Answer 1', question_id: 7, correct: true },
    { body: 'Answer 2', question_id: 7 },
    { body: 'Answer 3', question_id: 7 },
    { body: 'Answer 1', question_id: 8, correct: true },
    { body: 'Answer 2', question_id: 8 },
    { body: 'Answer 3', question_id: 8 },
    { body: 'Answer 1', question_id: 9, correct: true },
    { body: 'Answer 2', question_id: 9 },
    { body: 'Answer 3', question_id: 9 },
    { body: 'Answer 1', question_id: 10, correct: true },
    { body: 'Answer 2', question_id: 10 },
    { body: 'Answer 3', question_id: 10 },
    { body: 'Answer 1', question_id: 11, correct: true },
    { body: 'Answer 2', question_id: 11 },
    { body: 'Answer 3', question_id: 11 },
    { body: 'Answer 1', question_id: 12, correct: true },
    { body: 'Answer 2', question_id: 12 },
    { body: 'Answer 3', question_id: 12 },
    { body: 'Answer 1', question_id: questions.second_to_last.id, correct: true },
    { body: 'Answer 2', question_id: questions.second_to_last.id },
    { body: 'Answer 3', question_id: questions.second_to_last.id },
    { body: 'Answer 1', question_id: questions.last.id, correct: true },
    { body: 'Answer 2', question_id: questions.last.id },
    { body: 'Answer 3', question_id: questions.last.id }
  ]
)

User.create!(
  [
    { name: 'Dmitriy' },
    { name: 'John' },
    { name: 'Bob' },
    { name: 'Elizabeth' },
    { name: 'Stacy' }
  ]
)
TestResult.create!(
  [
    { test_id: 5, user_id: 1 },
    { test_id: 7, user_id: 1 },
    { test_id: 2, user_id: 2 },
    { test_id: 1, user_id: 2 }
  ]
)
