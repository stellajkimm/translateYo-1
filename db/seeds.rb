require 'faker'

languages = %W(english spanish french italian korean japanese chinese arabic alien)

20.times do |i|
  User.create(first_name: Faker::Name.first_name,
               last_name: Faker::Name.last_name,
                password_digest: "password",
                username: Faker::Internet.user_name)

  Language.create(lingua: languages[i])

  Fluency.create(english: "english mofo. do you speak it?",
                   other: "nope, I don't speak english.",
                   language_id: rand(1..10),
                   user_id: rand(1.10))

  Vote.create(up: rand(1..20),
              down: rand(1..20),
              comment_id: rand(1..10))

  Comment.create(content: "And the cow jumped over the moon.",
                 commentable: User.first.comments.first)
end