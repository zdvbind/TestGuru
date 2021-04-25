# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
categories = Category.create!(
  [
    { title: 'Math' },
    { title: 'Computer science' },
    { title: 'Sport' }
  ]
)

tests = Test.create!(
  [
    { title: 'Algebra', level: 3, category_id: categories.first.id },
    { title: 'Geometry', level: 2, category_id: categories.first.id },
    { title: 'Trigonometry', level: 2, category_id: categories.first.id },
    { title: 'Trigonometry', level: 4, category_id: categories.first.id },
    { title: 'Data Structures', level: 2, category_id: categories.second.id },
    { title: 'Algorithms', level: 4, category_id: categories.second.id },
    { title: 'Basketball', level: 1, category_id: categories.third.id },
    { title: 'Hockey', level: 3, category_id: categories.third.id }
  ]
)

questions = Question.create!(
  [
    { body: 'Algebra question body 1', test_id: tests.first.id },
    { body: 'Algebra question body 2', test_id: tests.first.id },
    { body: 'Algebra question body 3', test_id: tests.first.id },
    { body: 'Geometry question body 1', test_id: tests.second.id },
    { body: 'Geometry question body 2', test_id: tests.second.id },
    { body: 'Geometry question body 3', test_id: tests.second.id },
    { body: 'Trigonometry question body 1 level 2', test_id: tests.third.id },
    { body: 'Trigonometry question body 2 level 2', test_id: tests.third.id },
    { body: 'Trigonometry question body 1 level 4', test_id: tests.third.id },
    { body: 'Trigonometry question body 2 level 4', test_id: tests.third.id },
    { body: 'Trigonometry question body 3 level 4', test_id: tests.third.id },
    { body: 'Hockey question body 1', test_id: tests.last.id },
    { body: 'Hockey question body 2', test_id: tests.last.id },
    { body: 'Hockey question body 3', test_id: tests.last.id }
  ]
)

Answer.create!(
  [
    { body: 'Answer 1', question_id: questions.first.id },
    { body: 'Answer 2', question_id: questions.first.id },
    { body: 'Answer 3', question_id: questions.first.id },
    { body: 'Answer 1', question_id: questions.second.id },
    { body: 'Answer 2', question_id: questions.second.id },
    { body: 'Answer 3', question_id: questions.second.id },
    { body: 'Answer 1', question_id: questions.third.id },
    { body: 'Answer 2', question_id: questions.third.id },
    { body: 'Answer 3', question_id: questions.third.id },
    { body: 'Answer 1', question_id: questions.fourth.id },
    { body: 'Answer 2', question_id: questions.fourth.id },
    { body: 'Answer 3', question_id: questions.fourth.id },
    { body: 'Answer 1', question_id: questions.fifth.id },
    { body: 'Answer 2', question_id: questions.fifth.id },
    { body: 'Answer 3', question_id: questions.fifth.id },
    { body: 'Answer 1', question_id: questions[6].id },
    { body: 'Answer 2', question_id: questions[6].id },
    { body: 'Answer 3', question_id: questions[6].id },
    { body: 'Answer 1', question_id: questions[7].id },
    { body: 'Answer 2', question_id: questions[7].id },
    { body: 'Answer 3', question_id: questions[7].id },
    { body: 'Answer 1', question_id: questions[8].id },
    { body: 'Answer 2', question_id: questions[8].id },
    { body: 'Answer 3', question_id: questions[8].id },
    { body: 'Answer 1', question_id: questions[9].id },
    { body: 'Answer 2', question_id: questions[9].id },
    { body: 'Answer 3', question_id: questions[9].id },
    { body: 'Answer 1', question_id: questions[10].id },
    { body: 'Answer 2', question_id: questions[10].id },
    { body: 'Answer 3', question_id: questions[10].id },
    { body: 'Answer 1', question_id: questions[11].id },
    { body: 'Answer 2', question_id: questions[11].id },
    { body: 'Answer 3', question_id: questions[11].id },
    { body: 'Answer 1', question_id: questions[12].id },
    { body: 'Answer 2', question_id: questions[12].id },
    { body: 'Answer 3', question_id: questions[12].id },
    { body: 'Answer 1', question_id: questions.second_to_last.id },
    { body: 'Answer 2', question_id: questions.second_to_last.id },
    { body: 'Answer 3', question_id: questions.second_to_last.id },
    { body: 'Answer 1', question_id: questions.last.id },
    { body: 'Answer 2', question_id: questions.last.id },
    { body: 'Answer 3', question_id: questions.last.id }
  ]
)

users = User.create!(
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
    { test_id: 5, user_id: users.first.id },
    { test_id: 7, user_id: users.first.id },
    { test_id: 2, user_id: users.second.id },
    { test_id: 1, user_id: users.second.id }
  ]
)
