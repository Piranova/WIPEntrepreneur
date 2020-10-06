# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
post = Post.create([
    { title: "Post 1",
      subtitle: "Post 1 subtitle",
      isFeatured: true,
      likes: 100,
      body: "body of post 1",
      publishedDate: "09292020",
      isTech: true,
      techName: 'Rails' }, 

      { title: "Post 2",
      subtitle: "Post 2 subtitle",
      isFeatured: true,
      likes: 200,
      body: "body of post 2",
      publishedDate: "09292020",
      isTech: true,
      techName: 'Rails' }, 

      { 
          title: "Post 3",
      subtitle: "Post 3 subtitle",
      isFeatured: true,
      likes: 300,
      body: "body of post 3",
      publishedDate: "09292020",
      isTech: true,
      techName: 'Rails' }, 
])

