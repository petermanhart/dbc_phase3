FactoryGirl.define do
  sequence(:email)    { |i| "email_#{i}@example.com" }
  sequence(:username) { |i| "user_#{i}" }

  factory :user do
    first_name { Faker::Name.first_name }
    last_name  { Faker::Name.last_name }
    username
    email


    factory :user_with_karma do
      after :create do |user|
        3.times {
          user.karma_points.build attributes_for(:karma_point)
        }
      end
    end

    factory :user_with_low_karma do
      after :create do |user|
        3.times {
          user.karma_points.create attributes_for(:karma_point, value: 5)
        }
      end
    end

    factory :user_with_med_karma do
      after :create do |user|
        3.times {
          user.karma_points.create attributes_for(:karma_point, value: 7)
        }
      end
    end

    factory :user_with_high_karma do
      after :create do |user|
        3.times {
          user.karma_points.create attributes_for(:karma_point, value: 10)
        }
      end
    end
  end

  factory :karma_point do
    user
    value 0
    label { Faker::Lorem.word }
  end
end
