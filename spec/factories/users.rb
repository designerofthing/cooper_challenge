FactoryBot.define do
  factory :user do
    email { "user@random.com" }
    password { "password" }
    password_confirm { "password" }
  end
end
