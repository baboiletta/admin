FactoryGirl.define do
  factory :post do
    title 'a' * 20
    content 'a' * 20
    slug 'a' * 3
    user
    category
  end
end
