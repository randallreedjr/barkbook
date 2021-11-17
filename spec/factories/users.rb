FactoryBot.define do
  factory :user do
    sequence :name do |n|
      "Owner #{n}"
    end

    sequence :email do |n|
      "owner#{n}@bark.co"
    end
    password "yK=zN&P47-JzGbrr"
  end
end
