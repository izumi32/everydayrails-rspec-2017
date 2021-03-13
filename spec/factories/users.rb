FactoryBot.define do
  factory :user, aliases: [:owner] do
    first_name "Aaron"
    last_name  "Sumner"
<<<<<<< HEAD
    sequence(:email) { |n| "tester#{n}@example.com" }
    password "dottle-nouveau-pavilion-tights-furze"
=======
    sequence(:email) { |n| "tester#{n}@example.com"}
    password   "dottle-nouveau-pavilion-tights-furze"
>>>>>>> my-04-factories
  end
end
