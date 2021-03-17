require 'rails_helper'

RSpec.describe User, type: :model do
<<<<<<< HEAD
<<<<<<< HEAD
  it "has a valid factory" do
    expect(FactoryBot.build(:user)).to be_valid
  end

<<<<<<< HEAD
  it "is valid with a first name, last name and email, and password" do
    user = User.new(
      first_name: "Aaron",
      last_name:  "Sumner",
      email:      "tester@example.com",
      password:   "dottle-nouveau-pavilion-tights-furze",
=======
  it "is valid with a first name, last name, email, and password" do
    user = User.new(
      first_name: "Aaron",
      last_name: "Summer",
      email: "tester@example.com",
      password: "dottle-nouveau-pavilion-tights-furze",
>>>>>>> my-03-models
    )
    expect(user).to be_valid
  end

<<<<<<< HEAD
=======
>>>>>>> my-09-test-faster
  it { is_expected.to validate_presence_of :first_name }
  it { is_expected.to validate_presence_of :last_name }
  it { is_expected.to validate_presence_of :email }
  it { is_expected.to validate_uniqueness_of(:email).case_insensitive }
<<<<<<< HEAD

  it "returns a user's full name as a string" do
    user = FactoryBot.build(:user, first_name: "John", last_name: "Doe")
    expect(user.name).to eq "John Doe"
  end

  it "sends a welcome email on account creation" do
    allow(UserMailer).to \
      receive_message_chain(:welcome_email, :deliver_later)
    user = FactoryBot.create(:user)
    expect(UserMailer).to have_received(:welcome_email).with(user)
  end

  it "performs geocoding", vcr: true do
    user = FactoryBot.create(:user, last_sign_in_ip: "161.185.207.20")
    expect {
      user.geocode
    }.to change(user, :location).
      from(nil).
      to("Brooklyn, New York, US")
=======
  it "is invalid with a first name" do
    user = User.new(first_name: nil)
=======
  it "has a valid factory" do
    expect(FactoryBot.build(:user)).to be_valid
  end

  it "is invalid without a first name" do
    user = FactoryBot.build(:user, first_name: nil)
>>>>>>> my-04-factories
    user.valid?
    expect(user.errors[:first_name]).to include("can't be blank")
  end

<<<<<<< HEAD
  it "is invalid with a last name" do
    user = User.new(last_name: nil)
=======
  it "is invalid without a last name" do
    user = FactoryBot.build(:user, last_name: nil)
>>>>>>> my-04-factories
    user.valid?
    expect(user.errors[:last_name]).to include("can't be blank")
  end

<<<<<<< HEAD
  it "is invalid with an email address"
  it "is invalid with a duplicate email address" do
    User.create(
      first_name: "Joe",
      last_name: "Tester",
      email: "tester@example.com",
      password: "dottle-nouveau-pavilion-tights-furze"
    )
    user = User.new(
      first_name: "Jane",
      last_name: "Tester",
      email: "tester@example.com",
      password: "dottle-nouveau-pavilion-tights-furze"
    )
=======
  it "is invalid without an email address" do
    user = FactoryBot.build(:user, email: nil)
    user.valid?
    expect(user.errors[:email]).to include("can't be blank")
  end

  it "is invalid with a duplicate email address" do
    FactoryBot.create(:user, email: "aaron@example.com")
    user = FactoryBot.build(:user, email: "aaron@example.com")
>>>>>>> my-04-factories
    user.valid?
    expect(user.errors[:email]).to include("has already been taken")
  end
=======

  # it "is invalid without a first name" do
  #   user = FactoryBot.build(:user, first_name: nil)
  #   user.valid?
  #   expect(user.errors[:first_name]).to include("can't be blank")
  # end
  #
  # it "is invalid without a last name" do
  #   user = FactoryBot.build(:user, last_name: nil)
  #   user.valid?
  #   expect(user.errors[:last_name]).to include("can't be blank")
  # end
  #
  # it "is invalid without an email address" do
  #   user = FactoryBot.build(:user, email: nil)
  #   user.valid?
  #   expect(user.errors[:email]).to include("can't be blank")
  # end
  #
  # it "is invalid with a duplicate email address" do
  #   FactoryBot.create(:user, email: "aaron@example.com")
  #   user = FactoryBot.build(:user, email: "aaron@example.com")
  #   user.valid?
  #   expect(user.errors[:email]).to include("has already been taken")
  # end
>>>>>>> my-09-test-faster

  it "returns a user's full name as a string" do
<<<<<<< HEAD
    user = User.new(
      first_name: "John",
      last_name: "Doe",
      email: "johndoe@example.com"
    )
=======
    user = FactoryBot.build(:user, first_name: "John", last_name: "Doe")
>>>>>>> my-04-factories
    expect(user.name).to eq "John Doe"
>>>>>>> my-03-models
  end

end
