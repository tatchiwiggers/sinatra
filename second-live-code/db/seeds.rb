require 'faker'

10.times do
    Movie.create!(
        title: Faker::Movie.title,
        rating: (1..5).to_a.sample
    )
end