# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
category = Category.create!(
  [
    { title: 'Math' },
    { title: 'Computer science' },
    { title: 'Sport' }
  ]
)

user = User.create!(
  [
    { email: '1@gmail.com', first_name: 'Admin', last_name: 'Adminov', type: 'Admin', password: 'password' },
    { email: '2@gmail.com', first_name: 'Alex', last_name: 'Pupkin', type: 'User', password: 'password' },
    { email: '3@gmail.com', first_name: 'Petr', last_name: 'Petrov', type: 'User', password: 'password' },
    { email: '4@gmail.com', first_name: 'Ivan', last_name: 'Ivanov', type: 'User', password: 'password' },
    { email: '5@gmail.com', first_name: 'Roman', last_name: 'Romanov', type: 'User' ,password: 'password' }
  ]
)

test = Test.create!(
  [
    { title: 'Algebra', level: 3, category: category.first, author: user.first },
    { title: 'Geometry', level: 2, category: category.first, author: user.first },
    { title: 'Trigonometry', level: 2, category: category.first, author: user.first },
    { title: 'Trigonometry', level: 4, category: category.first, author: user.second },
    { title: 'Data Structures', level: 2, category: category.second, author: user.first },
    { title: 'Algorithms', level: 4, category: category.second, author: user.first },
    { title: 'Basketball', level: 1, category: category.third, author: user.first },
    { title: 'Hockey', level: 3, category: category.third, author: user.first }
  ]
)

question = Question.create!(
  [
    { body: 'Algebra question body 1', test: test.first },
    { body: 'Algebra question body 2', test: test.first },
    { body: 'Algebra question body 3', test: test.first },
    { body: 'Geometry question body 1', test: test.second },
    { body: 'Geometry question body 2', test: test.second },
    { body: 'Geometry question body 3', test: test.second },
    { body: 'Trigonometry question body 1 level 2', test: test.third },
    { body: 'Trigonometry question body 2 level 2', test: test.third },
    { body: 'Trigonometry question body 1 level 4', test: test.fourth },
    { body: 'Trigonometry question body 2 level 4', test: test.fourth },
    { body: 'Trigonometry question body 3 level 4', test: test.fourth },
    { body: 'Data Structures question body 1', test: test.fifth },
    { body: 'Data Structures question body 2', test: test.fifth },
    { body: 'Data Structures question body 3', test: test.fifth },
    { body: 'Algorithms question body 1', test: test.third_to_last },
    { body: 'Algorithms question body 2', test: test.third_to_last },
    { body: 'Algorithms question body 3', test: test.third_to_last },
    { body: 'Who invented basketball?', test: test.second_to_last },
    { body: 'Who is the only player to score 100 points in a single NBA game?', test: test.second_to_last },
    { body: 'In basketball, what term refers to throwing, batting, or rolling the ball to another player?', test: test.second_to_last },
    { body: 'Hockey question body 1', test: test.last },
    { body: 'Hockey question body 2', test: test.last },
    { body: 'Hockey question body 3', test: test.last }
  ]
)

Answer.create!(
  [
    { body: 'Answer 1', question: question.first, correct: true },
    { body: 'Answer 2', question: question.first },
    { body: 'Answer 3', question: question.first },
    { body: 'Answer 4', question: question.first },
    { body: 'Answer 1', question: question.second, correct: true },
    { body: 'Answer 2', question: question.second },
    { body: 'Answer 3', question: question.second },
    { body: 'Answer 1', question: question.third, correct: true },
    { body: 'Answer 2', question: question.third },
    { body: 'Answer 3', question: question.third },
    { body: 'Answer 1', question: question.fourth, correct: true },
    { body: 'Answer 2', question: question.fourth },
    { body: 'Answer 3', question: question.fourth },
    { body: 'Answer 1', question: question.fifth, correct: true },
    { body: 'Answer 2', question: question.fifth },
    { body: 'Answer 3', question: question.fifth },
    { body: 'Answer 1', question: question[5], correct: true },
    { body: 'Answer 2', question: question[5] },
    { body: 'Answer 3', question: question[5] },
    { body: 'Answer 1', question: question[6], correct: true },
    { body: 'Answer 2', question: question[6] },
    { body: 'Answer 3', question: question[6] },
    { body: 'Answer 1', question: question[7], correct: true },
    { body: 'Answer 2', question: question[7] },
    { body: 'Answer 3', question: question[7] },
    { body: 'Answer 1', question: question[8], correct: true },
    { body: 'Answer 2', question: question[8] },
    { body: 'Answer 3', question: question[8] },
    { body: 'Answer 1', question: question[9], correct: true },
    { body: 'Answer 2', question: question[9] },
    { body: 'Answer 3', question: question[9] },
    { body: 'Answer 1', question: question[10], correct: true },
    { body: 'Answer 2', question: question[10] },
    { body: 'Answer 3', question: question[10] },
    { body: 'James Naismith', question: question[17], correct: true },
    { body: 'Maurice Podoloff', question: question[17] },
    { body: 'George Mikan', question: question[17] },
    { body: 'Bill Sharman', question: question[17] },
    { body: 'Wilt Chamberlain', question: question[18], correct: true },
    { body: 'Magic Johnson', question: question[18] },
    { body: 'Kareem Abdul-Jabbar', question: question[18] },
    { body: 'Michael Jordan', question: question[18] },
    { body: 'pass', question: question[19], correct: true },
    { body: 'pivot', question: question[19] },
    { body: 'dribble', question: question[19] },
    { body: 'dunk', question: question[19] },
    { body: 'Answer 1', question: question.third_to_last, correct: true },
    { body: 'Answer 2', question: question.third_to_last },
    { body: 'Answer 3', question: question.third_to_last },
    { body: 'Answer 1', question: question.second_to_last, correct: true },
    { body: 'Answer 2', question: question.second_to_last },
    { body: 'Answer 3', question: question.second_to_last },
    { body: 'Answer 1', question: question.last, correct: true },
    { body: 'Answer 2', question: question.last },
    { body: 'Answer 3', question: question.last }
  ]
)

# TestPassage.create!(
#   [
#     { test: test.fifth, user: user.first },
#     { test: test[5], user: user.first },
#     { test: test.second, user: user.second },
#     { test: test.first, user: user.second }
#   ]
# )
