FactoryBot.define do
  factory :review do
    title {Faker::Lorem.word}
    place {"Pattaya"}
    date_of_visiting {Faker::Date.between(from: '2018-11-11', to: '2020-11-11')}
    pros {Faker::TvShows::Friends.quote}
    cons {Faker::TvShows::Friends.quote}
    type_of_visitor_id {"2"}
    type_of_beach_id {"2"}
    color_of_sand_id {"2"}
    cleanliness_id {"2"}
    transparency_id {"2"}
    quietness_id {"2"}
    crowd_id {"2"}
    street_vendor_id {"2"}
    shop_id {"2"}
    toilet_id {"2"}
    shower_id {"2"}
    recommended_id {"2"}
    association :user 

    after(:build) do |item|
      item.image.attach(io: File.open('public/images/test.jpg'), filename: 'test.jpg')
    end
  end
end
