# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = [
  {first_name: "Drew", last_name: "Robinson", city: "Tulsa", state: "OK", email: "drewbie0307@hotmail.com", password: "Cats4Life!"},
  {first_name: "Sally", last_name: "Sue", city: "Dallas", state: "TX", email: "drew@hatchafterschool.com", password: "DogsDrool4!"}
]

users.each do |user|
  User.create(
    first_name: user[:first_name],
    last_name: user[:last_name],
    city: user[:city],
    state: user[:state],
    email: user[:email],
    password: user[:password]
  )
end

stories = [
  {title: "My first story", body: "Testing1", user_id: User.first.id },
  {title: "Another Great Story", body: "Testing2", user_id: User.first.id },
  {title: "This one time at band camp", body: "Testing3", user_id: User.last.id },
  {title: "Once Upon A Time", body: "Testing4", user_id: User.last.id }
]

keywords = ["Road trip", "Band Camp", "Growing up", "Fairytale endings"]

num = 0;
stories.each do |story|
  aStory = Story.create(
    title: story[:title],
    body: story[:body],
    user_id: story[:user_id]
  )
  aStory.keywords.create(tag: keywords[num])
  num += 1
end

comments = [
  {title: "Comment1", body: "What a great story!", story_id: Story.find(1) },
  {title: "Comment2", body: "Awesome story", story_id: Story.find(1) },
  {title: "Comment3", body: "Totally great story", story_id: Story.find(2) },
  {title: "Comment4", body: "Wonderful", story_id: Story.find(3) },
  {title: "Comment5", body: "Totally Rad", story_id: Story.find(4) }
]

comments.each do |comment|
  Comment.create(
    title: comment[:title],
    body: comment[:body],
    story_id: comment[:story_id]
  ) 
end