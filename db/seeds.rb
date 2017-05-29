# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
3.times do |topic|
	Topic.create!(title: "jklasdkldasklads")
end

puts "Så mange topics: #{Topic.all.length}"

9.times do |num| 
	num += 1
	Blog.create!(
		title: "My new car nr. #{num} is great", 
		body: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
		topic_id: Topic.last.id
	)
end

puts "10 blogs created"

@different_skills = %w(Rails CSS HTML JAVA JAVASCRIPT)
5.times do |num| 
	num += 1
	Skill.create!(
		title: "kaadsdskjkl",
		procent_utilized: rand(100)
	)
end

puts "5 skills created"

8.times do |portfolio_num| 
	Portfolio.create!(
		title: "My great portfolio item #{portfolio_num}",
		subtitle: "It was something great. I know it",
		body: "The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.",
		main_image: "http://placehold.it/400x600",
		thumb_image: "http://placehold.it/350x200"
	) 
end

1.times do |portfolio_num| 
	Portfolio.create!(
		title: "item #{portfolio_num}",
		subtitle: "Angular",
		body: "The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.",
		main_image: "http://placehold.it/400x600",
		thumb_image: "http://placehold.it/350x200"
	) 
end


puts "#{Portfolio.all.length} portfolio items created"