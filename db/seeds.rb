puts "Creating Objects"
puts "*"*80

UserSeries.delete_all
UserLesson.delete_all
User.delete_all
Lesson.delete_all
Series.delete_all

  content = "Scontented ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?"

  rails = Series.create!(title:"Introduction to Ruby on Rails")
  js = Series.create!(title:"Introduction to JavaScript")
  
  videos = [
    'https://www.youtube.com/watch?v=yiSTcdi82S0',
    'https://www.youtube.com/watch?v=Vny8StvRAzY&t=143shttps://www.youtube.com/watch?v=Vny8StvRAzY&t=143s',
    'https://www.youtube.com/watch?v=hvEH6ASSXWI',
    'https://www.youtube.com/watch?v=IJrKlSkxRHA',
    'https://www.youtube.com/watch?v=Rb6Scz-5YOs'
  ]

  images = [
    'https://upload.wikimedia.org/wikipedia/commons/4/4d/Cat_November_2010-1a.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/4/47/American_Eskimo_Dog.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/6/69/June_odd-eyed-cat_cropped.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/a/a9/Kissing_Prairie_dog_edit_3.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/c/ce/Dhole%28Asiatic_wild_dog%29.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/4/49/Koala_climbing_tree.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/0/00/The_Duchess_of_Kent_with_koala_%28cropped%29.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/3/3f/Rabbit_9.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/a/ae/MC_Kleiner_Panda.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/d/da/NMMP_dolphin_with_locator.jpeg',
    'https://upload.wikimedia.org/wikipedia/commons/9/9c/B%C3%A9b%C3%A9_Phoque_de_Weddell_-_Baby_Weddell_Seal.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/1/1d/Penguin_in_Antarctica_jumping_out_of_the_water.jpg'
  ]

  rails_lessons =  [ 
      "What is Ruby on Rails",
      "What is a Database",
      "Practice: My first App",
      "Schema and Migrations",
      "Restful Rails Routing",
      "MVC Life",
      "Respect for Rspec",
      "APIs and Serialization"
  ]
  rails_lessons.each_with_index do |title, i|

    Lesson.create!(
      title: title, 
      sort_key: i + 1, 
      content: content,
      series: rails,
      image:images.sample,
      video: videos.sample
    )
  end

  js_lessons = [
    "What is HTML/CSS",
    "What is Javascript",
    "DOMinate the DOM",
    "Async life",
    "Frontend Frameworks and Why They Are Cool",
    "Webpack and Why It's Terrible"
  ]
  js_lessons.each_with_index do |title, i|

    Lesson.create!(
      title: title,
      sort_key: i  + 1,
      content: content,
      series: js, 
      image:images.sample,
      video:videos.sample
    )

  end

  alex = User.create!(name:"Alex Balex")

  puts "*"*80

  puts "Done Creating Objects"
