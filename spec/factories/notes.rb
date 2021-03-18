FactoryBot.define do
  factory :note do
    message "My important note."
    association :project
    user { project.owner }
<<<<<<< HEAD
<<<<<<< HEAD

    trait :with_attachment do
      attachment { File.new("#{Rails.root}/spec/files/attachment.jpg") }
    end
=======
>>>>>>> my-04-factories
=======

    trait :with_attachment do
      attachment { File.new("#{Rails.root}/spec/files/attachment.jpeg") }
    end
>>>>>>> my-10-testing-the-rest
  end
end
