puts "Creating Objects"
puts "*"*80

UserSeries.delete_all
UserLesson.delete_all
User.delete_all
Lesson.delete_all
Series.delete_all

rails = Series.create!(title:"Introduction to Ruby on Rails")
js = Series.create!(title:"Introduction to JavaScript")

["What is Ruby on Rails","What is a Database","Practice: My first App","Schema and Migrations","Restful Rails Routing","MVC Life","Respect for Rspec","APIs and Serialization"].each_with_index do |title, i|
  Lesson.create!(title: title, sort_key: i,series: rails,image:'https://upload.wikimedia.org/wikipedia/commons/4/47/American_Eskimo_Dog.jpg',video:'https://www.youtube.com/watch?v=Vny8StvRAzY&t=143shttps://www.youtube.com/watch?v=Vny8StvRAzY&t=143s')
end

["What is HTML/CSS","What is Javascript","DOMinate the DOM","Async life","Frontend Frameworks and Why They Are Cool","Webpack and Why It's Terrible"].each_with_index do |title, i|
  Lesson.create!(title: title,sort_key: i, series: js,image:'https://www.youtube.com/watch?v=hvEH6ASSXWI')
end

rails_lesson = Lesson.find_by(title: "What is Ruby on Rails")
js_lesson = Lesson.find_by(title: "What is Javascript")
alex = User.create!(name:"Alex Balex")
joe = User.create!(name:"Joe Schmo")

UserSeries.create!(user:alex, series:rails,start_time:Time.now,end_time:Time.now + 1.day,status:"IN PROGRESS")
UserSeries.create!(user:joe,  series:rails,start_time:Time.now - 1.week ,end_time:Time.now - 1.day,status:"IN PROGRESS")

UserLesson.create!(user:alex, lesson:rails_lesson, status:"IN PROGRESS")
UserLesson.create!(user:joe, lesson:js_lesson, status:"COMPLETED")

puts "*"*80

puts "Done Creating Objects"
