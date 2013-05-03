# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    id "100"
    email 'user@mail.neu.edu.cn'
    password 'useruseruser'
  end
end
