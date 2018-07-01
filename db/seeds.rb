3.times do |topic|
    Topic.create!(
        title: "Topic #{topic}"
    )
end

puts "3 topics created"

10.times do |blog|
    Blog.create!(
        title: "My Blog Post #{blog}",
        body: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
        topic_id: Topic.last.id
    )
end

puts "10 blog posts created"

5.times do |skill|
    Skill.create!(
        title: "Rails skill #{skill}",
        percent_utilized: 10+skill
    )
end

puts "5 skills created"

8.times do |portfolio_items|
    Portfolio.create!(
        title: "Portfolio title: #{portfolio_items}",
        subtitle: "Ruby on Rails",
        body: 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.',
        main_image: "http://via.placeholder.com/600x200",
        thumb_image: "http://via.placeholder.com/300x150"
    )
end


1.times do |portfolio_items|
    Portfolio.create!(
        title: "Portfolio title: #{portfolio_items}",
        subtitle: "Angular",
        body: 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.',
        main_image: "http://via.placeholder.com/600x200",
        thumb_image: "http://via.placeholder.com/300x150"
    )
end

puts "9 portfolio items created"

3.times do |technology|
    Portfolio.last.technologies.create!(
        name: "Technology title: #{technology}",
        portfolio_id: Portfolio.last.id
    )
end

puts "3 technology item with portfolio"