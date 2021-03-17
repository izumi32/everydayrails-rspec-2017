require 'rails_helper'

RSpec.describe Note, type: :model do
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  let(:user) { FactoryBot.create(:user) }
  let(:project) { FactoryBot.create(:project, owner: user) }

  it "is valid with a user, project, and message" do
    note = Note.new(
      message: "This is a sample note.",
      user: user,
      project: project,
=======

  before do
    @user = User.create(
      first_name: "Joe",
      last_name: "Tester",
      email: "joetester@example.com",
      password: "dottle-nouveau-pavilion-tights-furze"
    )
=======

  it "generates associated data from factory" do
    note = FactoryBot.create(:note)
    puts "This note's project is #{note.project.inspect}"
    puts "This note's user is #{note.user.inspect}"
  end

  before do
    @user = FactoryBot.create(:user)
>>>>>>> my-04-factories

    @project = @user.projects.create(
      name: "Test Project"
    )
  end
=======
  let(:user) { FactoryBot.create(:user) }
  let(:project) { FactoryBot.create(:project, owner: user) }
>>>>>>> my-08-dry-specs

  it "is valid with a user, project, and message" do
<<<<<<< HEAD
    note = Note.new(
<<<<<<< HEAD
      message: "This is sample note.",
      user: @user,
      project: @project
>>>>>>> my-03-models
=======
      message: "This is a sample note.",
      user: user,
      project: project,
>>>>>>> my-08-dry-specs
    )
=======
    note = FactoryBot.build(:note, user: @user, project: @project)
>>>>>>> my-04-factories
    expect(note).to be_valid
  end

  it "is invalid without a message" do
<<<<<<< HEAD
    note = Note.new(message: nil)
=======
    note =  Note.new(message: nil)
>>>>>>> my-03-models
    note.valid?
    expect(note.errors[:message]).to include("can't be blank")
  end

<<<<<<< HEAD
  it { is_expected.to have_attached_file(:attachment) }

  describe "search message for a term" do
    let!(:note1) {
      FactoryBot.create(:note,
        project: project,
        user: user,
        message: "This is the first note.",
      )
    }

    let!(:note2) {
      FactoryBot.create(:note,
        project: project,
        user: user,
        message: "This is the second note.",
      )
    }

    let!(:note3) {
      FactoryBot.create(:note,
        project: project,
        user: user,
        message: "First, preheat the oven.",
      )
    }

    context "when a match is found" do
      it "returns notes that match the search term" do
        expect(Note.search("first")).to include(note1, note3)
        expect(Note.search("first")).to_not include(note2)
      end
    end

    context "when no match is found" do
      it "returns an empty collection" do
        expect(Note.search("message")).to be_empty
        expect(Note.count).to eq 3
      end
    end
  end

  it "delegates name to the user who created it" do
    user = instance_double("User", name: "Fake User")
    note = Note.new
    allow(note).to receive(:user).and_return(user)
    expect(note.user_name).to eq "Fake User"
  end
<<<<<<< HEAD
=======
  describe "search message for a term" do
<<<<<<< HEAD

    before do
      @note1 = @project.notes.create(
        message: "This is the first note",
        user: @user
      )
      @note2 = @project.notes.create(
        message: "This is the second note",
        user: @user
      )
      @note3 = @project.notes.create(
        message: "First, preheat the oven",
        user: @user
      )
    end

    context "when a match is found" do
      it "returns notes that match the search term" do
        expect(Note.search("first")).to include(@note1, @note3)
        expect(Note.search("first")).to_not include(@note2)
=======
    let!(:note1) {
      FactoryBot.create(:note,
      project: project,
      user: user,
      message: "This is the first note.")
    }

    let!(:note2) {
      FactoryBot.create(:note,
      project: project,
      user: user,
      message: "This is the second note.")
    }

    let!(:note3) {
      FactoryBot.create(:note,
      project: project,
      user: user,
      message: "First, preheat the oven.")
    }

    context "when a match is found" do
      it "returns notes that match the search term" do
        expect(Note.search("first")).to include(note1, note3)
>>>>>>> my-08-dry-specs
      end
    end

    context "when no match is found"do
      it "returns an empty collection when no results are found" do
        expect(Note.search("message")).to be_empty
        expect(Note.count).to eq 3
      end
    end
  end
>>>>>>> my-03-models
=======
>>>>>>> my-09-test-faster
end
