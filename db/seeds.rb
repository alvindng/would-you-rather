# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

question_list = [
  ["eat cheese or salami for the rest of your life?", "cheese", "salami"],
  ["be able to dunk a basketball or hit a home run?", "dunk", "homer"],
  ["watch seinfeld or frasier?", "seinfeld", "frasier"],
  ["read minds or fly?", "read minds", "fly"],
  ["have a third nostril or third ear?", "nostril", "ear"],
  ["get a bowl of dandruff or fingernail clippings", "dandruff", "clippings"]
]

question_list.each do |prompt, option1, option2|
  Question.create(prompt: prompt, option1: option1, option2: option2)
end
