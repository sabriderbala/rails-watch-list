require 'faker'

100.times do
  Movie.create(
    title: Faker::Movie.title,
    overview: Faker::Movie.quote,
    poster_url: Faker::LoremFlickr.image(size: "1000x1000", search_terms: ['sci-fi']),
    rating: Faker::Number.between(from: 1, to: 10)
  )
end
