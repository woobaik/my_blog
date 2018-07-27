# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

3.times do |topic|
  Topic.create!(
    title: "Topic #{topic}"
  )
end

puts "3 Topic has created!"

10.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog}",
    body: "Computer Sience start from 1",
    topic_id: Topic.last.id

  )
end

puts "10 BLOG POST CREATED"

5.times do |skill|
  Skill.create!(
    title: "Rails #{skill}",
    percent_utilized: skill
  )
end

puts "5 SKILLS CREATED!"

8.times do |port|
  Portfol.create!(
    title: "Portfolio Title #{port}",
    subtitle: "Ruby on Rails",
    body: "Ipsum Lorem haram consectetur",
    main_image: "http://via.placeholder.com/600x400",
    thumb_image: "http://via.placeholder.com/350x250"
  )
end

puts "9 Portfolio items created"

1.times do |port|
  Portfol.create!(
    title: "Portfolio Title #{port}",
    subtitle: "Angular",
    body: "Ipsum Lorem haram consectetur",
    main_image: "http://via.placeholder.com/600x400",
    thumb_image: "http://via.placeholder.com/350x250"
  )
end

puts "1 Portfolio items created"

3.times do |technologies|
  Technology.create!(
    name: "Rails",
    portfol_id: Portfol.last.id
  )
end

puts "3 Portfolio items created"

2.times do |technology|
  Portfol.last.technologies.create!(
    name: "Ruby")
end
